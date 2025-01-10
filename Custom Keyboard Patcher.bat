:: Custom Keyboard Patcher
:: Thanks to HMRT and ctrtool, 3dstool and makerom developers

@echo off
title Custom Keyboard Patcher
set TOOLSDIR=bin
set CIANAME=Keyboard
set OUTNAME=%CIANAME%_patched
set DESTDIR=%~dp0

echo Select the destination:
echo 1. SD card
echo 2. Current folder
echo 3. Exit
set /p choice="Enter your choice (1, 2, 3): "

:CHOICE
if "%choice%"=="1" (
        for /f "tokens=1,2,3,4" %%a in ('wmic logicaldisk get caption^,drivetype^,filesystem') do (
        if "%%b"=="2" if "%%c"=="FAT32" if exist "%%a\gm9\customkyb\" if exist "%%a\Nintendo 3DS\" set DESTDIR=%%a\gm9\customkyb\
    )

    if "%DESTDIR%"=="" (
	    echo.
	    echo SD Card not found. Did you set it up correctly?
	    pause
	    exit
    )
) else if "%choice%"=="2" (
    :: This is useless, either I don't understand or this is a bug,
    :: but this doesn't seems to set the variable here, so it's set at the beginning
    set DESTDIR=%~dp0
) else if "%choice%"=="3" (
    exit
) else (
    goto CHOICE
)

if not exist "%DESTDIR%%CIANAME%.cia" if not exist "%DESTDIR%romfs-patched.bin" (
    echo Keyboard.cia or/and romfs-patched.bin not found. Make sure you selected the right folder and ran the gm9 helper script to patch and prepare the keyboard.
    pause
    exit
)

echo Extracting and patching the keyboard...
cd %TOOLSDIR%
ctrtool.exe --content=SystemApp "%DESTDIR%%CIANAME%.cia"
FOR %%S in (SystemApp.0000.*) do (
	set cxi0=%%~nxS
)
3dstool.exe -xvtf cxi %cxi0% --header ncchheader.bin --exh exheader.bin --exefs exefs.bin --romfs romfs.bin --plain plainrgn.bin
copy /y "%DESTDIR%romfs-patched.bin" romfs.bin
3dstool.exe -cvtf cxi %cxi0% --header ncchheader.bin --exh exheader.bin --exefs exefs.bin --romfs romfs.bin --plain plainrgn.bin
makerom.exe -f cia -content %cxi0%:0 -o "%DESTDIR%%OUTNAME%.cia" -major 4 -minor 0
echo Cleaning up...
del /q SystemApp.0000.*
del /q *.bin

if "%choice%"=="1" (
    echo Done! You can now run the custom keyboard helper script again to install it.
) else (
    echo Done! You can now copy %OUTNAME%.cia to the gm9/customkyb folder on your SD card and run the custom keyboard helper script again to install it.
)
pause
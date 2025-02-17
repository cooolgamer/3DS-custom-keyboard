# 3DS custom keyboard

## Support
Supported models: All
Supported regions: EUR/USA   
Supported languages: All

## What's edited?
* Custom symbols
* Blue color
* Replaced phone keyboard by Japanese keyboard
* Changed the 4 buttons layout

## Screenshots:
![](https://github.com/cooolgamer/3DS-custom-keyboard/blob/main/screenshots/qwerty.bmp) ![](https://github.com/cooolgamer/3DS-custom-keyboard/blob/main/screenshots/symbols.bmp) ![](https://github.com/cooolgamer/3DS-custom-keyboard/blob/main/screenshots/cell.bmp)

## WARNING: DO NOT uninstall your custom firmware.
* The keyboard is not signed, meaning it doesn't work without CFW.
* If you plan to uninstall CFW, then follow the [uninstallation tutorial](https://github.com/cooolgamer/3DS-custom-keyboard#how-to-uninstall).
* I am NOT responsible if you did, and have issues related to the keyboard, you have been warned.

## How to install?
### Getting the requirements
- Download the latest "Coool Custom Keyboard" archive in the [releases tab](https://github.com/cooolgamer/3DS-custom-keyboard/releases/)
- Extract the archive, put the "gm9" folder in the root of your sd card
- You should have the original, unmodified keyboard installed on your 3ds, if you have a custom one, you need to restore the original keyboard

### Preparing the patched keyboard
- Open godmode9 on your 3ds (hold start while booting) with your SD card in
- Press the home button, go to scripts, and then select the Custom Keyboard script
- Wait, **read** and accept the messages, which should reboot your 3ds if everything worked

### Install the custom keyboard
- Go to FBI, SD card, gm9, customkyb, select "Keyboard_Patched.cia" and "install CIA"
- Enjoy!

#

### Troubleshooting
Q: I'm getting "The keyboard is not legit. [...]" error,

A: Like the error says after, follow the uninstallation guide. You can also find and install the original keyboard cia on google, that works too.

If you ask why this is important, this is because the original, untouched keyboard is required in order to patch it.

#
Q: I'm getting "The system seems very out of date" error,

A: This happens if the dumped keyboard doesn't match the expected keyboard, as the keyboard should be legit, this can only mean that you're using a system firmware below 9.0, which is very old. (or I fucked up)

#

Q: I'm getting "do you have the Patch[region].bps file?" error, but I'm sure that I have it,

A: Your sd card is probably dead and the files got corrupted, check your sd card for bad sectors.


## How to uninstall?
- Go to FBI, SD card, gm9, customkyb, select "Keyboard_Original.cia" and "install CIA"
- Done!

If you don't have this file, please follow these steps carefully:

- FIRST METHOD: reinstalling with a system update.
   - Go to fbi, choose titles, wait for all titles to load, search for a red title named ```000400300000D002``` if you are EUR, or ```000400300000C802``` if you are USA.
   - Select this title and choose "delete title and ticket", this will delete it but don't worry, we are going to reinstall it.
   - Power off your console and launch recovery mode by holding L + R + A + dpad UP buttons and press power with all those buttons held.
   - Once you get a menu telling you to do a system update, say yes and accept everything.
   - Wait for the update to complete and it's done!

If you're getting an error:

- SECOND METHOD: You have 2 choices, "KEYBOARD ONLY" and "ENTIRE FIRMWARE":
   - Keyboard only is just reinstalling the clean keyboard to fix the keyboard,
   - Entire firmware is reinstalling the entire clean firmware  which is strongly recommended if you plan removing CFW.
   - The steps not having "KEYBOARD ONLY" or "ENTIRE FIRMWARE" are for both methods, follow them.

- Reinstalling with 3DNUS and godmode9 (Second method).
   - Take [this version of 3DNUS](https://github.com/DrHacknik/3DNUS/releases/tag/3.3_stable) and download the corresponding version for your PC.
   - Process to the setup: disable "enable auto update" and make sure "pack as cia" is enabled
   - On "Title/Firmware", type the latest version and your region letter (ex: ```11.16.0-49E```) then press "Begin download" and wait.
   - KEYBOARD ONLY: Search for ```000400300000D002.cia``` if you are EUR, or ```000400300000C802.cia``` if you are USA and put this file anywhere on your sdcard.
   - ENTIRE FIRMWARE: Copy the folder containing all cias anywhere on your sdcard.
   - Open godmode9 on your console (hold start while booting and make sure it's updated up to v2.0.0 to support CIA installation).
   - KEYBOARD ONLY: Navigate to SDCARD where you put the cia and select it.
   - ENTIRE FIRMWARE: Navigate to SDCARD where you put the folder and select all cias inside with L + Dpad Right and select any of them.
   - Choose ```CIA image options``` and ```Install game image``` then confirm.
   - After waiting, press A, then start to reboot and it's done!
   - You can now delete 3DNUS and the cia(s) you copied on your sdcard.

## Need help or info?
You can contact me on my [Discord server](https://discord.gg/RxeZcgGRQB)

## About 3dstool, ctrtool and makerom
You will find in the "PC/bin" folder on the releases, 3 executables, these are older versions of [makerom and ctrtool](https://github.com/3DSGuy/Project_CTR/releases) and [3dstool](https://github.com/dnasdw/3dstool/releases) because the newer ones doesn't work properly.

## Credits:
* [HMRT](https://github.com/schrmh/HMRT) (HomeMenu Rebuild Tool) which allowed me to easily extract and edit the cia
* [ctrtool, makerom](https://github.com/3DSGuy/Project_CTR/) and [3dstool](https://github.com/dnasdw/3dstool/) developers
* Thanks to Zukkunda for inspiring me of the blue color!

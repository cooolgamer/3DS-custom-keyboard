# 3DS custom keyboard

## Support
Supported models: all 3DS/2DS EUR/USA   
Supported languages: All :)

## What's edited?
* Custom symbols
* Blue color
* Replaced phone keyboard by Japanese keyboard
* Changed the 4 buttons layout

## Screenshots:
![](https://github.com/cooolgamer/3DS-custom-keyboard/blob/main/screenshots/qwerty.bmp) ![](https://github.com/cooolgamer/3DS-custom-keyboard/blob/main/screenshots/symbols.bmp) ![](https://github.com/cooolgamer/3DS-custom-keyboard/blob/main/screenshots/cell.bmp)

## About 3dstool, ctrtool and makerom
You will find in the "PC/bin" folder on the releases, 3 executables, these are older versions of [makerom and ctrtool](https://github.com/3DSGuy/Project_CTR/releases) and [3dstool](https://github.com/dnasdw/3dstool/releases) because the newer ones doesn't work properly.

## How to install?
Note: a windows computer is required.
### Getting the requirements
- Download the latest "Coool Custom Keyboard" archive in the [releases tab](https://github.com/cooolgamer/3DS-custom-keyboard/releases/)
- Extract the archive, put all contents of the "SD" folder in the root of your 3DS SD card, and put the "PC" folder somewhere on your PC

### Dumping and patching the keyboard and its romfs
- Open godmode9 on your 3ds (hold start while booting) with your SD card in
- Press the home button, go to scripts, and then select the Custom Keyboard script
- Select "Dump and Prepare Keyboard"
- Wait and accept the messages, which should shut down your 3ds

### Building the keyboard
- If you have a SD slot on your computer, plug your SD card in
  - if you don't, copy the ``keyboard.cia`` and ``romfs-patched.bin`` files on the "PC" folder
- Run ``Custom Keyboard Patcher.bat`` and select the destination
- Wait for it to finish (you can ignore the aes key errors)
- If you don't have an SD card slot, copy the ``Keyboard_patched.cia`` file in the gm9/customkyb folder on your SD card
  - if your SD card was in, you can unplug it and put it on your 3ds
- Warning: DO NOT INSTALL IT USING FBI! You must encrypt it before, which the godmode9 script does in the next step

### Installing the custom keyboard
- Open godmode9 on your 3ds with your SD card in
- Run the Custom Keyboard script like before
- Select "Install Patched Keyboard"
  - Note: After doing this, the ``Keyboard_patched.cia`` file can now be installed with any CIA installer like FBI because the script encrypts it
  - You don't need to install it with FBI, as the script already installed it for you
- Enjoy!

## How to uninstall?
Please follow those steps carefully:

- FIRST METHOD: reinstalling with system update.
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

## Warning: the keyboard isn't signed, meaning you SHOULD NOT uninstall your custom firmware.
* I am NOT responsible if you did, and have issues related to keyboard, you have been warned.
* If you plan to uninstall CFW, then follow the [uninstallation tutorial](https://github.com/cooolgamer/3DS-custom-keyboard#how-to-uninstall).

## Need help or info?
You can contact me on my [Discord server](https://discord.gg/g776yamU)

## Credits:
* [HMRT](https://github.com/schrmh/HMRT) (HomeMenu Rebuild Tool) which allowed me to easily extract and edit the cia
* [ctrtool, makerom](https://github.com/3DSGuy/Project_CTR/) and [3dstool](https://github.com/dnasdw/3dstool/) developers
* Thanks to Zukkunda for inspiring me of the blue color!

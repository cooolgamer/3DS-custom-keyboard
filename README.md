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

## How to install?
* To install, go to the [releases page](https://github.com/cooolgamer/3DS-custom-keyboard/releases) then download the "Coool Custom Keyboard (your region).cia" file and install it with your favorite CIA installer.
* Check the [WARNING](https://github.com/cooolgamer/3DS-custom-keyboard#warning-the-keyboard-isnt-signed-meaning-you-should-not-uninstall-your-custom-firmware) and of course, enjoy!

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
* [HMRT](https://github.com/schrmh/HMRT) (HomeMenu Rebuild Tool) which allowed me to easily extract and edit the cia (should be decrypted)
* Thanks to Zukkunda for inspiring me of the blue color!

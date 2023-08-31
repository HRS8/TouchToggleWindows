# TouchToggleWindows
A custom script that adds hotkey to toggle touch input on touch input enabled laptops running on windows</br>
1.get your touch display deviceID found under HID devices named something like touch you can use ["Get-WmiObject Win32_PnPEntity | Where-Object {$_.Name -match "touch screen"}"]</br>
2.copy the deviceID.If it doesn't work do it manually</br>
3.paste your deviceID in $deviceID variable in touch.ps1 file</br>
4.make sure all three files including shortcut you created are in same folder{preffered in desktop}</br>
5.assign a hotkey to shortcuts under properties > shortcut keys</br>
6.press the hotkey and grant admin privlages</br>
<b>ENJOY ;)</b>

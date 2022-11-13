# Introduction

This guide allows you to enable VoLTE and VoWiFi on Pixel 5 with Android 12(probably also future androids and previous versions).

It uses:

- [EFS Tools](https://github.com/JohnBel/EfsTools),

- [Qualcom Drivers via QPST](https://qpsttool.com/qpst-tool-v2-7-496),

- [ADB - Platform Tools with proper Google drivers](https://developer.android.com/studio/releases/platform-tools)

- Magisk

- Magisk module(from Magisk folder),

- Windows(tested on Windows 10 - unfortunately EFS tools doesn't work with Linux),

- MBN file from another device with the same **modem**(e.g. Nokia 8.3 5G) and one file which enables the uploaded MBN

# Test cases
Tested on stock ROM with Pixel 5 - Poland Orange - used Nokia 8.3 5G MBN


# Thanks
Big thanks to [Kars88 from XDA](https://forum.xda-developers.com/m/kars88.1417781/) as this guide wouldn't exist without him :)

# Steps

There's also a video on YouTube from whole process:

https://youtu.be/NKeFM6mVMY8

1. Download whole repo or download proper files to your PC

In this example, I'll assume that you've them in folder **C:\Users\User\Downloads**

2. Install QPST from link above(on PC)
3. Download Magisk Modules to your device(from **MagiskModules/** folder on GitHub) (to yours Android device)
4. Download file called **mcfg_autoselect_by_uim** from "**MBN/**" (to yours PC)
5. Download your MBN from repo(all MBNs are in **MBN/** folder) - you need to select a proper MBN for your provider (download it to yours PC)
6. Put your **MBN** and **MCFG_autoselect_by_uim** to EfsTools folder (on your PC, they should in the same folder as program called **EfsTools.exe**)
7. Flash module(in Magisk) and reboot device
8. Connect your device to the PC
9. Launch powershell/CMD and go into EFSTools folder

10. Launch **adb shell** in the console(powershell/CMD), after you get a console launch those commands one by one:
```
su

resetprop ro.bootmode usbradio

resetprop ro.build.type userdebug

setprop sys.usb.config diag,diag_mdm,adb

diag_mdlog

```

11. Do CTRL+C(to stop diag_mdlog). Then change USB to file transfer mode, unplug the device then plug it back to the PC.

12. You should see your device with command(Powershell/CMD) `efsTools.exe efsInfo` if not open an issue and I'll try to help or try to reboot device. 

example screenshot:

![image](https://user-images.githubusercontent.com/90356612/167317539-2410f24c-898e-4592-add7-bd90818ac5af.png)


13. Launch those commands in CMD/Powershell with EfsTools (in video I did also with "-s 1" which means second SIM):
```
EfsTools.exe writeFile -i mcfg_autoselect_by_uim -o /nv/item_files/mcfg/mcfg_autoselect_by_uim

EfsTools.exe uploadDirectory -i mcfg_sw.mbn -o / -v
```
Your MBN should be placed in your device(no errors should be visible in console)

14. Reboot device - manually or through ADB shell with command:

```
su

reboot now
```

15. Be happy with VoLTE and VoWiFi :)


# What modules do?

Module for switches enables VoLTE and VoWiFi on your device through props:

```
persist.dbg.ims_volte_enable=1
persist.dbg.volte_avail_ovr=1
persist.dbg.vt_avail_ovr=1
persist.data.iwlan.enable=true
persist.dbg.wfc_avail_ovr=1
```

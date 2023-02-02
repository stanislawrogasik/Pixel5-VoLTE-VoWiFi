# Pixel 5 VoLTE VoWiFi 5G in unsupported countries
## Introduction
This module enables VoLTE & VoWiFi & 5G in unsupported carriers worldwide :)

Check MBNs in the folder: `/system/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw/generic` in this repo, if you want to see if your country is available within this module.

If not, send private message on XDA to [me](https://forum.xda-developers.com/m/vortuks.5945472/)

## Usage - How to use
1. Download latest version from [Release page](https://github.com/stanislawrogasik/Pixel5-VoLTE-VoWiFi/releases)
2. Flash in Magisk
3. Reboot & enjoy 

## Features
- **Doesn't enforce 5G** - you can still select LTE only if your current provider plan doesn't support 5G
- Enables VoLTE
- Enables VoWiFi
- Enables 5G support
- Properly loads MBN back, when the network connection is poor/dropped

## Verified
- Pixel 5 - StockOS - Orange Poland - VoLTE & VoWiFi
- Pixel 5 - Orange Romania - VoLTE & VoWiFi & 5G
- Pixel 5 - Orange T-Mobile - VoLTE & VoWiFi

## Difference between this module and ender-zhao module
- Doesn't enforce 5G
- After loosing connection to the network provider the original module didn't load MBN back again. We had to restart Pixel5

# Credits
- Big thanks to [mightyvenom](https://forum.xda-developers.com/m/mightyvenom.4163960/) from XDA with testing module and feedback
- Big thanks to ender-zhao for providing initial Magisk Module

# QPST/EFS Method
There's a old method with loading MBNs directly to the MODEM NV in folder `QPST EFS Method`
You can use it if this module doesn't work and you have proper MBN.

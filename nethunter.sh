#!/bin/bash

echo      -----------------------------------------
echo      ----------- Made By:madScript -----------
echo      ------- Kali NetHunter Installer --------
echo      ------------------v5.0-------------------
echo      -----------------------------------------
echo
echo "##################################################"
echo "##                                              ##"
echo "##  88      a8P         db        88        88  ##"
echo "##  88    .88'         d88b       88        88  ##"
echo "##  88   88'          d8''8b      88        88  ##"
echo "##  88 d88           d8'  '8b     88        88  ##"
echo "##  8888'88.        d8YaaaaY8b    88        88  ##"
echo "##  88P   Y8b      d8''''''''8b   88        88  ##"
echo "##  88     '88.   d8'        '8b  88        88  ##"
echo "##  88       Y8b d8'          '8b 888888888 88  ##"
echo "##                                              ##"
echo "################### NetHunter ####################"
echo

# Installing Apps
pm install /sdcard/install_nh/Apks/BlueNMEA.apk
pm install /sdcard/install_nh/Apks/cSploit-release.apk
pm install /sdcard/install_nh/Apks/Drivedroid.apk
pm install /sdcard/install_nh/Apks/Hackerskeyboard.apk
pm install /sdcard/install_nh/Apks/OpenVPN.apk
pm install /sdcard/install_nh/Apks/RFAnalyzer.apk
pm install /sdcard/install_nh/Apks/RouterKeygen.apk
pm install /sdcard/install_nh/Apks/Shodan.apk
pm install /sdcard/install_nh/Apks/Term-nh.apk
pm install /sdcard/install_nh/Apks/USBKeyboard.apk
pm install /sdcard/install_nh/Apks/VNC-nh.apk
pm install /sdcard/install_nh/Apks/nethunter.apk
sleep 5

# Setting Variables
mount -o rw,remount /system
mount -o rw,remount /data
arch="getprop ro.product.cpu.abi"
amd64="sh Busybox/amd64/tools/installbusybox.sh"
arm64="sh Busybox/arm64/tools/installbusybox.sh"
arm="sh Busybox/arm/tools/installbusybox.sh"
i386="sh Busybox/i386/tools/installbusybox.sh"

# Choosing Right Busybox
echo "Installing Nethunter Busybox..."
if $arch 1> arm64*
 then $arm64
  else
if $arch 1> arm*
 then $arm
  else
if $arch 1>

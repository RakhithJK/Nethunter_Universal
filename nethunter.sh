#!/bin/bash

echo      -----------------------------------------
echo      ----- Made By:madScript,Spyrotecher -----
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
pm install /sdcard/install_nh/app/BlueNMEA.apk
pm install /sdcard/install_nh/app/cSploit-release.apk
pm install /sdcard/install_nh/app/Drivedroid.apk
pm install /sdcard/install_nh/app/Hackerskeyboard.apk
pm install /sdcard/install_nh/app/nethunter.apk
pm install /sdcard/install_nh/app/OpenVPN.apk
pm install /sdcard/install_nh/app/RFAnalyzer.apk
pm install /sdcard/install_nh/app/RouterKeygen.apk
pm install /sdcard/install_nh/app/Shodan.apk
pm install /sdcard/install_nh/app/Term-nh.apk
pm install /sdcard/install_nh/app/USBKeyboard.apk
pm install /sdcard/install_nh/app/VNC-nh.apk
sleep 5

# Setting Variables
mount -o rw,remount /system
mount -o rw,remount /data
arch=$(getprop ro.product.cpu.abi)

# Choosing Right Busybox
echo "Installing Nethunter Busybox..."
rm -rf /system/xbin/busybox_nh

case $arch in
  armea*) cp "/sdcard/install_nh/busybox/arm/busybox" /system/xbin/busybox_nh
  ;;
  arm64*) cp "/sdcard/install_nh/busybox/arm64/busybox" /system/xbin/busybox_nh
esac

# Giving permissions and installing Busybox
chmod 0755 /system/xbin/busybox_nh
/system/xbin/busybox_nh --install -s /system/xbin

[ -e /system/xbin/busybox ] || {
	print "/system/xbin/busybox not found! Symlinking..."
	ln -s /system/xbin/busybox_nh /system/xbin/busybox
}

echo "Busybox Sucessfully Installed!"
sleep 2

# Clean up
echo "Cleaning up..."
rm -r /data/local/nhsystem/kali-*
sleep 2

# End
echo "Done"
echo "Now open the NetHunter App and install Chroot"
sleep 2

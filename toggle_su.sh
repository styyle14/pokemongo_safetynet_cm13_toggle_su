#!/system/xbin/bash

#set -x
set -e

if [ -f /system/xbin/su ]; then
	echo "System is in 'rooted' mode. Disabling root now."
	(su -c \
		"mount -o remount,rw /system
		mv /system/xbin/su /system/xbin/su_
		rm /system/bin/su
		mount -o remount,ro /system"
	)
	echo "System is now in 'unrooted mode'."
elif [ -f /system/xbin/su_ ]; then
	echo "System is in 'unrooted' mode. Enabling root now."
	(su_ -c \
		"mount -o remount,rw /system
		mv /system/xbin/su_ /system/xbin/su
		ln -s /system/xbin/su /system/bin/
		mount -o remount,ro /system"
	)
	echo "System is now in 'rooted mode'."
else
	echo "Could not find /system/xbin/su or /system/xbin_su_. Exiting now."
fi

# pokemongo_safetynet_cm13_toggle_su
Script to engage or disengage the Google SafetyNet in Cyanogenmod13 to allow for playing Pokemon Go after v0.37 update

To use, run the following in an Android Terminal on CM13:
```
$ su
# mount -o remount,rw /system
# cp toggle_su.sh /system/bin
# mount -o remount,ro /system
# exit
```

Now you can toggle root access for Google SafetyNet/Pokemon Go as follows:
```
$ toggle_su.sh
System is in 'rooted' mode. Disabling root now.
System is now in 'unrooted mode'.
$ toggle_su.sh
System is in 'unrooted' mode. Enabling root now.
System is now in 'rooted mode'.
```

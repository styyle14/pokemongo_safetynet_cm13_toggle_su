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

You can verify that this toggles the Google SafetyNet with the Google Play app :
```
SafetyNet Helper Sample
by Scott Alexander-Bown
```
Much thanks to jffmichi at forum.cyanogenmod.org for the initial idea:
https://forum.cyanogenmod.org/topic/129005-any-way-to-make-pokemon-gos-new-update0370-work-with-cm-130/?page=1

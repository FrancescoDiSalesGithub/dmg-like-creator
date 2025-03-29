# dmg-like-creator
Silly repository to give a proof of concept of how dmg is quite a stupid image format

# How to use it

First run **create-fake-dmg.sh** as the following:
```
bash create-fake-dmg.sh <FILENAME>.<EXTENSION> <SIZE_IN_MB>
```
where:
* FILENAME = the filename of your image
* EXTENSION = the extension of your image
* SIZE_IN_MB = size in megabyte

Example:
```
bash create-fake-dmg.sh mydisk.fdmg 500
```
This command will create mydisk.fdmg with 500 MB of size

After creating the disk you have to format it. This script **format.sh** will format it in ext4. To use it you have to run:
```
bash format.sh <FILENAME>.<EXTENSION>
```
So as for the example at previous step we would have something among the lines:
```
bash format.sh mydisk.fdmg
```

Finally we have to use our new fake dmg disk, so, we have to run as root **mount.sh**:
```
bash mount.sh <FILENAME>.<EXTENSION> <MOUNT_DIRECTORY>
```
Where:
* MOUNT_DIRECTORY = The directory to mount this disk
As for the example above we would have something like this:

```
bash mount.sh mydisk.fdmg /media/mydisk.fdmg
```
If everything went fine doing **df -H** you should check your new fake archive in the mount directory

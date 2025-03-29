#!/bin/bash


image_disk=$1
mount_path=$2

user=$(whoami)

if [ "$user" == "root" ]
then
	
	
	mount -t auto $image_disk $mount_path
fi

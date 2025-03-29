 #!/bin/bash

    img_file_path=$1
    
    loop_device=$(sudo losetup --find --show $img_file_path)
    echo "Loop device created: $loop_device"

    
    echo -e "n\np\n1\n\n\nw\n" | sudo fdisk $loop_device

   
    partition="${loop_device}p1"
    sudo mkfs.ext4 $partition
    echo "ext4 filesystem created on $partition"

   
    sudo losetup -d $loop_device
    echo "Loop device detached."

    mkfs.ext4 $img_file_path

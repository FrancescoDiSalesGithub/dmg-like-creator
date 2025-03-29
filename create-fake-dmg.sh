#!/bin/bash


    img_file_path=$1
    size_in_mb=$2
    dd if=/dev/zero of=$img_file_path bs=1M count=$size_in_mb status=progress
    echo "$img_file_path created with size $size_in_mb MB."




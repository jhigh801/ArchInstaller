#!/bin/sh

## ---------------------- Mounting-Partitions {{{
# TARGET_DRIVE="sda"       # Uncomment this line if using a standard SATA drive
TARGET_DRIVE="nvme0n1"   # Uncomment this line if using an NVMe SSD

# --- Mounting for SATA Drives ---
if [ "$TARGET_DRIVE" = "sda" ]; then
    # 1. Mount the Root partition
    mount /dev/sda2 /mnt
    
    # 2. Create the mount points on the fresh root filesystem
    mkdir -p /mnt/boot
    mkdir -p /mnt/home
    
    # 3. Mount Boot and Home
    mount /dev/sda1 /mnt/boot
    mount /dev/sda3 /mnt/home

# --- Mounting for NVMe Drives ---
elif [ "$TARGET_DRIVE" = "nvme0n1" ]; then
    # 1. Mount the Root partition
    mount /dev/nvme0n1p2 /mnt
    
    # 2. Create the mount points on the fresh root filesystem
    mkdir -p /mnt/boot
    mkdir -p /mnt/home
    
    # 3. Mount Boot and Home
    mount /dev/nvme0n1p1 /mnt/boot
    mount /dev/nvme0n1p3 /mnt/home
fi
## }}}

echo "This Script is now completed!"

#!/bin/sh

## ------------------------ Formatting-Partitions {{{
# TARGET_DRIVE="sda"       # Uncomment this line if installing to a standard SATA drive
TARGET_DRIVE="nvme0n1"   # Uncomment this line if installing to an NVMe SSD

# --- Formatting for SATA Drives (sda1, sda2, sda3, etc.) ---
if [ "$TARGET_DRIVE" = "sda" ]; then
    mkfs.vfat -F 32 /dev/sda1
    mkfs.ext4 /dev/sda2
    mkfs.ext4 /dev/sda3
    mkswap /dev/sda4
    swapon /dev/sda4

# --- Formatting for NVMe Drives (nvme0n1p1, nvme0n1p2, nvme0n1p3, etc.) ---
elif [ "$TARGET_DRIVE" = "nvme0n1" ]; then
    mkfs.vfat -F 32 /dev/nvme0n1p1
    mkfs.ext4 /dev/nvme0n1p2
    mkfs.ext4 /dev/nvme0n1p3
    mkswap /dev/nvme0n1p4
    swapon /dev/nvme0n1p4
fi
## }}}

echo "This Script is now complete!"

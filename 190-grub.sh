#!/bin/sh

## ----------------------Grub {{{
# Removed the hardcoded /dev/sda and updated the EFI directory to /boot
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB --recheck

# Generate the main configuration file
grub-mkconfig -o /boot/grub/grub.cfg
## }}}

echo "This Script is now complete!"

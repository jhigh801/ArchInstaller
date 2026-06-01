#!/bin/sh

## -------------------------- Pacstrap {{{
# Added networkmanager for your wired connection, zsh for your shell, and grub/efibootmgr for the bootloader
pacstrap -K /mnt base base-devel linux linux-firmware networkmanager zsh grub efibootmgr nano
## }}}

echo "This Script is now completed!"

#!/bin/sh

## -------------------------- Archlinux-Keyring {{{
# Initialize the keyring cleanly
pacman-key --init

# Populate with the official Arch Linux master keys
pacman-key --populate archlinux

# Modern safety addition: Refresh the keyring packages to prevent signature errors
pacman -Sy archlinux-keyring --noconfirm
## }}}

echo "This Script is now complete!"

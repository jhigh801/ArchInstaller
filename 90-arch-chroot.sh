#!/bin/sh

## --------------------------- Arch-chroot {{{
# 1. Copy your next deployment script (let's say it's script 100) into the chroot area
cp 100-localtime.sh /mnt/opt/100-localtime.sh
chmod +x /mnt/opt/100-localtime.sh

# 2. Tell arch-chroot to jump in, run that specific script, and come right back out
arch-chroot /mnt /opt/100-localtime.sh

# 3. Clean up the script file from the new system when done
rm /mnt/opt/100-localtime.sh
## }}}

echo "This Script is now completed!"

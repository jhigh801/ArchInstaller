#!/bin/sh

## ------------------- Sudoers {{{
# This automatically gives the 'wheel' group sudo power without opening an editor
echo "%wheel ALL=(ALL:ALL) ALL" > /etc/sudoers.d/wheel
## }}}

echo "This Script is now complete!"

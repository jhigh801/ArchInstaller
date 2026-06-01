#!/bin/sh

## ---------------------------- Useradd {{{
# Changed default shell to zsh and streamlined groups for modern Arch standards
useradd -m -g users -G wheel,rfkill,power -s /usr/bin/zsh jon
## }}}

echo "This Script is now complete!"

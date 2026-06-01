#!/bin/sh

## -------------------------- Reflector {{{
# Changed protocol to strictly https for modern security standards
reflector -c "United States" -l 10 -p https --sort rate --save /etc/pacman.d/mirrorlist
## }}}

echo "This Script is now complete!"

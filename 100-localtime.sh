#!/bin/sh

## ------------------------ Localtime {{{
# Added /mnt to the front so it writes directly to the new installation's filesystem
ln -sf /usr/share/zoneinfo/America/Fort_Wayne /mnt/etc/localtime
## }}}

echo "This Script is now completed!"

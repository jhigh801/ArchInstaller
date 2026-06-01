#!/bin/sh

## ------------------------- locales {{{
# 1. Automatically uncomment the en_US locale line without opening nano
sed -i 's/#en_DK.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
sed -i 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen

# 2. Generate the locales based on the updated file
locale-gen

# 3. Set the system-wide language variable cleanly
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "LC_TIME=en_DK.UTF-8" >> /etc/locale.conf
echo "LC_COLLATE=C" >> /etc/locale.conf
echo "LC_MEASUREMENT" >> /etc/locale.conf

# 4. Export the variable for the current temporary shell session
export LANG=en_US.UTF-8
## }}}

echo "This Script is now completed!"

#!/bin/sh

## ------------------------- Hosts {{{
# The first line uses > to clear old data; the next lines use >> to append cleanly
echo "127.0.0.1                 localhost" > /etc/hosts
echo "::1                       localhost" >> /etc/hosts
echo "127.0.1.1                 Arch.localdomain Arch" >> /etc/hosts
## }}}

echo "This Script is now complete!"

#!/bin/sh

## ------------------------- Root-passwd (Password) {{{
# Syntax format: echo "username:password" | chpasswd
echo "root:YourActualPasswordHere" | chpasswd
## }}}

echo "This Script is now complete!"

#!/bin/sh

## ----------------------- Timedatectl {{{
# Enables the time sync daemon so it starts automatically on your first boot
systemctl enable systemd-timesyncd.service
## }}}

echo "This Script is now completed!"

#!/bin/sh

# --- CORE NETWORKING ---
sudo systemctl start NetworkManager.service
sudo systemctl start systemd-resolved.service
sudo systemctl start systemd-timesyncd.service
sudo systemctl start avahi-daemon.service

# --- HARDWARE, POWER & FANS ---
sudo systemctl start bluetooth.service
sudo systemctl start tlp.service
sudo systemctl start fancontrol.service

# --- PRINTING & BACKUPS ---
sudo systemctl start cups.service
sudo systemctl start cups-browsed.service
sudo systemctl start rsyncd.service

# --- REFLECTOR (MIRRORS) ---
# We enable and start the .timer instead of the one-shot .service.
# Running 'start reflector.service' forces a live mirror sync right now,
# which can freeze your script for a couple of minutes while it downloads data.
sudo systemctl enable reflector.timer
sudo systemctl start reflector.timer

# Note: Removed dhcpcd, wpa_supplicant, iwd, and hddtemp to stop network locks and missing service errors.

echo "Script is Complete!"

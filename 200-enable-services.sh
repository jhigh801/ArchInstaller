#!/bin/sh 

# --- CORE NETWORKING (Choose NetworkManager as primary) ---
systemctl enable NetworkManager.service
systemctl enable systemd-resolved.service
systemctl enable systemd-timesyncd.service
systemctl enable avahi-daemon.service

# --- HARDWARE & POWER ---
systemctl enable bluetooth.service
systemctl enable tlp.service
systemctl enable hddtemp.service
systemctl enable fancontrol.service

# --- PRINTING & BACKUPS ---
systemctl enable cups.service
systemctl enable cups-browsed.service
systemctl enable rsyncd.service

# --- MAINTENANCE ---
systemctl enable reflector.service

# Note: dhcpcd, wpa_supplicant, and iwd have been removed 
# to prevent hardware conflicts with NetworkManager.

echo "This Script is Complete!"

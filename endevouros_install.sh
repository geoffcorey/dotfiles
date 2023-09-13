#!/bin/bash
~/bin/pacman_restore.sh
npm install -g neovim
sudo vi /etc/nsswitch.conf
# hosts: mymachines mdns_minimal [NOTFOUND=return] resolve [!UNAVAIL=return] files myhostname dns
sudo systemctl enable plexmediaserver.service bluetooth avahi-daemon.service cups-browsed.service cups.service
sudo systemctl start plexmediaserver.service bluetooth avahi-daemon.service cups-browsed.service cups.service

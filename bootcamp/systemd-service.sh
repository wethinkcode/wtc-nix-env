#!/bin/bash
set -e

sudo mkdir /home/bootcamp-profile

sudo chown root:root /home/bootcamp-profile

sudo rsync -avh --delete /home/bootcamp/ /home/bootcamp-profile/

wget -P /usr/local/bin/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/bootcamp-update

sudo chown root:root /usr/local/bin/bootcamp-update

wget -P /lib/systemd/system/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/bootcamp-profile.service

wget -P /etc/systemd/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/bootcamp-profile.service

sudo chmod a+rwx /etc/systemd/bootcamp-profile.service

sudo systemctl enable bootcamp-profile.service

sudo systemctl restart bootcamp-profile.service

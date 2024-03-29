#!/bin/bash
set -e

sudo rm -rf /home/bootcamp-profile

sudo mkdir /home/bootcamp-profile

sudo chown root:root /home/bootcamp-profile

sudo rsync -a --delete /home/bootcamp/ /home/bootcamp-profile/

cd ~

sudo wget -P /tmp/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/bootcamp-update

sudo mv /tmp/tmp_bootcamp/bootcamp-update /usr/local/bin/bootcamp-update

sudo chown root:root /usr/local/bin/bootcamp-update

sudo chmod +x /usr/local/bin/bootcamp-update

sudo wget -P /tmp/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/bootcamp-profile.service

sudo mv /tmp/tmp_bootcamp/bootcamp-profile.service /lib/systemd/system/bootcamp-profile.service

sudo chown root:root /lib/systemd/system/bootcamp-profile.service

sudo chmod 644 /lib/systemd/system/bootcamp-profile.service

sudo wget -P /tmp/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/bootcamp-profile.service

sudo mv /tmp/tmp_bootcamp/bootcamp-profile.service /etc/systemd/bootcamp-profile.service

sudo chown root:root /etc/systemd/bootcamp-profile.service

sudo chmod 644 /etc/systemd/bootcamp-profile.service

sudo systemctl enable bootcamp-profile.service

sudo systemctl restart bootcamp-profile.service

sudo wget -P /tmp/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/bootcamp-nix

sudo mv /tmp/tmp_bootcamp/bootcamp-nix /usr/local/bin/bootcamp-nix

sudo chown bootcamp:bootcamp /usr/local/bin/bootcamp-nix

sudo chmod +x /usr/local/bin/bootcamp-nix

sudo wget -P /tmp/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/bootcamp-nix.service

sudo mv /tmp/tmp_bootcamp/bootcamp-nix.service /lib/systemd/system/bootcamp-nix.service

sudo chown root:root /lib/systemd/system/bootcamp-nix.service

sudo chmod 644 /lib/systemd/system/bootcamp-nix.service

sudo wget -P /tmp/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/bootcamp-nix.service

sudo mv /tmp/tmp_bootcamp/bootcamp-nix.service /etc/systemd/bootcamp-nix.service

sudo chown root:root /etc/systemd/bootcamp-nix.service

sudo chmod 644 /etc/systemd/bootcamp-nix.service

sudo systemctl enable bootcamp-nix.service

sudo systemctl restart bootcamp-nix.service

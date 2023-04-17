#!/bin/bash
set -e

sudo rm -rf /home/bootcamp-profile

sudo mkdir /home/bootcamp-profile

sudo chown root:root /home/bootcamp-profile

sudo rsync -avh --delete /home/bootcamp/ /home/bootcamp-profile/

wget -P $HOME/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/bootcamp-update

sudo mv $HOME/tmp_bootcamp/bootcamp-update /usr/local/bin/bootcamp-update

sudo chown root:root /usr/local/bin/bootcamp-update

sudo chmod +x /usr/local/bin/bootcamp-update

wget -P $HOME/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/bootcamp-profile.service

sudo mv $HOME/tmp_bootcamp/bootcamp-profile.service /lib/systemd/system/bootcamp-profile.service

sudo chmod a+rwx /lib/systemd/system/bootcamp-profile.service

wget -P $HOME/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/bootcamp-profile.service

sudo mv $HOME/tmp_bootcamp/bootcamp-profile.service /etc/systemd/bootcamp-profile.service

sudo chmod a+rwx /etc/systemd/bootcamp-profile.service

sudo systemctl enable bootcamp-profile.service

sudo systemctl restart bootcamp-profile.service

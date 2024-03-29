#!/bin/bash
set -e

# clearing temporary work folder
rm -rf /tmp/tmp_bootcamp

# create temporary work folder
mkdir /tmp/tmp_bootcamp

cd /tmp/tmp_bootcamp

# install requirements
rm -f /tmp/tmp_bootcamp/requirements.sh

wget -P /tmp/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/general/requirements.sh

sudo chmod +x /tmp/tmp_bootcamp/requirements.sh

./requirements.sh

rm /tmp/tmp_bootcamp/requirements.sh

# create nix folder
rm -f /tmp/tmp_bootcamp/nix-folder.sh

wget -P /tmp/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/general/nix-folder.sh

sudo chmod +x /tmp/tmp_bootcamp/nix-folder.sh

./nix-folder.sh

rm /tmp/tmp_bootcamp/nix-folder.sh

# create user
rm -f /tmp/tmp_bootcamp/create-user.sh

wget -P /tmp/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/create-user.sh

sudo chmod +x /tmp/tmp_bootcamp/create-user.sh

./create-user.sh

rm /tmp/tmp_bootcamp/create-user.sh

# install nix
rm -f /tmp/tmp_bootcamp/nix-install.sh

wget -P /tmp/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/nix-install.sh

sudo chmod +x /tmp/tmp_bootcamp/nix-install.sh

./nix-install.sh

rm /tmp/tmp_bootcamp/nix-install.sh

# install home-manager
rm -f /tmp/tmp_bootcamp/hm-install.sh

wget -P /tmp/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/hm-install.sh

sudo chmod +x /tmp/tmp_bootcamp/hm-install.sh

./hm-install.sh

rm /tmp/tmp_bootcamp/hm-install.sh

# setup enviroment
rm -f /tmp/tmp_bootcamp/nix-env.sh

wget -P /tmp/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/nix-env.sh

sudo chmod +x /tmp/tmp_bootcamp/nix-env.sh

./nix-env.sh

rm /tmp/tmp_bootcamp/nix-env.sh

# create systemd services
rm -f /tmp/tmp_bootcamp/systemd-service.sh

wget -P /tmp/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/systemd-service.sh

sudo chmod +x /tmp/tmp_bootcamp/systemd-service.sh

./systemd-service.sh

rm /tmp/tmp_bootcamp/systemd-service.sh

# delete temporary work folder
rm -rf /tmp/tmp_bootcamp

echo "done creating bootcamp"
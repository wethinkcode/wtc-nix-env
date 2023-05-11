#!/bin/bash
set -e

# start at home
cd ~

# clearing temporary work folder
rm -rf /tmp/tmp_wtc

# create temporary work folder
mkdir /tmp/tmp_wtc

# install requirements
rm -f /tmp/tmp_wtc/requirements.sh

wget -P /tmp/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/general/requirements.sh

chmod +x /tmp/tmp_wtc/requirements.sh

cd /tmp/tmp_wtc

./requirements.sh

cd ~

rm /tmp/tmp_wtc/requirements.sh

# create nix folder
rm -f /tmp/tmp_wtc/nix-folder.sh

wget -P /tmp/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/general/nix-folder.sh

chmod +x /tmp/tmp_wtc/nix-folder.sh

cd /tmp/tmp_wtc

./nix-folder.sh

cd ~

rm /tmp/tmp_wtc/nix-folder.sh

# create user
rm -f /tmp/tmp_wtc/create-user.sh

wget -P /tmp/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/create-user.sh

chmod +x /tmp/tmp_wtc/create-user.sh

cd /tmp/tmp_wtc

./create-user.sh

cd ~

rm /tmp/tmp_wtc/create-user.sh

# install nix
rm -f /tmp/tmp_wtc/nix-install.sh

wget -P /tmp/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/nix-install.sh

chmod +x /tmp/tmp_wtc/nix-install.sh

cd /tmp/tmp_wtc

./nix-install.sh

cd ~

rm /tmp/tmp_wtc/nix-install.sh

# install home-manager
rm -f /tmptmp_wtc/hm-install.sh

wget -P /tmp/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/hm-install.sh

chmod +x /tmp/tmp_wtc/hm-install.sh

cd /tmp/tmp_wtc

./hm-install.sh

cd ~

rm /tmp/tmp_wtc/hm-install.sh

# setup nix enviroment
rm -f /tmp/tmp_wtc/nix-env.sh

wget -P /tmp/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/nix-env.sh

chmod +x /tmp/tmp_wtc/nix-env.sh

cd /tmp/tmp_wtc

./nix-env.sh

cd ~

rm /tmp/tmp_wtc/nix-env.sh

# install homebrew
rm -f /tmp/tmp_wtc/hb-install.sh

wget -P /tmp/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/hb-install.sh

chmod +x /tmp/tmp_wtc/hb-install.sh

cd /tmp/tmp_wtc

./hb-install.sh

cd ~

rm /tmp/tmp_wtc/hb-install.sh

# install sdkman
rm -f /tmp/tmp_wtc/sdk-install.sh

wget -P /tmp/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/sdk-install.sh

chmod +x /tmp/tmp_wtc/sdk-install.sh

cd /tmp/tmp_wtc

./sdk-install.sh

cd ~

rm /tmp/tmp_wtc/sdk-install.sh

# create systemd services
rm -f /tmp/tmp_wtc/systemd-service.sh

wget -P /tmp/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/systemd-service.sh

chmod +x /tmp/tmp_wtc/systemd-service.sh

cd /tmp/tmp_wtc

./systemd-service.sh

cd ~

rm /tmp/tmp_wtc/systemd-service.sh

# delete temporary work folder
rm -rf /tmp/tmp_wtc

echo "done creating wtc"
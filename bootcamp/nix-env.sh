#!/bin/bash
set -e

# move the original home file to backup
sudo runuser -l bootcamp -c 'mv /home/bootcamp/.config/home-manager/home.nix /home/bootcamp/.config/home-manager/home.nix.backup'

# pull home file from repo
sudo runuser -l bootcamp -c 'wget -P /home/bootcamp/.config/home-manager/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/home.nix'

# use the home file
sudo runuser -l bootcamp -c 'home-manager switch'

# show the installed icons on desktop
sudo runuser -l bootcamp -c "echo 'export XDG_DATA_DIRS=/home/bootcamp/.nix-profile/share:/home/bootcamp/.share:"${XDG_DATA_DIRS:-/usr/local/share/:/usr/share/}"' >> /home/bootcamp/.profile"
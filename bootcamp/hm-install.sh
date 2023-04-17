#!/bin/bash
set -e

# adds the home-manager channel
sudo runuser -l bootcamp -c 'nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager'

# updates the nix channels
sudo runuser -l bootcamp -c 'nix-channel --update'

# installs home-manager
sudo runuser -l bootcamp -c 'nix-shell "<home-manager>" -A install'

# source home-manager to user bootcamp terminal
sudo runuser -l bootcamp -c "echo '. "/home/bootcamp/.nix-profile/etc/profile.d/hm-session-vars.sh"' >> /home/bootcamp/.profile"
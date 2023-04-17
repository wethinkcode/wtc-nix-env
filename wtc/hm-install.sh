#!/bin/bash
set -e

# adds the home-manager channel
sudo runuser -l wtc -c 'nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager'

# updates the nix channels
sudo runuser -l wtc -c 'nix-channel --update'

# installs home-manager
sudo runuser -l wtc -c 'nix-shell "<home-manager>" -A install'

# source home-manager to user wtc terminal
sudo runuser -l wtc -c "echo '. "/home/wtc/.nix-profile/etc/profile.d/hm-session-vars.sh"' >> /home/wtc/.profile"
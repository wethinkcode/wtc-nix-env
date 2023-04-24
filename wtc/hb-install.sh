#!/bin/bash
set -e

# adds the home-brew channel
sudo runuser -l wtc -c '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'

# source home-manager to user wtc terminal
sudo runuser -l wtc -c "echo '. "/home/wtc/.nix-profile/etc/profile.d/hm-session-vars.sh"' >> /home/wtc/.profile"
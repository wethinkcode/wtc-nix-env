#!/bin/bash
set -e

# installs nix package manager
sudo runuser -l bootcamp -c 'sh <(curl -L https://nixos.org/nix/install) --no-daemon'

# sources the user bootcamp terminal
sudo runuser -l bootcamp -c '. /home/bootcamp/.nix-profile/etc/profile.d/nix.sh'
#!/bin/bash
set -e

# Download and install the experimental version of Nix
curl https://nixos.org/releases/nix/nix-2.5pre20211217_228e100/install | sh

# Set up the Nix environment variables
source ~/.nix-profile/etc/profile.d/nix.sh

# Test the Nix installation
nix-env --version

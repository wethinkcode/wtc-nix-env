#!/usr/bin/env bash
set -e

# Install the Nix package manager
curl -L https://nixos.org/nix/install | sh --daemon

# Load the Nix environment
. ~/.nix-profile/etc/profile.d/nix.sh

# Build the Nix environment
nix-build

# Activate the Nix environment
nix-shell
#!/bin/bash
set -e

# removes the nix folder
sudo rm -vrf /nix

# creats the nix folder
sudo mkdir /nix

# gives all users to use the folder
sudo chmod a+rwx /nix
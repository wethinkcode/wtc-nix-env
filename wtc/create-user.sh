#!/bin/bash
set -e

# delete user
sudo id -u "wtc"
if id -u "$1" >/dev/null 2>&1; then
  sudo userdel -rf wtc
else
  echo "creating user..."
fi

# creates a standerd user
sudo adduser --disabled-password --gecos "" wtc

# turn into admin
sudo usermod -aG sudo wtc

# give the user a password
echo "wtc:wtc" | sudo chpasswd
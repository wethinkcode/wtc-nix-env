#!/bin/bash
set -e

# delete user
if id -u "1001" >/dev/null 2>&1; then
  sudo userdel -rf wtc
else
  echo "creating user..."
fi

# creates a standerd user
sudo adduser --disabled-password --gecos "" wtc

# give the user a password
echo "wtc:wtc" | sudo chpasswd
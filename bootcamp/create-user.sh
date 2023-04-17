#!/bin/bash
set -e

# delete user
sudo id -u "bootcamp"
if id -u "$1" >/dev/null 2>&1; then
  sudo userdel -rf bootcamp
else
  echo "creating user..."
fi

# creates a standerd user
sudo adduser --disabled-password --gecos "" bootcamp

# give the user a password
echo "bootcamp:bootcamp" | sudo chpasswd
#!/bin/bash
set -e

# delete user
user_exists(){ id "$1" &>/dev/null; } # silent, it just sets the exit code
if user_exists "$1"; code=$?; then  # use the function, save the code
    sudo userdel -rf bootcamp

# creates a standerd user
sudo adduser --disabled-password --gecos "" bootcamp

# give the user a password
echo "bootcamp:bootcamp" | sudo chpasswd
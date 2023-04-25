#!/bin/bash
set -e

# delete user
USR_ID=$(grep wtc /etc/passwd|cut -d: -f 3)

if [[ "${USR_ID}" =~ ^[0-9]+$ ]]; then
        sudo userdel -rf wtc
else
        echo "creating user..."
fi

# creates a standerd user
sudo adduser --disabled-password --gecos "" wtc

# give the user a password
echo "wtc:wtc" | sudo chpasswd
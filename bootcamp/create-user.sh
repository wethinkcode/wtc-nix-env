#!/bin/bash
set -e

# delete user
USR_ID_WTC=$(grep wtc /etc/passwd|cut -d: -f 3)
USR_ID_CAMPER=$(grep bootcamp /etc/passwd|cut -d: -f 3)

if [[ "${USR_ID_CAMPER}" =~ ^[0-9]+$ ]]; then
        sudo userdel -rf wtc
else
        echo "No wtc user..."
fi

if [[ "${USR_ID_WTC}" =~ ^[0-9]+$ ]]; then
        sudo userdel -rf bootcamp
else
        echo "Creating wtc bootcamp..."
fi

# creates a standerd user
sudo adduser --disabled-password --gecos "" bootcamp

# give the user a password
echo "bootcamp:bootcamp" | sudo chpasswd
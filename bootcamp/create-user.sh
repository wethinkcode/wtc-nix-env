#!/bin/bash
set -e

# delete user
USR_ID_WTC=$(grep wtc /etc/passwd | cut -d: -f 3)
USR_ID_CAMPER=$(grep bootcamp /etc/passwd | cut -d: -f 3)
USR_ID_ADMIN=$(grep admin /etc/passwd | cut -d: -f 3)

if [[ "${USR_ID_CAMPER}" =~ ^[0-9]+$ ]]
then
        sudo userdel -rf bootcamp
        sudo rm -rf /home/bootcamp-profile
        sudo systemctl disable bootcamp-nix.service
        sudo systemctl disable bootcamp-profile.service
        sudo rm -rf /usr/local/bin/bootcamp-nix
        sudo rm -rf /lib/systemd/system/bootcamp-nix.service
        sudo rm -rf /etc/systemd/bootcamp-nix.service
        sudo rm -rf /usr/local/bin/bootcamp-profile
        sudo rm -rf /lib/systemd/system/bootcamp-profile.service
        sudo rm -rf /etc/systemd/bootcamp-profile.service
else
        echo "no bootcamp user..."
fi

if [[ "${USR_ID_WTC}" =~ ^[0-9]+$ ]]
then
        sudo userdel -rf wtc
        sudo systemctl disable wtc-nix.service
        sudo rm -rf /usr/local/bin/wtc-nix
        sudo rm -rf /lib/systemd/system/wtc-nix.service
        sudo rm -rf /etc/systemd/wtc-nix.service
else
        echo "no wtc user..."
fi

# creates a standerd user
sudo adduser --disabled-password --gecos "" bootcamp

# give the user a password
echo "bootcamp:bootcamp" | sudo chpasswd

# hide admin user
if [[ "${USR_ID_ADMIN}" =~ ^[0-9]+$ ]]
then
        touch /target/var/lib/AccountsService/users/admin
        echo "[User]" >> /target/var/lib/AccountsService/users/admim
        echo "SystemAccount=true" >> /target/var/lib/AccountsService/users/admin
else
        echo "no admin user, please add..."
fi

#!/bin/bash
set -e

# clearing temporary work folder
rm -rf /tmp/tmp_bootcamp_ssh/

# create temporary work folder
mkdir /tmp/tmp_bootcamp_ssh/

FILE=~/.ssh/id_rsa.pub

if [ -f "$FILE" ]; then
    echo "Your public ssh key needed for github is: "

    cat $FILE
else
    rm -f /tmp/tmp_bootcamp_ssh/create-ssh.sh

    wget -P /tmp/tmp_bootcamp_ssh/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp-ssh/create-ssh.sh

    chmod +x /tmp/tmp_bootcamp_ssh/create-ssh.sh

    cd /tmp/tmp_bootcamp_ssh/

    ./create-ssh.sh

    cd ~

    rm /tmp/tmp_bootcamp_ssh/create-ssh.sh

    echo "Your public ssh key needed for github is: "

    cat $FILE
fi

# clearing temporary work folder
rm -rf /tmp/tmp_bootcamp_ssh/
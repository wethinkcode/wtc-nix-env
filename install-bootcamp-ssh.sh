#!/bin/bash
set -e

# clearing temporary work folder
rm -rf $HOME/tmp_bootcamp_ssh/

# create temporary work folder
mkdir $HOME/tmp_bootcamp_ssh/

FILE=/home/bootcamp/.ssh/id_rsa.pub

if [ -f "$FILE" ]; then
    echo "Your public ssh key needed for github is: "

    cat $FILE
else
    rm -f $HOME/tmp_bootcamp_ssh/create-ssh.sh

    wget -P $HOME/tmp_bootcamp_ssh/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp-ssh/create-ssh.sh

    chmod u+x $HOME/tmp_bootcamp_ssh/create-ssh.sh

    cd $HOME/tmp_bootcamp_ssh/

    ./create-ssh.sh

    cd $HOME

    rm $HOME/tmp_bootcamp_ssh/create-ssh.sh

    echo "Your public ssh key needed for github is: "

    cat $FILE
fi

# clearing temporary work folder
rm -rf $HOME/tmp_bootcamp_ssh/
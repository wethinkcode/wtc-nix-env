#!/bin/bash
set -e

cd /home/bootcamp/tmp_bootcamp_lms/

open https://wethinkcode-community.slack.com/archives/C01QPC5DLBA

sleep 5

echo "Press enter after downloading the latest version to your ~/Download folder: "
read response

if [ "$response" != "" ]
then
    echo "You did not press enter? Exiting..."
else

    chmod +x /home/bootcamp/Downloads/wtc-lms

    if [ -d "$HOME/.local/bin"] 
    then
        echo "Your ~/.local/bin folder is in place, copying wtc-lms there..."
    else
        echo "Creating the folder..."
        mkdir $HOME/.local/bin
    fi

    mv /home/bootcamp/Downloads/wtc-lms /home/bootcamp/.local/bin/wtc-lms

    # code no longer need only here as an example of how to check if a file has certain text in already
    #wget -P /home/bootcamp/tmp_bootcamp_lms/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp-lms/path

    #if grep -q 'if \[ -d \"\$HOME\" \] ; then' '/home/bootcamp/.profile'; then
    #    echo "Path already added..."
    #else
    #    cat path >> /home/bootcamp/.profile
    #fi

    #rm /home/bootcamp/tmp_bootcamp_lms/path

    cd /home/bootcamp/ 
fi

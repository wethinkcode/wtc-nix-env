#!/bin/bash
set -e

cd /home/bootcamp/tmp_bootcamp_lms/

open https://wethinkcode-community.slack.com/archives/C01QPC5DLBA

sleep 5

echo "Press enter after downloading the latest version "
read response

if [ "$response" != "" ]
then
    echo "You did not press enter? Exiting..."
else

    chmod u+x /home/bootcamp/Downloads/wtc-lms

    mv /home/bootcamp/Downloads/wtc-lms /home/bootcamp/wtc-lms

    wget -P /home/bootcamp/tmp_bootcamp_lms/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp_lms/path

    if grep -q 'if \[ -d \"\$HOME\" \] ; then' '/home/bootcamp/.profile'; then
        echo "Path already added..."
    else
        cat path >> /home/bootcamp/.profile
    fi

    rm /home/bootcamp/tmp_bootcamp_lms/path

    cd /home/bootcamp/ 
fi


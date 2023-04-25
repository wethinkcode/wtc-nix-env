#!/bin/bash
set -e

cd /home/bootcamp/tmp_bootcamp_lms/

read -p "Enter link of wtc-lms from copied from Slack: " wtc_lms_url

wget -P /home/bootcamp/ $wtc_lms_url

chmod u+x /home/bootcamp/wtc-lms

wget -P /home/bootcamp/tmp_bootcamp_lms/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp_lms/path

if grep -q 'if \[ -d \"\$HOME\" \] ; then' '/home/bootcamp/.profile'; then
    echo "Path already added..."
else
    cat path >> /home/bootcamp/.profile
fi

rm /home/bootcamp/tmp_bootcamp_lms/path

cd /home/bootcamp/
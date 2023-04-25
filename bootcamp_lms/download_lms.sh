#!/bin/bash
set -e

cd /home/bootcamp/

read -p "Enter URL of wtc-lms from Slack: " wtc_lms_url

wget -P /home/bootcamp/ $wtc_lms_url

#chmod u+x wtc-lms

wget -P /home/bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp_lms/path

cat path >> .profile

rm path
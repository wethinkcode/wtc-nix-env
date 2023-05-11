#!/bin/bash
set -e

# clearing temporary work folder
rm -rf /tmp/tmp_bootcamp_lms/

# create temporary work folder
mkdir /tmp/tmp_bootcamp_lms/

# install requirements
rm -f /tmp/tmp_bootcamp_lms/download_lms.sh

wget -P /tmp/tmp_bootcamp_lms/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp-lms/download-lms.sh

chmod +x /tmp/tmp_bootcamp_lms/download_lms.sh

cd /tmp/tmp_bootcamp_lms/

./download_lms.sh

cd ~

rm /tmp/tmp_bootcamp_lms/download_lms.sh

# lms config
rm -f /tmp/tmp_bootcamp_lms/load_config.sh

wget -P /tmp/tmp_bootcamp_lms/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp-lms/load-config.sh

chmod +x /tmp/tmp_bootcamp_lms/load_config.sh

cd /tmp/tmp_bootcamp_lms/

./load_config.sh

cd ~

rm /tmp/tmp_bootcamp_lms/load_config.sh

# clearing temporary work folder
rm -rf /tmp/tmp_bootcamp_lms/

gnome-session-quit
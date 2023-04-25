#!/bin/bash
set -e

# clearing temporary work folder
rm -rf $HOME/tmp_bootcamp_lms

# create temporary work folder
mkdir $HOME/tmp_bootcamp_lms

# install requirements
rm -f $HOME/tmp_bootcamp_lms/download_lms.sh

wget -P $HOME/tmp_bootcamp_lms/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp_lms/download_lms.sh

chmod u+x $HOME/tmp_bootcamp_lms/download_lms.sh

cd $HOME/tmp_bootcamp_lms

./download_lms.sh

cd $HOME

rm $HOME/tmp_bootcamp_lms/download_lms.sh

# clearing temporary work folder
rm -rf $HOME/tmp_bootcamp_lms

gnome-session-quit
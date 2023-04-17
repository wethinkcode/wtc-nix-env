#!/bin/bash
set -e

# clearing temporary work folder
rm -rf $HOME/tmp_bootcamp

# create temporary work folder
mkdir $HOME/tmp_bootcamp

# install requirements
rm -f $HOME/tmp_bootcamp/requirements.sh

wget -P $HOME/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/requirements.sh

sh $HOME/tmp_bootcamp/requirements.sh

rm $HOME/tmp_bootcamp/requirements.sh

# create nix folder
rm -f $HOME/tmp_bootcamp/nix-folder.sh

wget -P $HOME/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/nix-folder.sh

sh $HOME/tmp_bootcamp/nix-folder.sh

rm $HOME/tmp_bootcamp/nix-folder.sh

# create user
rm -f $HOME/tmp_bootcamp/create-user.sh

wget -P $HOME/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/create-user.sh

sh $HOME/tmp_bootcamp/create-user.sh

rm $HOME/tmp_bootcamp/create-user.sh

# install nix
rm -f $HOME/tmp_bootcamp/nix-install.sh

wget -P $HOME/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/nix-install.sh

sh $HOME/tmp_bootcamp/nix-install.sh

rm $HOME/tmp_bootcamp/nix-install.sh

# install home-manager
rm -f $HOME/tmp_bootcamp/hm-install.sh

wget -P $HOME/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/hm-install.sh

sh $HOME/tmp_bootcamp/hm-install.sh

rm $HOME/tmp_bootcamp/hm-install.sh

# setup enviroment
rm -f $HOME/tmp_bootcamp/nix-env.sh

wget -P $HOME/tmp_bootcamp/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/bootcamp/nix-env.sh

sh $HOME/tmp_bootcamp/nix-env.sh

rm $HOME/tmp_bootcamp/nix-env.sh

# delete temporary work folder
rm -rf $HOME/tmp_bootcamp
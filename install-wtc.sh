#!/bin/bash
set -e

# start at home
cd $HOME

# clearing temporary work folder
rm -rf $HOME/tmp_wtc

# create temporary work folder
mkdir $HOME/tmp_wtc

# install requirements
rm -f $HOME/tmp_wtc/requirements.sh

wget -P $HOME/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/general/requirements.sh

chmod u+x $HOME/tmp_wtc/requirements.sh

cd $HOME/tmp_wtc

./requirements.sh

cd $HOME

rm $HOME/tmp_wtc/requirements.sh

# create nix folder
rm -f $HOME/tmp_wtc/nix-folder.sh

wget -P $HOME/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/general/nix-folder.sh

chmod u+x $HOME/tmp_wtc/nix-folder.sh

cd $HOME/tmp_wtc

./nix-folder.sh

cd $HOME

rm $HOME/tmp_wtc/nix-folder.sh

# create user
rm -f $HOME/tmp_wtc/create-user.sh

wget -P $HOME/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/create-user.sh

chmod u+x $HOME/tmp_wtc/create-user.sh

cd $HOME/tmp_wtc

./create-user.sh

cd $HOME

rm $HOME/tmp_wtc/create-user.sh

# install nix
rm -f $HOME/tmp_wtc/nix-install.sh

wget -P $HOME/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/nix-install.sh

chmod u+x $HOME/tmp_wtc/nix-install.sh

cd $HOME/tmp_wtc

./nix-install.sh

cd $HOME

rm $HOME/tmp_wtc/nix-install.sh

# install home-manager
rm -f $HOME/tmp_wtc/hm-install.sh

wget -P $HOME/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/hm-install.sh

chmod u+x $HOME/tmp_wtc/hm-install.sh

cd $HOME/tmp_wtc

./hm-install.sh

cd $HOME

rm $HOME/tmp_wtc/hm-install.sh

# setup nix enviroment
rm -f $HOME/tmp_wtc/nix-env.sh

wget -P $HOME/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/nix-env.sh

chmod u+x $HOME/tmp_wtc/nix-env.sh

cd $HOME/tmp_wtc

./nix-env.sh

cd $HOME

rm $HOME/tmp_wtc/nix-env.sh

# install homebrew
rm -f $HOME/tmp_wtc/hb-install.sh

wget -P $HOME/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/hb-install.sh

chmod u+x $HOME/tmp_wtc/hb-install.sh

cd $HOME/tmp_wtc

./hb-install.sh

cd $HOME

rm $HOME/tmp_wtc/hb-install.sh

# install sdkman
rm -f $HOME/tmp_wtc/sdk-install.sh

wget -P $HOME/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/sdk-install.sh

chmod u+x $HOME/tmp_wtc/sdk-install.sh

cd $HOME/tmp_wtc

./sdk-install.sh

cd $HOME

rm $HOME/tmp_wtc/sdk-install.sh

# create systemd services
rm -f $HOME/tmp_wtc/systemd-service.sh

wget -P $HOME/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/systemd-service.sh

chmod u+x $HOME/tmp_wtc/systemd-service.sh

cd $HOME/tmp_wtc

./systemd-service.sh

cd $HOME

rm $HOME/tmp_wtc/systemd-service.sh

# delete temporary work folder
rm -rf $HOME/tmp_wtc
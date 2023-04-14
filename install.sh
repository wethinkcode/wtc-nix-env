#!/bin/bash
set -e

cd $HOME

# install requirements
rm -f $HOME/requirements.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/requirements.sh

sh requirements.sh

rm $HOME/requirements.sh

# create nix folder
rm -f $HOME/nix-folder.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/nix-folder.sh

sh nix-folder.sh

rm $HOME/nix-folder.sh

# create user
rm -f $HOME/create-user.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/create-user.sh

sh create-user.sh

rm $HOME/create-user.sh

# install nix
rm -f $HOME/nix-install.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/nix-install.sh

sh nix-install.sh

rm $HOME/nix-install.sh

# install home-manager
rm -f $HOME/hm-install.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/hm-install.sh

sh hm-install.sh

rm $HOME/hm-install.sh

# setup enviroment
rm -f $HOME/nix-env.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/nix-env.sh

sh nix-env.sh

rm $HOME/nix-env.sh
#!/bin/bash
set -e

# install requirements
rm -f $HOME/requirements.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/requirements.sh

./$HOME/requirements.sh

rm $HOME/requirements.sh

# create nix folder
rm -f $HOME/nix-folder.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/nix-folder.sh

./$HOME/nix-folder.sh

rm $HOME/nix-folder.sh

# create user
rm -f $HOME/create-user.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/create-user.sh

./$HOME/create-user.sh

rm $HOME/create-user.sh

# install nix
rm -f $HOME/nix-install.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/nix-install.sh

./$HOME/nix-install.sh

rm $HOME/nix-install.sh

# install home-manager
rm -f $HOME/hm-install.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/hm-install.sh

./$HOME/hm-install.sh

rm $HOME/hm-install.sh

# setup enviroment
rm -f $HOME/nix-env.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/nix-env.sh

./$HOME/nix-env.sh

rm $HOME/nix-env.sh
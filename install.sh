#!/bin/bash
set -e

# install requirements
rm --interactive=never $HOME/requirements.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/requirements.sh

./$HOME/requirements.sh

rm $HOME/requirements.sh

# create nix folder
rm --interactive=never $HOME/nix-folder.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/nix-folder.sh

./$HOME/nix-folder.sh

rm $HOME/nix-folder.sh

# create user
rm --interactive=never $HOME/create-user.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/create-user.sh

./$HOME/create-user.sh

rm $HOME/create-user.sh

# install nix
rm --interactive=never $HOME/nix-install.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/nix-install.sh

./$HOME/nix-install.sh

rm $HOME/nix-install.sh

# install home-manager
rm --interactive=never $HOME/hm-install.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/hm-install.sh

./$HOME/hm-install.sh

rm $HOME/hm-install.sh

# setup enviroment
rm --interactive=never $HOME/nix-env.sh

wget -P $HOME/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/src/nix-env.sh

./$HOME/nix-env.sh

rm $HOME/nix-env.sh
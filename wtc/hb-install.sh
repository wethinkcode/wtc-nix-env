#!/bin/bash
set -e

# adds the home-brew channel
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/admin/.profile

sudo groupadd homebrew

sudo chgrp homebrew /home/linuxbrew/

sudo chmod 770 /home/linuxbrew/

sudo chmod +s /home/linuxbrew/

sudo usermod -a -G homebrew wtc

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/wtc/.profile


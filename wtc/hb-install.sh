#!/bin/bash
set -e

# adds the home-brew channel
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/admin/.profile

sudo chown -R wtc:wtc /home/linuxbrew/

sudo chown -R admin:admin /home/wtc/

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/wtc/.profile

sudo chown -R wtc:wtc /home/wtc/

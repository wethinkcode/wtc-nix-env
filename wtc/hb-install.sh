#!/bin/bash
set -e

# adds the home-brew channel
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/admin/.profile

sudo chmod -R a+rwX /home/linuxbrew/

sudo runuser -l wtc -c 'echo "eval '$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)'" >> /home/wtc/.profile'

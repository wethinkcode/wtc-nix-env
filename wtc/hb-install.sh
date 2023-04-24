#!/bin/bash
set -e

# adds the home-brew channel
sudo runuser -l wtc -c '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
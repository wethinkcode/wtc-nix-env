#!/bin/bash
set -e

sudo wget -P /tmp/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/wtc-nix

sudo mv /tmp/tmp_wtc/wtc-nix /usr/local/bin/wtc-nix

sudo chown wtc:wtc /usr/local/bin/wtc-nix

sudo chmod +x /usr/local/bin/wtc-nix

sudo wget -P /tmp/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/wtc-nix.service

sudo mv /tmp/tmp_wtc/wtc-nix.service /lib/systemd/system/wtc-nix.service

sudo chown root:root /lib/systemd/system/wtc-nix.service

sudo chmod 644 /lib/systemd/system/wtc-nix.service

sudo wget -P /tmp/tmp_wtc/ https://raw.githubusercontent.com/wethinkcode/wtc-nix-env/main/wtc/wtc-nix.service

sudo mv /tmp/tmp_wtc/wtc-nix.service /etc/systemd/wtc-nix.service

sudo chown root:root /etc/systemd/wtc-nix.service

sudo chmod 644 /etc/systemd/wtc-nix.service

sudo systemctl enable wtc-nix.service

sudo systemctl restart wtc-nix.service

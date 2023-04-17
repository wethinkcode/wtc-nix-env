#!/bin/bash
set -e

# creates a standerd user
sudo adduser --disabled-password --gecos "" bootcamp

# give the user a password
echo "wethinkcode2023:wethinkcode2023" | sudo chpasswd
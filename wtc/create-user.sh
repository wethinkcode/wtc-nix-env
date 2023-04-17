#!/bin/bash
set -e

# creates a standerd user
sudo adduser --disabled-password --gecos "" wtc

# give the user a password
echo "wtc:wtc" | sudo chpasswd
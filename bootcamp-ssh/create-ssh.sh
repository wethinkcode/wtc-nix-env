#!/bin/bash
set -e

read -p "Press enter after entering your ssh passphrase: "$'\n' -s passphrase

ssh-keygen -t dsa -N $passphrase -C "bootcamper" -f "id_rsa"
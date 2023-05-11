#!/bin/bash
set -e

read -p "Press enter after entering your ssh passphrase: "$'\n' -s passphrase

ssh-keygen -t rsa -N $passphrase -C "bootcamper" -f "id_rsa"
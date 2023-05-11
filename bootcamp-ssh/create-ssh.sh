#!/bin/bash
set -e

cd /home/bootcamp/tmp_bootcamp_ssh/

read -p "Press enter after entering your ssh passphrase: "$'\n' passphrase

ssh-keygen -t dsa -N $passphrase -C "bootcamper"
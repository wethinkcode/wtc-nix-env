#!/bin/bash
set -e

read -p "Press enter after entering your ssh passphrase: "$'\n' passphrase

ssh-keygen -t dsa -N $passphrase -C "bootcamper"
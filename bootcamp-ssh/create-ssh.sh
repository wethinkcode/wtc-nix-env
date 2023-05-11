#!/bin/bash
set -e

passphrase=bootcamper

mkdir ~/.ssh 

read -p "Press enter after entering your ssh passphrase (default is bootcamper): "$'\n' -s passphrase

ssh-keygen -t rsa -N $passphrase -C bootcamper -f ~/.ssh/lid_rsa
#!/bin/bash
set -e



mkdir ~/.ssh 

read -p "Press enter after entering your ssh passphrase (default is bootcamper): "$'\n' -s passphrase

if [ "$passphrase" != "" ]
then
    ssh-keygen -t rsa -N $passphrase -C bootcamper -f ~/.ssh/lid_rsa
else
    default_passphrase=bootcamper
    ssh-keygen -t rsa -N $default_passphrase -C bootcamper -f ~/.ssh/lid_rsa
fi

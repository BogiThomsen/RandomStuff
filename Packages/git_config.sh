#!/bin/bash
## Set vars ##
EMAIL="email@gmail.com"
AUTHOR="Bogi Thomsen"

## Set name and email ##
git config --global user.name $AUTHOR
git config --global user.email $NAME

## Generate SSH key ##
ssh-keygen -t rsa -b 2048 -f $HOME/.ssh/id_rsa -N ''
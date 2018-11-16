#!/bin/bash
if [ "`id -u`" != "0" ]; then
    echo "Must be run as root"
    exit 1
fi
echo "------------------------------------"
echo "----------Updating mirrors----------"
echo "------------------------------------"
pacman-mirrors -g &&

echo "------------------------------------"
echo "---------Updating packages----------"
echo "------------------------------------"
pacman -Syyuu --noconfirm &&

# Update pacman and install keyring to avoid signature problems
pacman -S manjaro-keyring --noconfirm --needed
pacman -Suu --noconfirm

# Install general stuff
echo "------------------------------------"
echo "--------Installing packages---------"
echo "------------------------------------"
pacman -S --noconfirm --needed \
    terminator conky docker docker-compose \
    git code virtualbox wine yaourt
    
if [ $? != 0 ]; then
    echo ""
    echo "ERROR running pacman -- must check if all packages are available"
    exit 1
fi
               
echo "------------------------------------"
echo "----------Configuring git-----------"
echo "------------------------------------"
## Set vars
EMAIL="email@gmail.com"
AUTHOR="Bogi Thomsen"

## Set name and emails
git config --global user.name $AUTHOR
git config --global user.email $NAME

ssh-keygen -t rsa -b 4096 -f $HOME/.ssh/id_rsa

echo "------------------------------------"
echo "-------Updating AUR packages--------"
echo "------------------------------------"
yaourt -Syu --noconfirm

echo "------------------------------------"
echo "------Installing AUR packages-------"
echo "------------------------------------"
yaourt -S --noconfirm --needed \
  spotify sublime-text-dev slack-desktop discord
  
if [ $? != 0 ]; then
  echo ""
  echo "ERROR running yaourt -- must check if all packages are available"
  exit 1
fi

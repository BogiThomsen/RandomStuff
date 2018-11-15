#!/bin/bash
# Update pacman and install keyring to avoid signature problems
sudo pacman -Syu
sudo pacman -S manjaro-keyring
sudo pacman -Suu

# Install general stuff
echo "installing general packages"
sudo pacman -S terminator firefox
sudo pacman -S vlc 

# Install dev stuff
echo "installing dev packages"
sudo pacman -S docker docker-compose
sudo pacman -S git code

# Install Yay
echo "Installing yay"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

# Installing general yay packages
echo "Installing editors"
yay -S sublime-text-dev
echo "Installing messaging apps"
yay -S discord
yay -S slack-desktop

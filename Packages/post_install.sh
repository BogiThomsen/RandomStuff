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
echo "Installing yaourt"
sudo pacman -S yaourt
yaourt -Syu

# Installing general yay packages
yaourt -S sublime-text-dev
yaourt -S discord
yaourt -S slack-desktop

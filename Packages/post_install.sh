#!/bin/bash
# Update pacman and install keyring to avoid signature problems
sudo pacman -Syu
sudo pacman -S manjaro-keyring
sudo pacman -Suu

# install general stuff
sudo pacman -S vlc git python3-pip docker docker-compose


# Install Yay
# git clone https://aur.archlinux.org/yay.git
# cd yay
# makepkg -si

# Browsers
# yay -Syu
# yay -S google-chrome
# yay -S firefox-beta-bin

# Editors
# echo "Installing Sublime and VS Code"
# yay -S sublime-text-dev
# yay -S visual-studio-code

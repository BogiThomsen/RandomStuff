#!/bin/bash
# Update pacman and install keyring to avoid signature problems
sudo pacman -Syu
sudo pacman -S manjaro-keyring
sudo pacman -Suu

# Base develop packages
# sudo pacman -S git
# sudo pacman -S binutils make gcc fakeroot --noconfirm --needed

# Install


# Codecs and other media stuff
# sudo pacman -S

# Browsers
# yaourt -Syu
# yaourt -S google-chrome
# yaourt -S firefox-beta-bin

# Editors
# echo "Installing Sublime and VS Code"
# yaourt -S sublime-text-dev
# yaourt -S visual-studio-code
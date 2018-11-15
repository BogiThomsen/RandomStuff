#!/bin/bash

################################
######### VARIABLES ############
################################
EMAIL="email@provider.com"
AUTHOR="Pedro Tanaka"
################################

# Update pacman and install keyring to avoid signature problems
sudo pacman -Syu
sudo pacman -S manjaro-keyring
sudo pacman -Suu

# Base develop packages
sudo pacman -S git zsh vim
sudo pacman -S binutils make gcc fakeroot --noconfirm --needed

# Install


# Codecs and other media stuff
sudo pacman -S exfat-utils fuse-exfat a52dec faac faad2 flac jasper \
  lame libdca libdv gst-libav libmad libmpeg2 libtheora libvorbis \
  libxv wavpack x264 xvidcore gstreamer0.10-plugins flashplugin \
  libdvdcss libdvdread libdvdnav gecko-mediaplayer dvd+rw-tools \
  dvdauthor dvgrab

# Browsers
# yaourt -Syu
# yaourt -S google-chrome
# yaourt -S firefox-beta-bin

# Editors
# echo "Installing Sublime and VS Code"
# yaourt -S sublime-text-dev
# yaourt -S visual-studio-code
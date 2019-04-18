#!/bin/sh
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator

sudo apt-get install gnome-tweak-tool

sudo apt-get install fcitx fcitx-mozc
im-config -n fcitx

sudo apt-get install chrome-gnome-shell
sudo apt-get install git

git clone https://github.com/ylafaro0310/dotfiles.git
sh ~/dotfiles/setup.sh

sudo apt-get install zsh
chsh

#!/bin/sh
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install \
     zsh git emacs terminator \
     fcitx fcitx-mozc \
     gnome-tweak-tool \
     chrome-gnome-shell
     
im-config -n fcitx

git clone https://github.com/ylafaro0310/dotfiles.git
sh ~/dotfiles/setup.sh

chsh -s /usr/bin/zsh

# ---------------------------------------
# Install docker and docker-compose
# ---------------------------------------
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update 
sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# ---------------------------------------
# Install Node.js and npm
# ---------------------------------------
sudo apt-get install nodejs npm

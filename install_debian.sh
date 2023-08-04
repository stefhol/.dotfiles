#!/bin/bash

#nvim stuff
sudo apt-get install clang nodejs git ssh stow neofetch unzip -y
cd ~/.dotfiles
git submodule update --recursive --init
cd ~

git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.antidote
chmod +x "~/.antidote/antidote.zsh"

curl -L https://github.com/neovim/neovim/releases/latest/download/nvim.appimage -o ~/nvim.appimage
chmod u+x ~/nvim.appimage

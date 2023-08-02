#!/bin/bash

#nvim stuff
sudo apt-get install clang nodejs git ssh stow neofetch -y

git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.antidote
chmod +x "~/.antidote/antidote.zsh"
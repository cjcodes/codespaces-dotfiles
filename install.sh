#!/bin/bash

PACKAGES=(
  jq
  wget
  fd-find
  ripgrep
  neovim
  xclip
)

sudo apt update
sudo apt install -y ${PACKAGES[@]}

if [ ! -d ~/.config/nvim ]; then
  git submodule update --init
  ln -s $(pwd)/setup-scripts/nvim ~/.config/nvim
fi

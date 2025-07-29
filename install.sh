#!/bin/bash

PACKAGES=(
  jq
  wget
  fd
  ripgrep
  neovim
  xclip
)

sudo apt install ${PACKAGES[@]}

if [ ! -d ~/.config/nvim ]; then
  git submodule update --init
  ln -s $(pwd)/setup-scripts/nvim ~/.config/nvim
fi

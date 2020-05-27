#!/bin/sh

if ! command -v "zsh"; then
   echo "Installing ZSH..."
   sudo apt install zsh
   chsh -s $(which zsh)
else
   echo "ZSH found, not installing..."
fi

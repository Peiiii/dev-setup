#!/bin/bash
set -e

echo "[oh-my-zsh] Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ""
else
  echo "Oh My Zsh is already installed"
fi 
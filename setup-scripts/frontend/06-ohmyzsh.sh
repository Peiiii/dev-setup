#!/bin/bash
set -e

echo "[oh-my-zsh] 安装 Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ""
else
  echo "Oh My Zsh 已安装"
fi 
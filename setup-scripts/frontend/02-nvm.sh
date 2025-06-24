#!/bin/bash
set -e

echo "[nvm] 安装 nvm..."
if [ ! -d "$HOME/.nvm" ]; then
  brew install nvm
  mkdir -p ~/.nvm
  echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
  echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"' >> ~/.zshrc
  source ~/.zshrc
else
  echo "nvm 已安装"
fi 
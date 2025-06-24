#!/bin/bash
set -e

echo "[nvm] Installing nvm..."
if [ ! -d "$HOME/.nvm" ]; then
  brew install nvm
  mkdir -p ~/.nvm
  echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
  echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"' >> ~/.zshrc
  source ~/.zshrc
else
  echo "nvm is already installed"
fi 
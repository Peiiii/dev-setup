#!/bin/bash
set -e

# Automatically source Homebrew shellenv to ensure brew is available
if [ -f /opt/homebrew/bin/brew ]; then
  eval "$('/opt/homebrew/bin/brew' shellenv)"
fi

DIR=$(cd "$(dirname "$0")" && pwd)

for script in 01-brew.sh 02-nvm.sh 03-node.sh 04-yarn-pnpm.sh 05-vscode.sh 06-ohmyzsh.sh 07-zsh-plugins.sh; do
  bash "$DIR/$script"
done

echo "===== Frontend development environment setup complete! Please restart your terminal or run 'source ~/.zshrc' =====" 
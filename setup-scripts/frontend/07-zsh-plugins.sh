#!/bin/bash
set -e

echo "[zsh-plugins] Installing zsh-autosuggestions and zsh-syntax-highlighting..."
brew install zsh-autosuggestions zsh-syntax-highlighting

echo "[zsh-plugins] Adding plugin configuration to ~/.zshrc..."
grep -qxF "source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ~/.zshrc || echo "source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
grep -qxF "source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ~/.zshrc || echo "source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc 
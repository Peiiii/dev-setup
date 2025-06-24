#!/bin/bash
set -e

echo "[zsh-plugins] 安装 zsh-autosuggestions 和 zsh-syntax-highlighting..."
brew install zsh-autosuggestions zsh-syntax-highlighting

echo "[zsh-plugins] 在~/.zshrc中添加插件配置..."
grep -qxF "source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ~/.zshrc || echo "source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
grep -qxF "source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ~/.zshrc || echo "source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc 
#!/bin/bash

# 前端开发环境自动化安装脚本
# 仅适用于macOS

set -e

echo "===== 开始前端开发环境自动化安装 ====="

# 安装 Homebrew
if ! command -v brew &> /dev/null; then
  echo "[1/6] 安装 Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "[1/6] Homebrew 已安装"
fi

# 安装 nvm 和 Node.js
if ! command -v nvm &> /dev/null; then
  echo "[2/6] 安装 nvm..."
  brew install nvm
  mkdir -p ~/.nvm
  echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
  echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"' >> ~/.zshrc
  source ~/.zshrc
fi

echo "[3/6] 安装 Node.js LTS..."
nvm install --lts

# 安装 VS Code
if ! command -v code &> /dev/null; then
  echo "[4/6] 安装 Visual Studio Code..."
  brew install --cask visual-studio-code
else
  echo "[4/6] VS Code 已安装"
fi

# 安装 Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "[5/6] 安装 Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "[5/6] Oh My Zsh 已安装"
fi

# 安装常用工具
brew install git yarn pnpm

# 推荐插件和主题
brew install zsh-autosuggestions zsh-syntax-highlighting

echo "===== 安装完成！请重启终端以生效 =====" 
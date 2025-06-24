#!/bin/bash
set -e

echo "[brew] 安装 Homebrew..."
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew 已安装"
fi

echo "[brew] 更新 Homebrew..."
brew update

# 自动写入Homebrew到PATH
if ! echo $PATH | grep -q "/opt/homebrew/bin"; then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
  echo "[brew] 已自动将Homebrew加入PATH"
fi 
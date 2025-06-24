#!/bin/bash
set -e

# 自动source Homebrew shellenv，确保brew命令可用
if [ -f /opt/homebrew/bin/brew ]; then
  eval "$('/opt/homebrew/bin/brew' shellenv)"
fi

DIR=$(cd "$(dirname "$0")" && pwd)

for script in 01-brew.sh 02-nvm.sh 03-node.sh 04-yarn-pnpm.sh 05-vscode.sh 06-ohmyzsh.sh 07-zsh-plugins.sh; do
  bash "$DIR/$script"
done

echo "===== 前端开发环境全部安装完成！请重启终端或执行 'source ~/.zshrc' =====" 
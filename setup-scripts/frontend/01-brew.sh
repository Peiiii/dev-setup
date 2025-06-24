#!/bin/bash
set -e

echo "[brew] Installing Homebrew..."
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed"
fi

echo "[brew] Updating Homebrew..."
brew update

# Automatically add Homebrew to PATH
if ! echo $PATH | grep -q "/opt/homebrew/bin"; then
  echo 'eval "$('/opt/homebrew/bin/brew' shellenv)"' >> ~/.zprofile
  eval "$('/opt/homebrew/bin/brew' shellenv)"
  echo "[brew] Homebrew has been added to PATH automatically"
fi 
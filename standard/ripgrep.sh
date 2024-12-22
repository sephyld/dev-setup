#! /bin/bash

# check if already installed
if which rg >/dev/null; then
  echo "ripgrep already installed. Showing version"
  echo "$(rg --version)"
  return
fi

echo "ripgrep not installed. Installing Git..."

sudo apt-get update
sudo apt-get install -y ripgrep

echo "$(rg --version)"

echo "ripgrep installed successfully."

#! /bin/bash

# check if already installed
if which fzf >/dev/null; then
  echo "Fuzzyfind already installed. Showing version"
  echo "$(fzf --version)"
  return
fi

echo "Fuzzyfind not installed. Installing Git..."

sudo apt-get update
sudo apt-get install -y fzf

echo "$(fzf --version)"

echo "Fuzzyfind installed successfully."

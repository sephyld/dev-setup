#! /bin/bash

# check if already installed
if which fdfind >/dev/null; then
  echo "fdfind already installed. Showing version"
  echo "$(fdfind --version)"
  return
fi

echo "fdfind not installed. Installing Git..."

sudo apt-get update
sudo apt-get install -y fd-find

echo "$(fdfind --version)"

if which fd >/dev/null; then
  ln -s $(which fdfind) ~/.local/bin/fd
fi

echo "fdfind installed successfully."

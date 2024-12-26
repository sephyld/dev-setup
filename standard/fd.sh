#!/usr/bin/env bash

if which fd >/dev/null; then
  ln -s $(which fdfind) ~/.local/bin/fd
fi

echo "fdfind linked successfully."

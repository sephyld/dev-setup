#!/usr/bin/env bash

if [[ $SELECTED_GUM_LANGUAGES != *"Ruby"* ]]; then
  return
fi

echo "ruby = \"3.3\"" >>~/.config/mise/config.toml

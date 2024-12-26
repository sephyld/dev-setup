#!/usr/bin/env bash

if [[ $SELECTED_GUM_LANGUAGES != *"Node.js"* ]]; then
  return
fi

echo "node = \"22.9\"" >>~/.config/mise/config.toml

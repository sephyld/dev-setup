#!/usr/bin/env bash

if [[ $SELECTED_GUM_LANGUAGES != *"Python"* ]]; then
  return
fi

echo "python = \"3.11\"" >>~/.config/mise/config.toml

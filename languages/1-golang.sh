#!/usr/bin/env bash

if [[ $SELECTED_GUM_LANGUAGES != *"Go"* ]]; then
  return
fi

echo "go = \"1.23.1\"" >>~/.config/mise/config.toml

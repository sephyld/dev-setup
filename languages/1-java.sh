#!/usr/bin/env bash

if [[ $SELECTED_GUM_LANGUAGES != *"Java"* ]]; then
  return
fi

echo "java = \"openjdk-23\"" >>~/.config/mise/config.toml

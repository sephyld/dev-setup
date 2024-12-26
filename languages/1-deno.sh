#!/usr/bin/env bash

if [[ $SELECTED_GUM_LANGUAGES != *"Deno"* ]]; then
  return
fi

echo "deno = \"2.0\"" >>~/.config/mise/config.toml

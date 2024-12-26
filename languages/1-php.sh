#!/usr/bin/env bash

if [[ $SELECTED_GUM_LANGUAGES != *"PHP"* ]]; then
  return
fi

echo "php = \"8.3\"" >>~/.config/mise/config.toml

sudo apt-get update && sudo apt-get install -y autoconf \
  bison \
  build-essential \
  curl \
  gettext \
  libcurl4-openssl-dev \
  libedit-dev \
  libicu-dev \
  libjpeg-dev \
  libmysqlclient-dev \
  libonig-dev \
  libpng-dev \
  libpq-dev \
  libreadline-dev \
  libsqlite3-dev \
  libssl-dev \
  libxml2-dev \
  libzip-dev \
  openssl \
  pkg-config \
  re2c \
  zlib1g-dev \
  libgd-dev

#!/bin/bash

log_info "Installing/Updating autojump..."

dir=$(mktemp -d /tmp/profile.d.XXXXXXXXXX) || exit 1

cd "$dir" &&
  git clone --quiet https://github.com/wting/autojump . &&
  SHELL=bash ./install.py -d ~/.autojump &&
  log_info "You can safely ignore any instructions printed above"

code=$?

rm -rf "$dir" || exit 1

if [ "$code" != 0 ]; then
  exit 1
fi

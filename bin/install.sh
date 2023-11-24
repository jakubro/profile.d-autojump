#!/bin/bash
set -eo pipefail

log_info "Installing/Updating autojump..."

__J_DIR__=$(mktemp -d /tmp/profile.d.XXXXXXXXXX)

(

  cd "$__J_DIR__"
  git clone https://github.com/wting/autojump .
  SHELL=bash ./install.py -d ~/.autojump
  command rm -rf "$__J_DIR__"

) || (

  command rm -rf "$__J_DIR__"
  exit 1

)

log_info "You can safely ignore any instructions printed above"

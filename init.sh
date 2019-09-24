#!/bin/bash

TARGET_DIR="${HOME}/dotfiles"
REMOTE_URL="https://github.com/nakario/dotfiles.git"

if [[ ! -x $(command -v git) ]]; then
  echo "git not found"
  exit
fi

if [[ ! -d "${TARGET_DIR}" ]]; then
  git clone "${REMOTE_URL}" "${TARGET_DIR}"
fi
cd "${TARGET_DIR}"
make all

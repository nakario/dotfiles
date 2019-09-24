#!/bin/bash

## brew

if [[ ! -x $(command -v brew) ]]; then
  echo "brew not found"
  exit
fi


## zplug

if [[ ! -x $(command -v zsh) ]]; then
  brew install zsh
fi

if [[ ! -e "${HOME}/.zplug" ]]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi


## go

if [[ ! -x $(command -v go) ]]; then
  brew install go
fi


## node

if [[ ! -x $(command -v nodebrew) ]]; then
  brew install nodebrew
fi

if [[ ! -x $(command -v node) ]]; then
  nodebrew install-binary stable
  nodebrew use stable
fi


## python

if [[ ! -e "${HOME}/.pyenv" ]]; then
  brew install pyenv
fi


## ruby

if [[ ! -e "${HOME}/.rbenv" ]]; then
  brew install rbenv
  rbenv init
fi

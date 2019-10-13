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
  git clone https://github.com/zplug/zplug "${HOME}/.zplug"
fi


## tmux

if [[ ! -e "${HOME}/.tmux" ]]; then
  git clone https://github.com/tmux-plugins/tpm "${HOME}/.tmux/plugins/tpm"
fi


## emacs

if [[ ! -e "${HOME}/.emacs.history" ]]; then
  mkdir -p "${HOME}/.emacs.history"
fi


## go

if [[ ! -x $(command -v go) ]]; then
  brew install go
fi


## node

if [[ ! -x $(command -v nodebrew) ]]; then
  brew install nodebrew
  $HOME/.linuxbrew/opt/nodebrew/bin/nodebrew setup_dirs
  export PATH=$HOME/.nodebrew/current/bin:$PATH
fi

if [[ ! -x $(command -v node) ]]; then
  nodebrew install-binary stable
  nodebrew use stable
fi


## python

if [[ ! -e "${HOME}/.pyenv" ]]; then
  brew install pyenv
  eval "$(pyenv init -)"
fi


## ruby

if [[ ! -e "${HOME}/.rbenv" ]]; then
  brew install rbenv
  eval "$(rbenv init -)"
fi

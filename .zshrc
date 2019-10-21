# .zshrc

## zsh

### pure: Pretty, minimal and fast ZSH prompt

fpath+=("${HOME}/.zsh.d/repos/pure")
autoload -U promptinit; promptinit
prompt pure

### zsh-autosuggestions: Fish-like autosuggestions for zsh

source "${HOME}/.zsh.d/repos/zsh-autosuggestions/zsh-autosuggestions.zsh"

### history

export HISTFILE="${HOME}/.zsh_history"
export HISTSIZE=100000
export SAVEHIST=100000
setopt extended_history

### alias

alias ls="ls -G --color=auto"
alias la="ls -a"
alias ll="ls -lh"

### others

setopt brace_ccl # enable individual characters expansion: a{123x-z} -> a1 a2 a3 ax ay az
setopt no_beep


## direnv

eval "$(direnv hook zsh)"


## go

export GOPATH="${HOME}/go"
export PATH="${GOPATH}/bin:${PATH}"


## node

export PATH="${HOME}/.nodebrew/current/bin:${PATH}"


## python

export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:${PATH}"
eval "$(pyenv init -)"
export PIPENV_VENV_IN_PROJECT=true


## ruby

eval "$(rbenv init -)"


## OS-specific settings

case "${OSTYPE}" in
  darwin*)
    export PATH="/usr/local/opt/openssl/bin:${PATH}"
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:${PATH}"
    ;;
esac


## machine-specific settings

if [[ -e "${HOME}/.local.zshrc" ]]; then
  source "${HOME}/.local.zshrc"
fi


## others

export PATH="${HOME}/.local/bin:${PATH}" # various commands installed locally


## zsh-syntax-highlighting: Fish shell like syntax highlighting for Zsh

# It must be sourced after all custom ZLE widgets have been created
source "${HOME}/.zsh.d/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

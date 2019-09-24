# .zshrc

## zplug

source ~/.zplug/init.zsh

### pure: Pretty, minimal and fast ZSH prompt

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

### zsh-syntax-highlighting: Fish shell like syntax highlighting for Zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2

### zsh-autosuggestions: Fish-like autosuggestions for zsh

zplug "zsh-users/zsh-autosuggestions"

### zsh-comletions: Additional completion definitions for Zsh

zplug "zsh-users/zsh-completions"

### zsh-256color: ZSH plugin to enhance the terminal environment with 256 colors

zplug "chrissicool/zsh-256color"

### Install plugins if there are plugins that have not been installed

# if ! zplug check --verbose; then
#   printf "Install? [y/N]: "
#   if read -q; then
#     echo; zplug install
#   fi
# fi

### Load the above plugins

zplug load


## zsh

### history

HISTFILE="${HOME}/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt extended_history

### alias

alias ls="ls -G"
alias la="ls -a"
alias ll="ls -lh"

### others

setopt brace_ccl # enable individual characters expansion: a{123x-z} -> a1 a2 a3 ax ay az

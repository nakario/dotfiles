# .zshrc

## zplug

source ~/.zplug/init.zsh

### pure: Pretty, minimal and fast ZSH prompt

zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

### zsh-syntax-highlighting: Fish shell like syntax highlighting for Zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2

### load the above plugins

zplug load

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

### load the above plugins

zplug load

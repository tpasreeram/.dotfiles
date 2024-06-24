setopt autocd
unsetopt beep

alias ls='ls --color=auto -a'

autoload -U compinit; compinit

eval "$(starship init zsh)"

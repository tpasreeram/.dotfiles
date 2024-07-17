# History
HISTFILE="$ZDOTDIR/.zsh_history"
HISTSIZE=1000
SAVEHIST=1000
HISTDUP=erase

setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space

setopt auto_cd
unsetopt beep

# Starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# Autocompletion
autoload -U compinit && compinit

# Aliases
alias ls="eza -a"
alias la='eza -lah'
alias cat="bat"
alias du="dust"
alias cd="z"
# alias ls='ls --color=auto -a'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias ln='ln -v'
alias grep='rg -uuu'
alias cl="clear"
alias df="df -h"
alias tree="eza -aT --color=always --icons"
alias gtree="eza -aT --color=always --icons --git-ignore"
alias glog="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short"
alias nv='nvim'

### -- EOF -- ###

eval "$(zoxide init zsh)"

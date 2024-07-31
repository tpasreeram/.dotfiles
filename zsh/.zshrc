# History
HISTFILE="$HOME/.zsh_history"
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
if [ -f ~/.aliases ]; then
. ~/.aliases
fi

### -- EOF -- ###

eval "$(zoxide init zsh)"

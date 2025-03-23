#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias sudo='sudo'
alias ls='exa --color=auto -a'
alias vim='nvim'
alias nv='nvim'
alias nano='nvim'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

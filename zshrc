# Personal zsh configuration file.
# Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

cdpath=($cdpath ~ ~/proj)
typeset -U path cdpath fpath manpath

setopt histignorealldups

PROMPT='%% '
RPROMPT=''

alias ls='ls --color -F'
alias ll='ls -lh'
alias la='ls -A'
alias df='df -h'

EDITOR=vim
VISUAL=$EDITOR
export EDITOR VISUAL

autoload -U compinit
compinit

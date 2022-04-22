#
# ~/.bashrc
#

export PS1="\[$(tput bold)\][\[$(tput sgr0)\]\[\033[38;5;244m\]\u\[$(tput sgr0)\]@\h\[$(tput sgr0)\]  \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;244m\]\W\[$(tput sgr0)\]]\[$(tput sgr0)\]\[$(tput bold)\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

############################ VARIABLES ####################################

export MONITOR=eDP
export POLYBAR=$HOME/.config/polybar/themes

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH

export NVIM_DIR=$HOME/.config/nvim
export VIM_DIR=$HOME/.vim
export EDITOR=/bin/vim

export TERMINAL=st

export ZSH=$HOME/.oh-my-zsh

export STARSHIP_CONFIG=$HOME/.config/starship.toml
export STARSHIP_CACHE=$HOME/.starship/cache

export FZF_DEFAULT_COMMAND="fd --type f --hidden"
export FZF_DEFAULT_OPTS="--height 50% --cycle --layout=reverse --border"

# export FZF_DEFAULT_OPTS="--height 70% --cycle --layout=reverse --border --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

#########################################################################



############################ ALIASES ####################################

alias cl='clear'
alias e='exit'

alias ..='cd ..'
alias dev='cd ~/doc/Dev'

alias ls="ls --color"
alias ll="ls -l --color"
alias le='exa -l --icons -g -h -@ --git --color-scale'

alias sp='sudo pacman'
alias s='sudo'

alias mt='sudo mount'
alias umt='sudo umount'

alias nv='nvim'
alias vi='vim'

alias rg='ranger .'
alias srg='sudo ranger .'

alias ufw='sudo ufw'
alias macchanger='sudo macchanger'

alias rmm='shred -v -u -z -n'
alias srmm='sudo shred -v -u -z -n'

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#########################################################################

source /usr/share/bash-completion/completions/git

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

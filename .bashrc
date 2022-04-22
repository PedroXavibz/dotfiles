#
# ~/.bashrc
#

source /usr/share/bash-complete-alias/complete_alias

export PS1="\[$(tput bold)\][\[$(tput sgr0)\]\[\033[38;5;244m\]\u\[$(tput sgr0)\]@\h\[$(tput sgr0)\]  \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;244m\]\W\[$(tput sgr0)\]]\[$(tput sgr0)\]\[$(tput bold)\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

export PS1="\[$(tput bold)\][\[$(tput sgr0)\]\[\033[38;5;242m\]\u\[$(tput sgr0)\]@\h\[$(tput sgr0)\]  \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;242m\]\W\[$(tput sgr0)\]]\\$\[$(tput sgr0)\]\[\033[38;5;36m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\] \[$(tput sgr0)\]"

############################ VARIABLES ####################################

export MONITOR=eDP
export POLYBAR=$HOME/.config/polybar/themes

export PATH=$HOME/.local/bin/:$HOME/.cargo/bin/:$PATH

export NVIM_DIR=$HOME/.config/nvim
export VIM_DIR=$HOME/.vim
export EDITOR=/usr/local/bin/vim

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
alias dev='cd ~/dev'
alias cf='cd ~/.config'

alias ls="ls --color"
alias ll="ls -l --color"
alias le='exa -l --icons -g -h -@ --git --color-scale'

alias sp='sudo pacman'
complete -F _complete_alias "${!BASH_ALIASES[@]}"
alias s='sudo'

alias mt='sudo mount'
alias umt='sudo umount'

alias nv='nvim'
alias vi='vim'

alias rg='ranger .'
alias srg='sudo ranger .'

alias ufw='sudo ufw'
complete -F _complete_alias "${!BASH_ALIASES[@]}"
alias macchanger='sudo macchanger'
complete -F _complete_alias "${!BASH_ALIASES[@]}"

alias rmm='shred -v -u -z -n'
alias srmm='sudo shred -v -u -z -n'

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
complete -F _complete_alias "${!BASH_ALIASES[@]}"

alias dd="bs=16384K status=progress"
complete -F _complete_alias "${!BASH_ALIASES[@]}"

alias tm='transmission-remote'

#-_-_-_-_--_-_-_-_- [GIT] -_-_-_-_--_-_-_-_-
alias g-init='git init'
alias g-add='git add'
alias g-commit='git commit -m'
alias g-status='git status'
alias g-log='git log'
alias g-show='git show'
alias g-add-repo='git remote add origin'
alias g-show-repo='git remote -v'
alias g-push='git push'
alias g-clone='git clone'
alias g-pull='git pull'
alias g-restore='git restore'

alias bran-crate='git branch'
alias bran-change='git checkout'
alias bran-merge='git merge'
alias bran-remove='git branch -D'
alias bran-show='git branch -a'
alias bran-show-remote='git branch -r'

#########################################################################

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

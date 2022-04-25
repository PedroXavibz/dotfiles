#
# ~/.bashrc
#

source /usr/share/bash-complete-alias/complete_alias

export PS1="\[$(tput bold)\][\[$(tput sgr0)\]\[\033[38;5;242m\]\u\[$(tput sgr0)\]@\h\[$(tput sgr0)\]  \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;242m\]\W\[$(tput sgr0)\]]\\$\[$(tput sgr0)\]\[\033[38;5;36m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\] \[$(tput sgr0)\]"

############################ ALIASES ####################################

alias cl='clear'
alias e='exit'

alias ..='cd ..'
alias dev='cd ~/dev'
alias cf='cd ~/.config'

alias ls="ls --color"
alias la="ls -A"

alias ll="ls -l"
alias lla="ll -A"

alias le='exa -l --icons -g -h -@ --git --color-scale'
alias lea='le -a'

alias sp='sudo pacman'
alias s='sudo'

alias mt='sudo mount'
alias umt='sudo umount'

alias nv='nvim'
alias vi='vim'

alias rg='ranger .'
alias srg='sudo ranger .'

alias ufw='sudo ufw'
complete -F _complete_alias "${!BASH_ALIASES[@]}"

alias mac='sudo macchanger'
complete -F _complete_alias "${!BASH_ALIASES[@]}"

alias rmm='shred -v -u -z -n'
alias srmm='sudo shred -v -u -z -n'

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
complete -F _complete_alias "${!BASH_ALIASES[@]}"

alias dd="bs=16384K status=progress"
complete -F _complete_alias "${!BASH_ALIASES[@]}"

alias tm='transmission-remote'
complete -F _complete_alias "${!BASH_ALIASES[@]}"

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

#-_-_-_-_--_-_-_-_- [YT-DLP] -_-_-_-_--_-_-_-_-
alias yt-mp3='yt-dlp -f "ba" -x --audio-format mp3 --embed-thumbnail'

#########################################################################

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

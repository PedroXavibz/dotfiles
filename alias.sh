alias cl='clear'
alias e='exit'

alias ..='cd ..'
alias cf='cd ~/.config'
alias etc='cd /etc'

alias ls="ls --color"
alias la="ls -A"
alias le="exa -l --header --icons --git"

alias ll="ls -l"
alias lla="ll -A"

alias tree='tree -C'
alias bat='batcat'

alias s='sudo'

alias nv='nvim'

alias rg='ranger'
alias srg='sudo ranger .'

alias rmm='shred -v -u -z -n'
alias srmm='sudo shred -v -u -z -n'

#-_-_-_-_--_-_-_-_- [CODE DEVELOPMENT] -_-_-_-_--_-_-_-_-
alias yarn-create='yarn create react-app'
alias yarn-lint='yarn add eslint --dev && yarn create @eslint/config'

alias gdb='gdb -q'

#-_-_-_-_--_-_-_-_- [GIT] -_-_-_-_--_-_-_-_-
alias g='git'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gca='git commit --amend'
alias gcane='git commit --amend --no-edit'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gpu='git push -u origin HEAD'
alias gpl='git pull'
alias gpr='git pull --rebase'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gfp='git fetch --prune'
alias gl='git log'
alias glo='git log --oneline --graph --decorate'
alias glog='git log --oneline --graph --decorate --all'
alias gst='git stash'
alias gstp='git stash pop'
alias gstl='git stash list'
alias gr='git remote'
alias grv='git remote -v'
alias grb='git rebase'
alias grbi='git rebase -i'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'
alias gm='git merge'
alias gcl='git clone'
alias gclean='git clean -fd'
alias grs='git restore'
alias grss='git restore --staged'
alias grt='cd "$(git rev-parse --show-toplevel)"'  # vai para a raiz do repo

# ALIASES AVANÇADOS
alias gsync='git pull --rebase && git push'
alias gup='git pull --rebase && git fetch --prune'
alias gundo='git reset HEAD~1 --mixed'
alias gunstage='git restore --staged'
alias gwho='git blame -w -M -C'
alias gtags='git tag --sort=-creatordate'
alias gchanges='git diff --name-only HEAD'
alias gcleanup='git branch --merged | grep -v "\\*\\|main\\|master\\|develop" | xargs -n 1 git branch -d'

# FUNÇÕES ÚTEIS
gac() {
    # git add + commit
    git add --all && git commit -m "$1"
}

gacp() {
    # git add + commit + push
    git add --all && git commit -m "$1" && git push
}

gnew() {
    # cria novo branch a partir de origin/main
    git fetch origin && git checkout -b "$1" origin/main
}

gprune() {
    # limpa branches remotos deletados
    git fetch --prune && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -d
}

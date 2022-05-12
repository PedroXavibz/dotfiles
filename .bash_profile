#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# DEV
export _JAVA_AWT_WM_NONREPARENTING=1
export PYTHONPATH=/usr/lib/python3.10/site-packages/
export PYENV_ROOT=$HOME/.pyenv

# GENERAL
export MY_SCRIPTS=$HOME/scripts/
export LOCAL_BIN=$HOME/.local/bin/
export DWBARS=$HOME/scripts/dwmbars
export CARGO_BIN=$HOME/.cargo/bin/
export GO_BIN=$HOME/go/bin/

export PATH="$LOCAL_BIN:$MY_SCRIPTS:$GO_BIN:$CARGO_BIN:$PYENV_ROOT/bin:$DWBARS:$PATH"

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache

export TERMINAL=st
export POLYBAR=$HOME/.config/polybar/themes

# CODE EDITOR
export NVIM_DIR=$HOME/.config/nvim
export VIM_DIR=$HOME/.vim
export EDITOR=/usr/bin/nvim

# SHELL
export ZSH=$HOME/.oh-my-zsh
export STARSHIP_CONFIG=$HOME/.config/starship.toml
export STARSHIP_CACHE=$HOME/.starship/cache

# FZF
export FZF_DEFAULT_COMMAND="fd --type f --hidden"
export FZF_DEFAULT_OPTS="--height 50% --cycle --layout=reverse --border"
# export FZF_DEFAULT_OPTS="--height 70% --cycle --layout=reverse --border --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx -- -keeptty >~/.xorg.log 2>&1
fi

# MONITOR
if [ $(xrandr --output HDMI-A-0 --mode 1024x768 --pos 0x0 --rotate normal --output eDP --primary --mode 1366x768 --pos 1311x0 --rotate normal) ]
  then
    exit 0
fi

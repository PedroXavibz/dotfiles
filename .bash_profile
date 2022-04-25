#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx -- -keeptty >~/.xorg.log 2>&1
fi

export POLYBAR=$HOME/.config/polybar/themes

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

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

xrandr --output HDMI-A-0 --mode 1024x768 --pos 0x0 --rotate normal --output eDP --primary --mode 1366x768 --pos 1311x0 --rotate normal


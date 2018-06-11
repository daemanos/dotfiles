# Special directories
export DOTFILES="$HOME/dotfiles"
export ECLIPSE_HOME="/usr/share/eclipse"
export TRASH="$HOME/.trash"
export BIN="$HOME/.local/bin"

# XDG base directories
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"
export XDG_CACHE_HOME="$HOME/.cache"

# Panel files
export PANEL_HOME=$XDG_CONFIG_HOME/panel
export PANEL_CONFIG=$PANEL_HOME/config

# Paths
export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"
export GEM_HOME=$HOME/.gem
export PATH="$BIN:$PATH:$GEM_HOME/bin"
export PYTHONPATH="/home/daman/.local/lib/python:/home/daman/.local/lib/python3.6/site-packages"

# Application defaults
export EDITOR="nvim"
export VISUAL="vim"
export PAGER="less"
export GIT_EDITOR="$EDITOR"
export GEM_EDITOR="$EDITOR"
export BROWSER="firefox"
export FILE_MANAGER="ranger"
export PDF_VIEWER="zathura"

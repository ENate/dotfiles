export ZSH="${HOME}/.oh-my-zsh"

# Plugins.
plugins=(git)

source $ZSH/oh-my-zsh.sh

ZSH_THEME="spaceship"
export SPACESHIP_DIR_TRUNC=0

# Set colors for LS_COLORS.
eval `dircolors ~/.dircolors`
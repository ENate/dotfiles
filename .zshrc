# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
#ZSH_THEME="agnoster"
ZSH_THEME=random
ZSH_THEME_RANDOM_CANDIDATES=("agnoster" "powerlevel9k/powerlevel9k")

# zsh-nvm and zsh-autosuggestions must be installed separately
plugins=(git zsh-nvm zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
# Path to your oh-my-zsh installation.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
#ZSH_THEME="agnoster"
ZSH_THEME=random
ZSH_THEME_RANDOM_CANDIDATES=("agnoster", "powerlevel9k/powerlevel9k", "powerlevel10k/powerlevel10k")

# zsh-nvm and zsh-autosuggestions must be installed separately
plugins=(git zsh-nvm zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
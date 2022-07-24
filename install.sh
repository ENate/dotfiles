#!/bin/sh

zshrc() {
    echo "==========================================================="
    echo "             cloning zsh-autosuggestions                   "
    echo "-----------------------------------------------------------"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    echo "==========================================================="
    echo "                 cloning zsh-zsh-nvm                       "
    echo "-----------------------------------------------------------"
    git clone https://github.com/lukechilds/zsh-nvm ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-nvm
    echo "==========================================================="
    echo "                cloning powerlevel9k                       "
    echo "-----------------------------------------------------------"
    $ git clone https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k
    echo "==========================================================="

    echo "                  Import zshrc                             "
    echo "-----------------------------------------------------------"
    
    cat .zshrc > $HOME/.zshrc
}

zshrc
sudo apt-get update
sudo apt-get install powerline fonts-powerline
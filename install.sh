#!/bin/sh

# zshrc() {
#     echo "==========================================================="
#     echo "             cloning zsh-autosuggestions                   "
#     echo "-----------------------------------------------------------"
#     git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#     echo "==========================================================="
#     echo "             cloning zsh-syntax-highlighting               "
#     echo "-----------------------------------------------------------"
#     git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#     echo "==========================================================="
#     echo "             cloning powerlevel10k                         "
#     echo "-----------------------------------------------------------"
#     git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#     echo "==========================================================="
#     echo "             import zshrc                                  "
#     echo "-----------------------------------------------------------"
#     cat .zshrc > $HOME/.zshrc
#     echo "==========================================================="
#     echo "             import powerlevel10k                          "
#     echo "-----------------------------------------------------------"
#     cat .p10k.zsh > $HOME/.p10k.zsh
# }

# change time zone
#sudo ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime
#sudo dpkg-reconfigure --frontend noninteractive tzdata

# zshrc# Install & Configure Zsh
if [ "$INSTALL_ZSH" = "true" ]
then
    sudo apt-get install -y \
    fonts-powerline \
    zsh

    cp -f ~/dotfiles/.zshrc ~/.zshrc
    chsh -s /usr/bin/zsh $USERNAME
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
    echo "source $PWD/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
    cat .zshrc > $HOME/.zshrc
    cat .p10k.zsh > $HOME/.p10k.zsh
fi

# make directly highlighting readable - needs to be after zshrc line
echo "" >> ~/.zshrc
echo "# remove ls and directory completion highlight color" >> ~/.zshrc
echo "_ls_colors=':ow=01;33'" >> ~/.zshrc
echo 'zstyle ":completion:*:default" list-colors "${(s.:.)_ls_colors}"' >> ~/.zshrc
echo 'LS_COLORS+=$_ls_colors' >> ~/.zshrc

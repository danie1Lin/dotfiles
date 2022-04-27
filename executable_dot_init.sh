#! /bin/bash
brew install node direnv nvim tmux reattach-to-user-namespace fzf rg
brew tap daipeihust/tap && brew install im-select

pip3 install nvim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +PlugInstall
nvim

#zim
eval "$(/opt/homebrew/bin/brew shellenv)" curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

#kube
brew install kubectl

#tmux


#font
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh

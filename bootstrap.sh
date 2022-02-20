#!/bin/bash

echo "=========================================================="
echo "=                      bootstrap.sh                      ="
echo "=========================================================="
echo "= This script expect that brew is installed.             ="
read -r -p "Are you sure? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])
        # Install tmux and wget
        echo "Installing tmux and wget..."
        brew install wget tmux

        # Install oh-my-zsh and p10k
        echo "Installing oh-my-zsh and p10k..."
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
        if [ ! -e $HOME/.zshrc ]; then
           echo $some_line > /path/to/file
        fi

        # Install Vundle and plugins
        echo "Installing Vundle"
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

        # Install nerd fonts
        echo "Installing some nerd fonts..."
        brew tap homebrew/cask-fonts
        brew install font-fira-code-nerd-font font-hack-nerd-font font-meslo-for-powerline font-inconsolata font-jetbrains-mono-nerd-font

        # Move configuration files
        cp .configs/.zshrc $HOME/.zshrc
        cp .configs/.tmux.conf $HOME/.tmux.conf
        cp .configs/.tmux.conf.local $HOME/.tmux.conf.local
        cp .configs/.p10k.zsh $HOME/.p10k.zsh
        cp .configs/.gitconfig $HOME/.gitconfig
        cp .configs/.vimrc $HOME/.vimrc
        ;;
    *)
        exit 0
        ;;
esac
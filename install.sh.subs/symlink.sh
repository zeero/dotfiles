#!/bin/bash

DOTFILES=`dirname $0`/..

find ${DOTFILES}/home -type f -depth 1 -exec ln -s {} ~ \;
mkdir -p ~/.tmux/plugins
ln -s ${DOTFILES}/home/.tmux/plugins/tpm ~/.tmux/plugins/tpm
ln -s ${DOTFILES}/vim ~/.vim
ln -s ${DOTFILES}/vim/vimrc ~/.vimrc
mkdir -p ~/.config
ln -s ${DOTFILES}/vim ~/.config/nvim
ln -s ${DOTFILES}/vim/vimrc ~/.config/nvim/init.vim
mkdir -p ${DOTFILES}/vim/after/autoload
ln -s ${DOTFILES}/vim/plugged/vim-plug/plug.vim ~/.config/nvim/after/autoload/plug.vim
mkdir ~/.bundle
find ${DOTFILES}/home/.bundle -type f -depth 1 -exec ln -s {} ~/.bundle \;
mkdir ~/.nvm
ln -s ${DOTFILES}/xcode/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets
mkdir -p ~/Library/Developer/Xcode/Templates
ln -s ${DOTFILES}/xcode/File\ Templates ~/Library/Developer/Xcode/Templates/File\ Templates


#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

find ${DOTFILES}/home -type f -depth 1 -exec ln -sf {} ~ \;

mkdir -p ~/.tmux/plugins
ln -sf ${DOTFILES}/home/.tmux/plugins/tpm ~/.tmux/plugins/tpm

ln -sf ${DOTFILES}/vim ~/.vim
ln -sf ${DOTFILES}/vim/vimrc ~/.vimrc
mkdir -p ~/.config
find ${DOTFILES}/home/.config -type d -depth 1 -exec ln -sf {} ~/.config \;
ln -sf ${DOTFILES}/vim ~/.config/nvim
ln -sf ${DOTFILES}/vim/vimrc ~/.config/nvim/init.vim
mkdir -p ${DOTFILES}/vim/after/autoload
ln -sf ${DOTFILES}/vim/plugged/vim-plug/plug.vim ~/.config/nvim/after/autoload/plug.vim

mkdir ~/.bundle
find ${DOTFILES}/home/.bundle -type f -depth 1 -exec ln -sf {} ~/.bundle \;

mkdir ~/.nvm

ln -sf ${DOTFILES}/xcode/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets
mkdir -p ~/Library/Developer/Xcode/Templates
ln -sf ${DOTFILES}/xcode/File\ Templates ~/Library/Developer/Xcode/Templates/File\ Templates


#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

find ${DOTFILES}/home -type f -depth 1 -exec ln -sf {} ~ \;

# tmux
mkdir -p ~/.tmux/plugins
ln -sf ${DOTFILES}/home/.tmux/plugins/tpm ~/.tmux/plugins/tpm

# Vim
ln -sf ${DOTFILES}/vim ~/.vim
ln -sf ${DOTFILES}/vim/vimrc ~/.vimrc
mkdir -p ~/.config
find ${DOTFILES}/home/.config -type d -depth 1 -exec ln -sf {} ~/.config \;
ln -sf ${DOTFILES}/vim ~/.config/nvim
ln -sf ${DOTFILES}/vim/vimrc ~/.config/nvim/init.vim
mkdir -p ${DOTFILES}/vim/after/autoload
ln -sf ${DOTFILES}/vim/plugged/vim-plug/plug.vim ~/.config/nvim/after/autoload/plug.vim

# Claude Code
mkdir -p ~/.claude
find ${DOTFILES}/home/.claude -depth 1 -exec ln -sf {} ~/.claude \;
ln -s ~/.claude/CLAUDE.md ~/AGENTS.md

# Gemini
mkdir -p ~/.gemini
find ${DOTFILES}/home/.gemini -depth 1 -exec ln -sf {} ~/.gemini \;
ln -sf ${DOTFILES}/home/.claude/CLAUDE.md ~/.gemini/GEMINI.md

# Serena
mkdir -p ~/.serena
find ${DOTFILES}/home/.serena -depth 1 -exec ln -sf {} ~/.serena \;

# Ruby
mkdir ~/.bundle
find ${DOTFILES}/home/.bundle -type f -depth 1 -exec ln -sf {} ~/.bundle \;

# Node
mkdir ~/.nvm

# Xcode
# ln -sf ${DOTFILES}/xcode/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets
mkdir -p ~/Library/Developer/Xcode/UserData/CodeSnippets
cp -fp ${DOTFILES}/xcode/CodeSnippets/* ~/Library/Developer/Xcode/UserData/CodeSnippets
# mkdir -p ~/Library/Developer/Xcode/Templates
# ln -sf ${DOTFILES}/xcode/File\ Templates ~/Library/Developer/Xcode/Templates/File\ Templates
mkdir -p ~/Library/Developer/Xcode/Templates/File\ Templates
cp -fp ${DOTFILES}/xcode/File\ Templates/* ~/Library/Developer/Xcode/Templates/File\ Templates


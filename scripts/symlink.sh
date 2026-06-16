#!/bin/bash

DOTFILES=$(realpath "$(dirname "$(realpath "$0")")/..")

find ${DOTFILES}/home -type f -depth 1 -exec ln -sfh {} ~ \;

# tmux
mkdir -p ~/.tmux/plugins
ln -sfh ${DOTFILES}/home/.tmux/plugins/tpm ~/.tmux/plugins/tpm

# Vim
ln -sfh ${DOTFILES}/vim ~/.vim
ln -sfh ${DOTFILES}/vim/vimrc ~/.vimrc
mkdir -p ~/.config
find ${DOTFILES}/home/.config -type d -depth 1 -exec ln -sfh {} ~/.config \;
ln -sfh ${DOTFILES}/vim ~/.config/nvim
ln -sfh ${DOTFILES}/vim/vimrc ~/.config/nvim/init.vim
mkdir -p ${DOTFILES}/vim/after/autoload

# ctags
ln -sfh ${DOTFILES}/home/.ctags.d ~/.ctags.d

# Agents
mkdir -p ~/.agents
find ${DOTFILES}/home/.agents -depth 1 -exec ln -sfh {} ~/.agents \;
ln -sfh ${DOTFILES}/home/.claude/skills ~/.agents/skills
ln -sfh ${DOTFILES}/home/.claude/CLAUDE.md ~/AGENTS.md

# Claude Code
mkdir -p ~/.claude
find ${DOTFILES}/home/.claude -depth 1 -exec ln -sfh {} ~/.claude \;

# Codex
mkdir -p ~/.codex
find ${DOTFILES}/home/.codex -depth 1 -exec ln -sfh {} ~/.codex \;
ln -sfh ${DOTFILES}/home/.claude/CLAUDE.md ~/.codex/AGENTS.md
ln -sfh ${DOTFILES}/home/.claude/commands ~/.codex/prompts
ln -sfh ${DOTFILES}/home/.claude/skills ~/.codex/skills

# Antigravity
mkdir -p ~/.gemini/antigravity-cli
find ${DOTFILES}/home/.gemini/antigravity-cli -depth 1 -exec ln -sfh {} ~/.gemini/antigravity-cli \;
ln -sfh ${DOTFILES}/home/.claude/CLAUDE.md ~/.gemini/GEMINI.md
ln -sfh ${DOTFILES}/home/.claude/skills ~/.gemini/antigravity-cli/skills

# GitHub Copilot
mkdir -p ~/.copilot
find ${DOTFILES}/home/.copilot -depth 1 -exec ln -sfh {} ~/.copilot \;
ln -sfh ${DOTFILES}/home/.claude/CLAUDE.md ~/.copilot/copilot-instructions.md

# Pi
mkdir -p ~/.pi/agent/extensions
# ~/AGENTS.md 読んでくれてそう
# ln -sfh ${DOTFILES}/home/.claude/CLAUDE.md ~/.pi/agent/AGENTS.md
ln -sfh ${DOTFILES}/home/.claude/commands ~/.pi/agent/prompts
find ${DOTFILES}/home/.pi/agent/extensions -depth 1 -type f -exec ln -sfh {} ~/.pi/agent/extensions \;

# Serena
mkdir -p ~/.serena
find ${DOTFILES}/home/.serena -depth 1 -exec ln -sfh {} ~/.serena \;

# Ruby
mkdir -p ~/.bundle
find ${DOTFILES}/home/.bundle -type f -depth 1 -exec ln -sfh {} ~/.bundle \;

# Colima
mkdir -p ~/.colima
find ${DOTFILES}/home/.colima -depth 1 -exec ln -sfh {} ~/.colima \;

# Docker
mkdir -p ~/.docker
find ${DOTFILES}/home/.docker -depth 1 -exec ln -sfh {} ~/.docker \;

# Xcode
# ln -sfh ${DOTFILES}/xcode/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets
mkdir -p ~/Library/Developer/Xcode/UserData/CodeSnippets
cp -Rfp ${DOTFILES}/xcode/CodeSnippets/* ~/Library/Developer/Xcode/UserData/CodeSnippets
# mkdir -p ~/Library/Developer/Xcode/Templates
# ln -sfh ${DOTFILES}/xcode/File\ Templates ~/Library/Developer/Xcode/Templates/File\ Templates
mkdir -p ~/Library/Developer/Xcode/Templates/File\ Templates
cp -Rfp ${DOTFILES}/xcode/File\ Templates/* ~/Library/Developer/Xcode/Templates/File\ Templates


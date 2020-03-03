#!/bin/bash

# Requirements
# - Xcode install
#   - sudo xcode-select -s /Applications/Xcode.app
#   - インストールが終わってから次へ進むこと
# - Homebrew install
# - brew install git
# - git clone https://github.com/zeero/dotfiles.git

cd `dirname $0`
DOTFILES=`pwd`
SUBS=`install.sh.subs`

# git submodules
git submodule update --init
git clone https://github.com/zeero/memos ~/Documents/memos

# mkdir
mkdir ~/bin
mkdir ~/dev
mkdir ~/tmp
mkdir ~/log

# symlink
./${SUBS}/symlink.sh

# git config
# git config --global user.name zeero
# git config --global user.email zeero26@gmail.com
# git config --global github.user zeero
git config --global push.default simple
git config --global http.sslVerify false
git config --global core.excludesfile ~/.gitignore
git config --global core.editor vim
git config --global diff.tool vimdiff
git config --global diff.algorithm histogram
git config --global merge.tool vimdiff
git config --global alias.co "checkout"
git config --global alias.st "status"
git config --global alias.graph "log --graph --decorate --name-status"
git config --global alias.ignore "update-index --skip-worktree"
git config --global alias.noignore "update-index --no-skip-worktree"
git config --global alias.stashdiff "diff HEAD..stash@{0}"
git config --global ghq.root "~/dev"
git config --global commit.template "~/.git-commit-template"

# HomeBrew
brew bundle

# XVim2
cd `dirname $0`/lib/XVim2
make
cd `dirname $0`

# Mint
./${SUBS}/mint_install.sh

# ruby
./${SUBS}/ruby.001.rbenv.sh
./${SUBS}/ruby.002.gem_install_pre.sh
./${SUBS}/ruby.003.gem_install.sh
./${SUBS}/ruby.004.gem_install_post.sh

# node.js
./${SUBS}/node.001.nodebrew.sh
./${SUBS}/node.002.npm_install.sh

# python
./${SUBS}/pip_install.sh

# plist
./${SUBS}/osx_defaults.sh

# その他設定
echo "・ダブルタップでドラッグするために「システム環境設定」の「アクセシビリティ」→「マウスとトラックパッド」→「トラックパッドオプション」→「ドラッグロック」を有効にする"
echo "・キー移動を速くするために「システム環境設定」の「キーボード」からキーリピート、リピート認識を最大にする"
echo "・シフトスペースをVimに送るためにGoogleIMEの英語キーボードを導入すること"


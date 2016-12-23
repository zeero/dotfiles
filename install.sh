#!/bin/bash

# Homebrew
# brew install git
# git clone https://github.com/zeero/dotfiles.git

# git-submodules
git submodule update --init

# symlink
ln -s `dirname $0`/vim ~/.vim
ln -s `dirname $0`/vim/vimrc ~/.vimrc
ln -s `dirname $0`/vimperator ~/.vimperator
ln -s `dirname $0`/vimperator/vimperatorrc ~/.vimperatorrc
ln -s `dirname $0`/home/.xvimrc ~/.xvimrc
ln -s `dirname $0`/home/.gitignore ~/.gitignore
ln -s `dirname $0`/home/.git-prompt-colors.sh ~/.git-prompt-colors.sh
ln -s `dirname $0`/home/.tmux.conf ~/.tmux.conf
ln -s `dirname $0`/home/.irbrc ~/.irbrc
ln -s `dirname $0`/home/.ctags ~/.ctags

# git config
git config --global user.name zeero
git config --global user.email zeero26@gmail.com
git config --global github.user zeero
git config --global push.default matching
git config --global http.sslVerify false
git config --global core.excludesfile ~/.gitignore
git config --global core.editor vim
git config --global diff.tool vimdiff
git config --global diff.algorithm histogram
git config --global alias.graph "log --graph --decorate --name-status"

# Ricty
open `dirname $0`/lib/RictyDiminished/RictyDiminished-Regular.ttf
open `dirname $0`/lib/RictyDiminished/RictyDiminished-Bold.ttf
open `dirname $0`/lib/RictyDiminished/RictyDiminished-Oblique.ttf
open `dirname $0`/lib/RictyDiminished/RictyDiminished-BoldOblique.ttf

# HomeBrew
brew bundle

# ruby
brew link readline --force
CONFIGURE_OPTS="--with-readline-dir=/usr/local/opt" rbenv install 2.3.1
rbenv global 2.3.1
gem install \
  bundler \
  refe2 \
  rubocop \
  fastri \
  rcodetools \
  irbtools \
  minitest \
  minitest-doc_reporter \
  minitest-stub_any_instance \
  factory_girl \
  cocoapods \
  ruboty \
  ruboty-gen \
  kramdown \

bitclust setup

# node.js
npm install -g \
  coffee-script \
  jshint \
  hubot \
  hubot-generator \
  yo \


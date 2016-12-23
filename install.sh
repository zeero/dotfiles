#!/bin/bash

# Homebrew
# brew install git
# git clone https://github.com/zeero/dotfiles.git

# git-submodules
git submodule update --init

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

# symlink

# Ricty

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


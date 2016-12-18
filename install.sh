#!/bin/bash

# git-submodules
git submodule update --init

# symlink

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

# HomeBrew
brew bundle

# ruby
brew link readline --force
CONFIGURE_OPTS="--with-readline-dir=/usr/local/opt" rbenv install 2.3.1
rbenv global 2.3.1
gem install bundler cocoapods ruboty irbtools

# node.js
npm install -g coffee-script jshint hubot hubot-generator yo


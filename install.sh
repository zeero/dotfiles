#!/bin/bash

# Homebrew
# brew install git
# git clone https://github.com/zeero/dotfiles.git

# git-submodules
git submodule update --init

# symlink
find `dirname $0`/home -type f -depth 1 -exec ln -s {} ~ \;
ln -s `dirname $0`/vim ~/.vim
ln -s `dirname $0`/vim/vimrc ~/.vimrc
ln -s `dirname $0`/vimperator ~/.vimperator
ln -s `dirname $0`/vimperator/vimperatorrc ~/.vimperatorrc
mkdir ~/bin
chmod 744 `dirname $0`/home/bin/*
chmod 744 `dirname $0`/lib/git-info/*
chmod 744 `dirname $0`/lib/markdown2ctags/markdown2ctags.py
find `dirname $0`/home/bin -type f -depth 1 -exec ln -s {} ~/bin \;
find `dirname $0`/lib/git-info -type f -depth 1 -exec ln -s {} ~/bin \;
ln -s `dirname $0`/lib/markdown2ctags/markdown2ctags.py ~/bin/markdown2ctags.py
mkdir ~/.bundle
find `dirname $0`/home/.bundle -type f -depth 1 -exec ln -s {} ~/.bundle \;

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
CONFIGURE_OPTS="--with-readline-dir=/usr/local/opt" rbenv install 2.3.1
rbenv global 2.3.1
gem install \
  bundler \
  refe2 \
  rubocop \
  fastri \
  rcodetools \
  byebug \
  pry \
  pry-doc \
  pry-theme \
  pry-byebug \
  irbtools \
  minitest \
  minitest-doc_reporter \
  minitest-stub_any_instance \
  factory_girl \
  cocoapods \
  ruboty \
  ruboty-gen \
  kramdown \

brew link --force libxml2 libxslt
gem install nokogiri -- --use-system-libraries
# bundler経由の場合は以下で設定
# （さらにherokuの場合は、heroku runで動かす）
# bundle config build.nokogiri --use-system-libraries

bitclust setup

# node.js
npm install -g \
  coffee-script \
  jshint \
  hubot \
  hubot-generator \
  yo \


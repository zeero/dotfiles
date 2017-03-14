#!/bin/bash

# Requirements
# - Homebrew install
# - brew install git
# - git clone https://github.com/zeero/dotfiles.git

cd `dirname $0`
DOTFILES=`pwd`

# git submodules
git submodule update --init

# symlink
find ${DOTFILES}/home -type f -depth 1 -exec ln -s {} ~ \;
mkdir -p ~/.tmux/plugins
ln -s ${DOTFILES}/home/.tmux/plugins/tpm ~/.tmux/plugins/tpm
ln -s ${DOTFILES}/vim ~/.vim
ln -s ${DOTFILES}/vim/vimrc ~/.vimrc
ln -s ${DOTFILES}/vimperator ~/.vimperator
ln -s ${DOTFILES}/vimperator/vimperatorrc ~/.vimperatorrc
mkdir ~/bin
chmod 744 ${DOTFILES}/home/bin/*
chmod 744 ${DOTFILES}/lib/git-info/*
chmod 744 ${DOTFILES}/lib/markdown2ctags/markdown2ctags.py
find ${DOTFILES}/home/bin -type f -depth 1 -exec ln -s {} ~/bin \;
find ${DOTFILES}/lib/git-info -type f -depth 1 -exec ln -s {} ~/bin \;
ln -s ${DOTFILES}/lib/markdown2ctags/markdown2ctags.py ~/bin/markdown2ctags.py
mkdir ~/.bundle
find ${DOTFILES}/home/.bundle -type f -depth 1 -exec ln -s {} ~/.bundle \;

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
open ${DOTFILES}/lib/RictyDiminished/RictyDiminished-Regular.ttf
open ${DOTFILES}/lib/RictyDiminished/RictyDiminished-Bold.ttf
open ${DOTFILES}/lib/RictyDiminished/RictyDiminished-Oblique.ttf
open ${DOTFILES}/lib/RictyDiminished/RictyDiminished-BoldOblique.ttf

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
  firebrew \
  synx \

# nokogiriのインストールには設定が必要となる
# bundler経由の場合は以下で設定 （さらにherokuの場合は、heroku runで動かす）
#   bundle config build.nokogiri --use-system-libraries
brew link --force libxml2 libxslt
gem install nokogiri -- --use-system-libraries

bitclust setup

# node.js
npm install -g \
  coffee-script \
  coffeelint \
  eslint \
  jshint \
  hubot \
  generator-hubot \
  yo \
  bower \

# firebrew
firebrew install "Japanese Language Pack"
firebrew install "Nightly Tester Tools"
firebrew install "AutoAuth"
firebrew install "ColorfulTabs"
firebrew install "Fasterfox Lite"
firebrew install "FaviconizeTab"
firebrew install "Firebug"
firebrew install "Free Memory Button"
firebrew install "Live HTTP Headers"
firebrew install "Pearl Crescent Page Saver"
firebrew install "Stylish"
firebrew install "Tab Groups"
firebrew install "Tab Mix Plus"
firebrew install "Vimperator"
firebrew install "Vimperator-ja"
firebrew install "Text Link"
firebrew install "Snap Links"
firebrew install "Tile Tabs"

# その他設定
echo "・キー移動を速くするために「システム環境設定」の「キーボード」からキーリピート、リピート認識を最大にする"


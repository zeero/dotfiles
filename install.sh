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
chmod 744 `dirname $0`/home/bin/alcatraz_reload
chmod 744 `dirname $0`/home/bin/fcd
chmod 744 `dirname $0`/home/bin/mkdatedir
chmod 744 `dirname $0`/home/bin/ug
chmod 744 `dirname $0`/lib/git-info/git-info
chmod 744 `dirname $0`/lib/git-info/git-editor
chmod 744 `dirname $0`/lib/git-info/git-pager
chmod 744 `dirname $0`/lib/markdown2ctags/markdown2ctags.py
ln -s `dirname $0`/home/bin/alcatraz_reload ~/bin/alcatraz_reload
ln -s `dirname $0`/home/bin/fcd ~/bin/fcd
ln -s `dirname $0`/home/bin/mkdatedir ~/bin/mkdatedir
ln -s `dirname $0`/home/bin/ug ~/bin/ug
ln -s `dirname $0`/lib/git-info/git-info ~/bin/git-info
ln -s `dirname $0`/lib/git-info/git-editor ~/bin/git-editor
ln -s `dirname $0`/lib/git-info/git-pager ~/bin/git-pager
ln -s `dirname $0`/lib/markdown2ctags/markdown2ctags.py ~/bin/markdown2ctags.py

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


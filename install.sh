#!/bin/bash

# Requirements
# - Xcode install
#   - インストールが終わってから次へ進むこと
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
mkdir ~/bin
chmod 744 ${DOTFILES}/home/bin/*
chmod 744 ${DOTFILES}/lib/git-info/git-*
chmod 744 ${DOTFILES}/lib/markdown2ctags/markdown2ctags.py
find ${DOTFILES}/lib/git-info -type f -depth 1 -exec ln -s {} ~/bin \;
ln -s ${DOTFILES}/lib/markdown2ctags/markdown2ctags.py ~/bin/markdown2ctags.py
mkdir ~/.bundle
find ${DOTFILES}/home/.bundle -type f -depth 1 -exec ln -s {} ~/.bundle \;

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

# Ricty
open ${DOTFILES}/lib/RictyDiminished/RictyDiminished-devicon*.ttf

# HomeBrew
brew bundle
brew linkapps macvim

# ruby
CONFIGURE_OPTS="--with-readline-dir=/usr/local/opt" rbenv install 2.3.1
rbenv global 2.3.1

gem install yard
yard gems
yard config --gem-install-yri

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
  travis \
  rdoc-generator-fivefish \
  update_xcode_plugins \
  sqlint \
  json \
  rest-client \
  solargraph \
  neovim \

# Xcode8以降にalcatrazを導入する場合、以下のコマンド実行が必要になる
#   update_xcode_plugins --unsign
# Xcodeのバージョンとxcodebuildコマンドも対象にするか聞かれるので対象にして実行する

# nokogiriのインストールには設定が必要となる
# bundler経由の場合は以下で設定 （さらにherokuの場合は、heroku runで動かす）
#   bundle config build.nokogiri --use-system-libraries
brew link --force libxml2 libxslt
gem install nokogiri -- --use-system-libraries

bitclust setup

# node.js
npm install -g \
  coffeescript \
  coffeelint \
  eslint \
  eslint-config-eslint \
  hubot \
  generator-hubot \
  yo \
  bower \

# python
pip3 install \
  neovim \
  vim-vint \
  solargraph-utils.py \

# その他設定
echo "・キー移動を速くするために「システム環境設定」の「キーボード」からキーリピート、リピート認識を最大にする"
echo "・ダブルタップでドラッグするために「システム環境設定」の「アクセシビリティ」→「マウスとトラックパッド」→「トラックパッドオプション」→「ドラッグロック」を有効にする"
echo "・シフトスペースをVimに送るためにGoogleIMEの英語キーボードを導入すること"


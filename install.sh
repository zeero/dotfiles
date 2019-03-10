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

# git submodules
git submodule update --init

# symlink
find ${DOTFILES}/home -type f -depth 1 -exec ln -s {} ~ \;
mkdir -p ~/.tmux/plugins
ln -s ${DOTFILES}/home/.tmux/plugins/tpm ~/.tmux/plugins/tpm
ln -s ${DOTFILES}/vim ~/.vim
ln -s ${DOTFILES}/vim/vimrc ~/.vimrc
ln -s ${DOTFILES}/vim ~/.config/nvim
ln -s ${DOTFILES}/vim/vimrc ~/.config/nvim/init.vim
mkdir -p ${DOTFILES}/vim/after/autoload
ln -s ${DOTFILES}/vim/plugged/vim-plug/plug.vim ~/.config/nvim/after/autoload/plug.vim
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
  byebug \
  cocoapods \
  fastri \
  irbtools \
  kramdown \
  neovim \
  pry \
  pry-byebug \
  pry-doc \
  pry-theme \
  rcodetools \
  rdoc-generator-fivefish \
  refe2 \
  rest-client \
  rubocop \
  rubocop-rspec \
  ruboty-megen \
  specific_install \
  sqlint \
  synx \
  update_xcode_plugins \

gem install solargraph -v 0.18.0
gem specific_install -l http://github.com/zeero/ruboty-gen.git

bitclust setup

# XVim2
cd `dirname $0`/lib/XVim2
make
cd `dirname $0`

# Xcode8以降にalcatrazを導入する場合、以下のコマンド実行が必要になる
# Xcodeのバージョンとxcodebuildコマンドも対象にするか聞かれるので対象にして実行する
update_xcode_plugins
update_xcode_plugins --unsign

# node.js
npm install -g \
  coffeescript \
  coffeelint \
  eslint \
  hubot \
  generator-hubot \
  yo \

# python
pip3 install --user \
  vim-vint \
  pynvim \
  solargraph-utils.py \

# plist
## OS
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write "com.apple.AppleMultitouchTrackpad" "TrackpadCornerSecondaryClick" -int 2
defaults write "com.apple.AppleMultitouchTrackpad" "TrackpadRightClick" -bool false
defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" "TrackpadCornerSecondaryClick" -int 2
defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" "TrackpadRightClick" -bool false
defaults write "com.apple.dock" "showAppExposeGestureEnabled" -bool true
defaults write "com.apple.preference.general" "version" -int 1
echo "・ダブルタップでドラッグするために「システム環境設定」の「アクセシビリティ」→「マウスとトラックパッド」→「トラックパッドオプション」→「ドラッグロック」を有効にする"
defaults write "com.apple.AppleMultitouchTrackpad" "DragLock" -bool true
defaults write "com.apple.AppleMultitouchTrackpad" "Clicking" -bool true
defaults write "com.apple.AppleMultitouchTrackpad" "Dragging" -bool true
defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" "DragLock" -bool true
defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" "Clicking" -bool true
defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" "Dragging" -bool true
## Dock
defaults write "com.apple.dock" "tilesize" -int 32
defaults write "com.apple.dock" "magnification" -bool true
defaults write "com.apple.dock" "autohide" -bool true
## iTerm2
defaults write "com.googlecode.iterm2" "QuitWhenAllWindowsClosed" -bool true
## Clipy
defaults write "com.clipy-app.Clipy" "kCPYPrefNumberOfItemsPlaceInlineKey" -int 10

# その他設定
echo "・キー移動を速くするために「システム環境設定」の「キーボード」からキーリピート、リピート認識を最大にする"
echo "・シフトスペースをVimに送るためにGoogleIMEの英語キーボードを導入すること"


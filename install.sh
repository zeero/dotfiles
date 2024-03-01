#!/bin/bash

cd `dirname $0`
DOTFILES=`pwd`
SUBS=install.sh.subs

# git submodules
git submodule update --init
git clone https://github.com/zeero/memos ~/Documents/memos

# mkdir
mkdir ~/bin
mkdir ~/dev
mkdir ~/tmp
mkdir ~/log

# HomeBrew
brew bundle

# symlink
./${SUBS}/symlink.sh

# git config
git config --global push.default simple
git config --global pull.rebase false
git config --global http.sslVerify false
git config --global core.excludesfile ~/.gitignore
git config --global core.editor vim
git config --global core.quotepath false
git config --global core.safecrlf true
git config --global core.autocrlf false
git config --global core.ignorecase false
git config --global color.ui true
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global diff.tool vimdiff
git config --global diff.algorithm histogram
git config --global commit.template "~/.git-commit-template"
git config --global merge.tool vimdiff
git config --global mergetool.keepBackup false
git config --global fetch.prune true
git config --global init.defaultBranch main
git config --global ghq.root "~/dev"
git config --global alias.co "checkout"
git config --global alias.st "status"
git config --global alias.pick "cherry-pick"
# ログをグラフ表示
git config --global alias.graph "log --graph --decorate --name-status"
# ローカルで変更を無視
git config --global alias.ignore "update-index --skip-worktree"
# ローカルで変更を無視を解除
git config --global alias.noignore "update-index --no-skip-worktree"
git config --global alias.stashdiff "diff HEAD..stash@{0}"
git config --global alias.amend "commit --amend --no-edit"
git config --global alias.wdiff "diff --word-diff -w"
git config --global alias.vdiff "difftool --tool=vimdiff --no-prompt"
git config --global alias.head "rev-parse --short=7 HEAD"
git config --global alias.swap "\!GIT_SEQUENCE_EDITOR='gsed -i \"1{h;d};2G\"' git rebase -i HEAD~2"
git config --global alias.slog "log --pretty=format:'%C(yellow)%h %Creset%cd %Cblue%cn %Cred%d %Creset%s'"
git config --global alias.fixup "\!f(){ git commit --fixup \$1 && GIT_SEQUENCE_EDITOR='gsed -i \"\"' git rebase -i \$1^;};f"

echo gitのuser.name/user.email/github.userを設定してください
echo git config --global user.name zeero
echo git config --global user.email zeero26@gmail.com
echo git config --global github.user zeero
read -p "Press Enter to resume..."

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

# vim
## coc.nvim (require npm)
./${SUBS}/vim.001.coc.sh

# plist
./${SUBS}/osx_defaults.sh

# Alfred Custom Search
open alfred://customsearch/%E8%8B%B1%E5%92%8C/eiwa/utf8/nospace/https%3A%2F%2Ftranslate.google.com%2F%23en%2Fja%2F%7Bquery%7D
open alfred://customsearch/%E5%92%8C%E8%8B%B1/waei/utf8/nospace/https%3A%2F%2Ftranslate.google.com%2F%23ja%2Fen%2F%7Bquery%7D
open alfred://customsearch/Github/hub/utf8/nospace/https%3A%2F%2Fgithub.com%2Fsearch%3Futf8%3D%25E2%259C%2593%26o%3Ddesc%26s%3Dstars%26q%3D%7Bquery%7D

# iTerm2 Color
open $DOTFILES/lib/Smyck-Color-Scheme/Smyck.itermcolors
echo 'iTermを開いてProfiles > Colors から Smyck を選んでください'
read -p "Press Enter to resume..."

# CVim
echo 'CVimをインストールします'
echo 'Enterを押すと、Chromeが開くので、デベロッパーモードを有効にして、cvimを読み込んでください'
echo 'cvimrcのgistは以下のURLです'
echo 'https://gist.github.com/zeero/f48b6201a10189b8a6defedf2dc99949'
read -p "Press Enter to resume..."
open "chrome://extensions/" -a "Google Chrome"
open "$DOTFILES/lib"

# All have done
echo '🎉'


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
mkdir -p ~/lib/go/bin

# HomeBrew
brew bundle
brew services start colima

# symlink
./${SUBS}/symlink.sh

# git config
git config --global push.default simple
git config --global pull.rebase false
git config --global http.sslVerify false
git config --global core.excludesfile ~/.gitignore
git config --global core.editor nvim
git config --global core.quotepath false
git config --global core.safecrlf true
git config --global core.autocrlf false
git config --global core.ignorecase false
git config --global color.ui true
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global commit.template "~/.git-commit-template"
git config --global diff.algorithm histogram
git config --global diff.tool nvimdiff
git config --global difftool.prompt false
git config --global difftool.nvimdiff.cmd 'nvim -d "$LOCAL" "$REMOTE"'
git config --global merge.tool nvimdiff
git config --global mergetool.prompt true
git config --global mergetool.keepBackup false
git config --global mergetool.nvimdiff.cmd 'nvim -d "$LOCAL" "$REMOTE" "$MERGED" -c "wincmd 3w" -c "wincmd J"'
git config --global mergetool.vimrdiff.cmd 'vimr --wait --nvim -d $LOCAL $REMOTE'
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
git config --global alias.nvimdiff "difftool --tool=nvimdiff --no-prompt"
git config --global alias.vimrdiff "difftool --tool=vimrdiff --no-prompt"
git config --global alias.head "rev-parse --short=7 HEAD"
git config --global alias.swap '!GIT_SEQUENCE_EDITOR="gsed -i \"1{h;d};2G\"" git rebase -i HEAD~2'
git config --global alias.slog "log --pretty=format:'%C(yellow)%h %Creset%cd %Cblue%cn %Cred%d %Creset%s'"
git config --global alias.wlog "log -p --word-diff -w"
git config --global alias.fixup '!f(){ git commit --fixup $1 && GIT_SEQUENCE_EDITOR="gsed -i \"\"" git rebase -i --autosquash $1^;};f'
git config --global alias.show-base-branch '!f(){ git log --first-parent --pretty=format:"%D" | grep -v "^$" | grep -v "HEAD" | head -1 | awk -F, "{print \$1}"; };f'

echo gitのuser.name/user.email/github.userを設定してください
echo git config --global user.name zeero
echo git config --global user.email zeero26@gmail.com
echo git config --global github.user zeero
read -p "Press Enter to resume..."

# Mise
./${SUBS}/mise_install.sh

# Mint
./${SUBS}/mint_install.sh

# ruby
./${SUBS}/ruby.002.gem_install_pre.sh
./${SUBS}/ruby.003.gem_install.sh
./${SUBS}/ruby.004.gem_install_post.sh

# node.js
./${SUBS}/node.002.npm_install.sh

# python
./${SUBS}/python.001.uv_install.sh
./${SUBS}/python.002.pip_install.sh

# vim
## coc.nvim (require npm)
./${SUBS}/vim.001.coc.sh

# plist
./${SUBS}/osx_defaults.sh

# Alfred Custom Search
open alfred://customsearch/%E8%8B%B1%E5%92%8C/eiwa/utf8/nospace/https%3A%2F%2Ftranslate.google.com%2F%23en%2Fja%2F%7Bquery%7D
open alfred://customsearch/%E5%92%8C%E8%8B%B1/waei/utf8/nospace/https%3A%2F%2Ftranslate.google.com%2F%23ja%2Fen%2F%7Bquery%7D
open alfred://customsearch/GitHub/hub/utf8/nospace/https%3A%2F%2Fgithub.com%2Fsearch%3Futf8%3D%25E2%259C%2593%26o%3Ddesc%26s%3Dstars%26q%3D%7Bquery%7D
open alfred://customsearch/ChatGPT/gpt/utf8/nospace/https%3A%2F%2Fchatgpt.com%2F%3Fq%3D%7Bquery%7D%0D%0A
open alfred://customsearch/Perplexity/perp/utf8/nospace/https%3A%2F%2Fwww.perplexity.ai%2F%3Fq%3D%7Bquery%7D%0D%0A

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

# AI Agents
claude plugin install plugin-dev@claude-plugins-official
claude plugin install frontend-design@claude-plugins-official
claude plugin install cicd-automation@claude-code-workflows
claude plugin install frontend-mobile-development@claude-code-workflows
claude plugin install frontend-mobile-security@claude-code-workflows
## anthropic-agent-skills
claude plugin marketplace add anthropics/skills
claude plugin install example-skills@anthropic-agent-skills
## zeero-dotfiles
cd $DOTFILES
claude plugin marketplace add ./
# claude plugin install simple-research@zeero-dotfiles
# claude plugin install multi-research@zeero-dotfiles

# All have done
echo '🎉'


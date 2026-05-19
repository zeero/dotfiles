#!/bin/bash

# git config
git config --global push.default simple
git config --global pull.rebase false
git config --global pull.ff only
git config --global merge.ff false # マージコミット必須
git config --global http.sslVerify false
git config --global core.editor nvim
git config --global core.pager delta
git config --global core.quotepath false
git config --global core.safecrlf true
git config --global core.autocrlf false
git config --global core.ignorecase false
git config --global color.ui true
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global commit.template "~/.git-commit-template"
git config --global interactive.diffFilter 'delta --color-only'
git config --global include.path '~/.config/delta/.gitconfig'
git config --global diff.algorithm histogram
git config --global diff.tool nvimdiff
git config --global difftool.prompt false
git config --global difftool.nvimdiff.cmd 'nvim -d "$LOCAL" "$REMOTE"'
git config --global merge.tool nvimdiff
git config --global mergetool.prompt true
git config --global mergetool.keepBackup false
git config --global mergetool.nvimdiff.cmd 'nvim -d "$LOCAL" "$REMOTE" "$MERGED" -c "wincmd 3w" -c "wincmd J"'
git config --global mergetool.vimrdiff.cmd 'vimr --wait --nvim -d $LOCAL $REMOTE'
git config --global merge.conflictStyle zdiff3
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

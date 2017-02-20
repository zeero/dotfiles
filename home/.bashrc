# .bashrcにはexportしない設定値を記載する

# 基本設定
## プロンプトの表示
PS1='\u@\h:\w $ '

# エイリアス
#alias ls='ls -G'
alias ls='gls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lh='ls -lh'
alias fcd='source ~/bin/fcd'
alias be='bundle exec'

# ファンクション
## 計算
calc() { awk "BEGIN { print $* }"; }
## fzf-git-branch補完
__fzf_git_branch__() {
  local selected fzf
  [ "${FZF_TMUX:-1}" != 0 ] && fzf="fzf-tmux -d ${FZF_TMUX_HEIGHT:-40%}" || fzf="fzf"
  selected=$(git branch -a | $fzf | cut -b 3- | tr '\n' ' ')
  if [ -n "$selected" ]; then
    echo -n "$selected"
    return 0
  fi
}

# 外部ファイルの読み込み
## .local.bashrc
[ -f ~/.local.bashrc ] && source ~/.local.bashrc
## bash-completion
BREW_ROOT=$(brew --prefix)
[ -f $BREW_ROOT/etc/bash_completion ] && source $BREW_ROOT/etc/bash_completion
## git-prompt
BREW_BASH_GIT_PROMPT=$(brew --prefix bash-git-prompt)
if [ -f "$BREW_BASH_GIT_PROMPT/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Custom
  source "$BREW_BASH_GIT_PROMPT/share/gitprompt.sh"
fi
## fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
## hub
BREW_HUB=$(brew --prefix hub)
if [ -f "$BREW_HUB/etc/bash_completion.d/hub.bash_completion.sh" ]; then
  source "$BREW_HUB/etc/bash_completion.d/hub.bash_completion.sh"
fi

# キーバインド
## キーバインド解除
tty -s && stty stop  undef # C-s
tty -s && stty start undef # C-q
## fzf-git-branch
bind '"\C-g": "$(__fzf_git_branch__)\e\C-e\er"'
## カーソル移動
bind '"\C-h": backward-char'
bind '"\C-l": forward-char'
bind '"\C-b": backward-word'
bind '"\C-w": forward-word'
## 文字削除
bind '"\C-d": forward-backward-delete-char'


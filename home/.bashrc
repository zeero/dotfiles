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

# ファンクション
## 計算
calc() { awk "BEGIN { print $* }"; }
## fzf-git-branch補完
_fzf_complete_git_branch() {
  [ -n "${COMP_WORDS[COMP_CWORD]}" ] && return 1

  local selected fzf
  [ "${FZF_TMUX:-1}" != 0 ] && fzf="fzf-tmux -d ${FZF_TMUX_HEIGHT:-40%}" || fzf="fzf"
  tput sc
  selected=$(git branch | $fzf | awk '{print $2}' | tr '\n' ' ')
  tput rc

  if [ -n "$selected" ]; then
    COMPREPLY=( "$selected" )
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


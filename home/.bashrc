# .bashrcにはexportしない設定値を記載する

# 基本設定 {{{1
## プロンプトの表示
PS1='\u@\h:\w $ '

# エイリアス {{{1
#alias ls='ls -G'
alias ls='gls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lh='ls -lh'
alias be='bundle exec'
alias bi='bundle install'
alias rails='bundle exec rails'
alias rake='bundle exec rake'
alias dc='docker-compose'

# ファンクション {{{1
## calc {{{2
calc() { awk "BEGIN { print $* }"; }

## mkdatedir {{{2
mkdatedir() { mkdir `date "+%Y%m%d%H%M%S"`; }

## fcd {{{2
fcd() {
  local targetDir
  targetDir=`osascript << EOS
  tell application "Finder"
    set theLocation to insertion location
    
    if class of theLocation is not in {folder, disk} then
      set theLocation to folder of theLocation
    end if
    
    if exists Finder window 1 then
      if (target of Finder window 1 as Unicode text) is (theLocation as Unicode text) then
        set theSelection to selection
        if theSelection is not {} then
          set theSelection to item 1 of theSelection
          if (theSelection as Unicode text) ends with ":" then
            set theLocation to theSelection
          else
            set theLocation to folder of theSelection
          end if
        end if
      end if
    end if
    
    set theLocation to theLocation as alias
  end tell
  
  set theLocation to POSIX path of theLocation
  return theLocation
  EOS`
  
  cd "$targetDir"
  echo $PWD
}

## gitignore {{{2
gitignore() { curl -L -o .gitignore -s https://www.gitignore.io/api/$@; }

## alcatraz_reload {{{2
alcatraz_reload() {
  local uuid
  uuid=`defaults read /Applications/Xcode.app/Contents/Info DVTPlugInCompatibilityUUID`

  find ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins -name Info.plist -maxdepth 3 \
  | xargs -I{} defaults write {} DVTPlugInCompatibilityUUIDs -array-add $uuid
}

## pdfmerge {{{2
pdfmerge() {
  local usage length count infile outfile
  length=$#
  count=0
  infile=""
  
  if [ $length -le 1 ]
  then
    echo "USAGE: pdfmerge infile... outfile"
    return
  fi
  
  while [ -n "$1" ]
  do
    count=$((++count))
    if [ $length -eq $count ]
    then
      outfile="$1"
    else
      infile="$infile $1"
    fi
    shift
  done
  gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$outfile $infile
}

## _fzf-git-branch {{{2
_fzf_git_branch() {
  local selected fzf
  [ "${FZF_TMUX:-1}" != 0 ] && fzf="fzf-tmux -d ${FZF_TMUX_HEIGHT:-40%}" || fzf="fzf"
  selected=$(git branch -a | sed -e "s/remotes\/[^\/]\{1,\}\/\(HEAD -> [^\/]\{1,\}\/\)\{0,1\}//" | sort | uniq | $fzf | cut -b 3- | tr '\n' ' ')
  if [ -n "$selected" ]; then
    echo -n "$selected"
    return 0
  fi
}

## ghqcd {{{2
ghqcd() {
  local dir fzf
  [ "${FZF_TMUX:-1}" != 0 ] && fzf="fzf-tmux -d ${FZF_TMUX_HEIGHT:-40%}" || fzf="fzf"
  dir=$(ghq list | fzf-tmux --reverse) && cd $(ghq root)/$dir
}

## rm derived data {{{2
rmderiveddata() {
  rm -rf ~/Library/Developer/Xcode/DerivedData/
}

# 外部ファイルの読み込み {{{1
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
## travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

# キーバインド {{{1
## キーバインド解除
tty -s && stty stop  undef # C-s
tty -s && stty start undef # C-q
## fzf-git-branch
bind '"\C-g": "$(_fzf_git_branch)\e\C-e\er"'
## ghqcd
bind '"\C-q":"ghqcd\n"'
## カーソル移動
bind '"\C-h": backward-char'
bind '"\C-l": forward-char'
bind '"\C-b": backward-word'
bind '"\C-w": forward-word'
## 文字削除
bind '"\C-d": forward-backward-delete-char'

# 1}}}


# .bashrcにはexportしない設定値を記載する

# 基本設定 {{{1
## プロンプトの表示
PS1='\u@\h:\w $ '

# エイリアス {{{1
#alias ls='ls -G'
alias ls='gls --color=auto'
alias ll='ls -l --full-time'
alias la='ls -a --full-time'
alias lla='ls -la --full-time'
alias lh='ls -lh --full-time'
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
alias rails='bundle exec rails'
alias rake='bundle exec rake'
alias dc='docker-compose'
alias xargs='gxargs'
alias ..='cd ..'
alias resource='exec $SHELL -l'

# ファンクション {{{1
## calc {{{2
calc() { awk "BEGIN { print $* }"; }

## mkdatedir {{{2
mkdatedir() { date=`date "+%Y%m%d%H%M%S"` && mkdir $date && cd $date; }

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

## _fzf-git_branch {{{2
_fzf-git_branch() {
  local selected fzf
  # [ "${FZF_TMUX:-1}" != 0 ] && fzf="fzf-tmux --reverse -d ${FZF_TMUX_HEIGHT:-40%}" || fzf="fzf"
  # selected=$(git branch -a | sed -e "s/remotes\/[^\/]\{1,\}\/\(HEAD -> [^\/]\{1,\}\/\)\{0,1\}//" | sort -r | uniq | $fzf | cut -b 3- | tr '\n' ' ')
  selected=$(git branch -a | sed -e "s/remotes\/[^\/]\{1,\}\/\(HEAD -> [^\/]\{1,\}\/\)\{0,1\}//" | sort -r | uniq | fzf-tmux --reverse -d ${FZF_TMUX_HEIGHT:-40%} --preview 'echo {} | cut -b 3- | xargs git log --color --graph --decorate --name-status -n 10 --parents' | cut -b 3- | tr '\n' ' ')
  if [ -n "$selected" ]; then
    echo -n "$selected"
    return 0
  fi
}

## _fzf-t {{{2
_fzf-t() {
  local selected fzf
  # [ "${FZF_TMUX:-1}" != 0 ] && fzf="fzf-tmux --reverse -d ${FZF_TMUX_HEIGHT:-40%} --preview 'bat --color=always --style=header,grid --line-range :100 {}'" || fzf="fzf"
  # selected=$(rg --files --hidden --follow --glob '!.git/*' | $fzf)
  selected=$(rg --files --hidden --follow --glob '!.git/*' | fzf-tmux --reverse -d ${FZF_TMUX_HEIGHT:-40%} --preview 'bat --color=always --style=header,grid --line-range :100 {}')
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

## rm unused simulator {{{2
rmsimulator() {
  xcrun simctl delete unavailable
}

## prefix {{{2
prefix() {
  mv $2 $1$2
}

## ios_init {{{2
ios_init() {
  # parse opts
  while getopts -- "-:" opt
  do
    case "$opt" in
      -)
        case "$OPTARG" in
          carthage)
            carthage=1
            template_opts="$template_opts --carthage"
            ;;
          uitest)
            uitest=1
            template_opts="$template_opts --uitest"
            ;;
          swift4_2)
            swift4_2=1
            template_opts="$template_opts --swift4_2"
            ;;
        esac
        ;;
    esac
  done
  shift `expr $OPTIND - 1`

  # guard args
  if [ ! -n "$1" ] || [ ! -d $1 ]
  then
    echo "Usage: $0 [--carthage] [--uitest] [--swift4_2] xcode_project_dir"
    echo
    echo "Options:"
    echo "  --carthage  => include carthage (default: not included)"
    echo "  --uitest    => include xcuitest (default: not included)"
    echo "  --swift4_2  => specify swift version 4.2 (default: Xcode default)"
    return
  fi

  # prefix
  mv $1 ios-$1
  cd ios-$1

  # git rm --cache project.pbxproj xcuserdata
  git rm --cached -r $1.xcodeproj/project.pbxproj $1.xcodeproj/xcuserdata/
  git commit -m "chore: git rm --cache project.pbxproj xcuserdata"

  # copy initial files
  ## gitignore, Gemfile, Cartfile, project.yml, Podfile
  cp -ip ~/lib/dotfiles/xcode/ios_init/skel/* ~/lib/dotfiles/xcode/ios_init/skel/.[^\.]* ./
  ruby ~/lib/dotfiles/xcode/ios_init/xcode_gen_template.rb $1 $template_opts
  ruby ~/lib/dotfiles/xcode/ios_init/podfile_template.rb $1 $template_opts
  git add .
  git commit -m "chore: copy initial files"

  # extract xcconfig
  xcconfig-extractor $1.xcodeproj xcconfigs
  git add .
  git commit -m "chore: extract xcconfig"

  # bundle install
  bundle install

  # xcodegen & pod install
  xcodegen
  git add .
  git commit -m "chore: bundle install, xcodegen, pod install"

  # merge pod xcconfig
  echo "#include \"Pods/Target Support Files/Pods-$1/Pods-$1.debug.xcconfig\"" >> xcconfigs/$1-Debug.xcconfig
  echo "#include \"Pods/Target Support Files/Pods-$1/Pods-$1.release.xcconfig\"" >> xcconfigs/$1-Release.xcconfig
  echo "#include \"Pods/Target Support Files/Pods-$1Tests/Pods-$1Tests.debug.xcconfig\"" >> xcconfigs/$1Tests-Debug.xcconfig
  echo "#include \"Pods/Target Support Files/Pods-$1Tests/Pods-$1Tests.release.xcconfig\"" >> xcconfigs/$1Tests-Release.xcconfig
  git add .
  git commit -m "chore: merge pod xcconfig"

  # carthage update
  if [ ! -z $carthage ]
  then
    carthage update --platform ios
    git add .
    git commit -m "chore: carthage update"
  fi

  # open
  open $1.xcworkspace
}

## ios_update {{{2
ios_update() {
  carthage update --platform ios
  xcodegen
}

## simple_http_server {{{2
simple_http_server() {
  python -m http.server 8000
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
# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=~/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH

# キーバインド {{{1
## キーバインド解除
tty -s && stty stop  undef # C-s
tty -s && stty start undef # C-q
## fzf
bind '"\C-g": "$(_fzf-git_branch)\e\C-e\er"'
bind '"\C-t": "$(_fzf-t)\e\C-e\er"'
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


## Completion {{{1
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

## History {{{1
HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=3000

## Alias {{{1
alias ls='exa --time-style=long-iso --time=modified'
alias ll='ls -lh'
alias la='ls -lha'
alias ltra='ls -lha --sort=modified'
alias ..='cd ..'
alias resource='exec $SHELL -l'
alias xargs='gxargs'
alias be='bundle exec'
alias bi='bundle install'
alias rails='bundle exec rails'
alias rake='bundle exec rake'
alias dc='docker-compose'

## External Load {{{1
### .local.zshrc
[ -f ~/.local.zshrc ] && source ~/.local.zshrc
### fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## Functions {{{1
### calc {{{2
calc() { awk "BEGIN { print $* }"; }

### mkdatedir {{{2
mkdatedir() { date=`date "+%Y%m%d%H%M%S"` && mkdir $date && cd $date; }

### fcd {{{2
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

### pdfmerge {{{2
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

### _fzf-git_branch {{{2
_fzf-git_branch() {
  local selected fzf
  # [ "${FZF_TMUX:-1}" != 0 ] && fzf="fzf-tmux --reverse -d ${FZF_TMUX_HEIGHT:-40%}" || fzf="fzf"
  # selected=$(git branch -a | sed -e "s/remotes\/[^\/]\{1,\}\/\(HEAD -> [^\/]\{1,\}\/\)\{0,1\}//" | sort -r | uniq | $fzf | cut -b 3- | tr '\n' ' ')
  selected=$(git branch -a | sed -e "s/remotes\/[^\/]\{1,\}\/\(HEAD -> [^\/]\{1,\}\/\)\{0,1\}//" | sort -r | uniq | fzf-tmux --reverse -d ${FZF_TMUX_HEIGHT:-40%} --preview 'echo {} | cut -b 3- | xargs git log --color --graph --decorate --name-status -n 10 --parents' | cut -b 3- | tr '\n' ' ')
  if [ -n "$selected" ]; then
    BUFFER+="$selected"
    CURSOR=${#BUFFER}
    zle redisplay
    return 0
  fi
}

### _fzf-t {{{2
_fzf-t() {
  local selected fzf
  # [ "${FZF_TMUX:-1}" != 0 ] && fzf="fzf-tmux --reverse -d ${FZF_TMUX_HEIGHT:-40%} --preview 'bat --color=always --style=header,grid --line-range :100 {}'" || fzf="fzf"
  # selected=$(rg --files --hidden --follow --glob '!.git/*' | $fzf)
  selected=$(rg --files --hidden --follow --glob '!.git/*' | fzf-tmux --reverse -d ${FZF_TMUX_HEIGHT:-40%} --preview 'bat --color=always --style=header,grid --line-range :100 {}')
  if [ -n "$selected" ]; then
    BUFFER+="$selected"
    CURSOR=${#BUFFER}
    zle redisplay
    return 0
  fi
}

### ghqcd {{{2
ghqcd() {
  local dir fzf
  [ "${FZF_TMUX:-1}" != 0 ] && fzf="fzf-tmux -d ${FZF_TMUX_HEIGHT:-40%}" || fzf="fzf"
  dir=$(ghq list | fzf-tmux --reverse)
  BUFFER="cd $(ghq root)/$dir"
  zle accept-line
}

### rm derived data {{{2
rmderiveddata() {
  rm -rf ~/Library/Developer/Xcode/DerivedData/
}

### rm unused simulator {{{2
rmsimulator() {
  xcrun simctl delete unavailable
}

### prefix {{{2
prefix() {
  if [ $length -le 1 ]
  then
    echo "USAGE: prefix PREFIX TARGET"
    return
  fi
  
  mv $2 $1$2
}

### ios_init {{{2
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

### ios_update {{{2
ios_update() {
  carthage update --platform ios
  xcodegen
}

### simple_http_server {{{2
simple_http_server() {
  python -m http.server 8000
}

## Keybind {{{1
### emacs mode
bindkey -d
bindkey -e
### カーソル移動
bindkey '^H' backward-char
bindkey '^L' forward-char
bindkey '^B' backward-word
bindkey '^W' forward-word
# bindkey '^D' forward-backward-delete-char #zshにない
### Custom
zle -N _fzf-git_branch
bindkey '^G' _fzf-git_branch
# zle -N _fzf-t
# bindkey '^T' _fzf-t
bindkey '^T' fzf-file-widget
zle -N ghqcd
bindkey '^Q' ghqcd

### キーバインド解除
tty -s && stty stop  undef # C-s
tty -s && stty start undef # C-q


## Zinit {{{1

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

# Two regular plugins loaded without investigating.
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

# Plugin history-search-multi-word loaded with investigating.
zinit load zdharma/history-search-multi-word

# # Load the pure theme, with zsh-async library that's bundled with it.
# zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
# zinit light sindresorhus/pure
# zstyle :prompt:pure:git:stash show yes
# ## single line
# prompt_newline='%666v'
# PROMPT=" $PROMPT"

# Binary release in archive, from GitHub-releases page.
# After automatic unpacking it provides program "fzf".
zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

# Desktop notifications for long-running commands in ZSH.
zinit light marzocchi/zsh-notify

# A fast, customizable, pure-shell, asynchronous Git prompt for Zsh.
zinit light woefe/git-prompt.zsh
which mawk > /dev/null 2>&1 && ZSH_GIT_PROMPT_AWK_CMD=mawk
ZSH_GIT_PROMPT_SHOW_STASH=1
ZSH_GIT_PROMPT_SHOW_UPSTREAM="symbol"
ZSH_THEME_GIT_PROMPT_PREFIX="[ "
ZSH_THEME_GIT_PROMPT_SUFFIX=" ] "
ZSH_THEME_GIT_PROMPT_SEPARATOR=" |"
ZSH_THEME_GIT_PROMPT_DETACHED="%{$fg_bold[cyan]%}:"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_UPSTREAM_SYMBOL="%{$fg_bold[yellow]%} ↯"
ZSH_THEME_GIT_PROMPT_UPSTREAM_PREFIX="%{$fg[red]%}(%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_UPSTREAM_SUFFIX="%{$fg[red]%})"
ZSH_THEME_GIT_PROMPT_BEHIND=" ↓ "
ZSH_THEME_GIT_PROMPT_AHEAD=" ↑ "
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$fg[red]%}✖ %f"
ZSH_THEME_GIT_PROMPT_STAGED=" %{$fg[red]%}● %f"
ZSH_THEME_GIT_PROMPT_UNSTAGED=" %{$fg[blue]%}✚ %f"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[cyan]%}… %f"
ZSH_THEME_GIT_PROMPT_STASHED=" %{$fg[blue]%}⚑ %f"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}✔ %f"
PROMPT='%T %B%~ %b$(gitprompt)'
PROMPT+='%(?.%(!.%F{white}❯%F{yellow}❯%F{red}.%F{blue}❯%F{cyan}❯%F{green})❯%f.%F{red}❯❯❯%f) '
RPROMPT=''


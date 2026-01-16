# .bash_profileにはexportする設定値を記載する

# PATH
export GOPATH=~/lib/go
PATH=$GOPATH/bin:$PATH
PATH=/usr/local/bin:/usr/local/sbin:$PATH
PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
PATH=/opt/homebrew/opt/make/libexec/gnubin:$PATH
PATH=~/.mint/bin:$PATH
PATH=$HOME/lib/dotfiles/lib/flutter/bin:$PATH
# uv tool install
PATH=$HOME/.local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

eval "$(brew shellenv)"
command -v mise > /dev/null && eval "$(mise activate zsh)"

# OS
## man
export MANPATH=/usr/share/man/:$HOMEBREW_PREFIX/share/man/:$HOMEBREW_PREFIX/man:$(brew --prefix coreutils)/libexec/gnuman:$MANPATH
## man とかを見るときはいつも bat を使う。
export BAT_PAGER='less -FRX'
## less のステータス行にファイル名と行数、いま何%かを表示するようにする。
export LESS='-R -X -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'
## デフォルトのエディタ
export EDITOR=nvim
## 端末
if [[ -z "$TMUX" ]]; then
  export TERM=xterm-256color
fi

# lib
export LDFLAGS=
export CPPFLAGS=
export PKG_CONFIG_PATH=
## OpenSSL
OPENSSL_PREFIX=$(brew --prefix openssl@3)
export LDFLAGS="$LDFLAGS -L$OPENSSL_PREFIX/lib"
export CPPFLAGS="$CPPFLAGS -I$OPENSSL_PREFIX/include"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH $OPENSSL_PREFIX/lib/pkgconfig"
export PATH=$OPENSSL_PREFIX/bin:$PATH
## Readline
READLINE_PREFIX=$(brew --prefix readline)
export LDFLAGS="$LDFLAGS -L$READLINE_PREFIX/lib"
export CPPFLAGS="$CPPFLAGS -I$READLINE_PREFIX/include"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH $READLINE_PREFIX/lib/pkgconfig"
## Qt
QT_PREFIX=$(brew --prefix qt)
export LDFLAGS="$LDFLAGS -L$QT_PREFIX/lib"
export CPPFLAGS="$CPPFLAGS -I$QT_PREFIX/include"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH $QT_PREFIX/lib/pkgconfig"
export PATH=$QT_PREFIX/bin:$PATH
## iconv
ICONV_PREFIX=$(brew --prefix libiconv)
export LDFLAGS="$LDFLAGS -L$ICONV_PREFIX/lib"
export CPPFLAGS="$CPPFLAGS -I$ICONV_PREFIX/include"
export PATH=$ICONV_PREFIX/bin:$PATH

# Ruby
# RUBY_CONFIGURE_OPTS="--with-openssl-dir=$OPENSSL_PREFIX"
# RUBY_CONFIGURE_OPTS="$RUBY_CONFIGURE_OPTS --with-readline-dir=$READLINE_PREFIX"
# export RUBY_CONFIGURE_OPTS

# Java
# export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'
JAVA_HOME='/Applications/Android Studio.app/Contents/jbr/Contents/Home'
if [[ -d $JAVA_HOME ]]; then
  export JAVA_HOME
  export PATH=$JAVA_HOME/bin:$PATH
fi

# Android
ANDROID_HOME="$HOME/Library/Android/sdk"
if [[ -d $ANDROID_HOME ]]; then
  export ANDROID_HOME
  export PATH=$ANDROID_HOME/platform-tools:${PATH}
  export PATH=$ANDROID_HOME/tools:${PATH}
  export PATH=$ANDROID_HOME/tools/bin:${PATH}
  # 最新を指定
  export PATH=$ANDROID_HOME/build-tools/34.0.0:${PATH}
fi

# Node.js
export NODE_PATH=$NODE_PATH:`npm root -g`
export PATH=~/.config/npm/bin:$PATH

# Claude Code
export BASH_DEFAULT_TIMEOUT_MS=600000

# others
export DOTFILES=~/lib/dotfiles
export FZF_TMUX=1
export XDG_CONFIG_HOME=~/.config
export EXA_COLORS='da=34:uu=32:sn=1;36:sb=36'
export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc
alias fd='fd --hidden --ignore-case'
export N8N_USER_FOLDER=~/dev/n8n
# Puppeteerが使用するChrome実行パス（mmdc, md-mermaid-lint などで必要）
export PUPPETEER_EXECUTABLE_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

# local
[ -f ~/.local.zprofile ] && source ~/.local.zprofile

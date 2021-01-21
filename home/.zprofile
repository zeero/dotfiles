# .bash_profileにはexportする設定値を記載する

# PATH
PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
PATH=/usr/local/bin:/usr/local/sbin:$PATH
PATH=/opt/mint/bin:$PATH
PATH=$(brew --prefix python)/libexec/bin:$PATH
PATH=$HOME/lib/dotfiles/lib/flutter/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

eval "$(rbenv init -)"

# OS
HOMEBREW_PREFIX=$(brew --prefix)
## man
export MANPATH=/usr/share/man/:$HOMEBREW_PREFIX/share/man/:$HOMEBREW_PREFIX/man:$(brew --prefix coreutils)/libexec/gnuman:$MANPATH
## man とかを見るときはいつも bat を使う。
export BAT_PAGER='bat --plain'
## less のステータス行にファイル名と行数、いま何%かを表示するようにする。
export LESS='-R -X -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'
## デフォルトのエディタ
export EDITOR=vim
## 端末
export TERM=xterm-256color

# lib
export LDFLAGS=
export CPPFLAGS=
export PKG_CONFIG_PATH=
## OpenSSL
OPENSSL_PREFIX=$(brew --prefix openssl)
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

# Ruby
RUBY_CONFIGURE_OPTS="--with-openssl-dir=$OPENSSL_PREFIX"
RUBY_CONFIGURE_OPTS="$RUBY_CONFIGURE_OPTS --with-readline-dir=$READLINE_PREFIX"
export RUBY_CONFIGURE_OPTS

# Java
export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=$JAVA_HOME/bin:$PATH

# Node.js
export NODE_PATH=$NODE_PATH:`npm root -g`
export PATH=~/.nodebrew/current/bin:$PATH

# others
export DOTFILES=~/lib/dotfiles
export FZF_TMUX=1
export XDG_CONFIG_HOME=~/.config
export EXA_COLORS='da=34:uu=32:sn=1;36:sb=36'
export MINT_PATH=/opt/mint/lib
export MINT_LINK_PATH=/opt/mint/bin

# local
[ -f ~/.local.zprofile ] && source ~/.local.zprofile


# .bash_profileにはexportする設定値を記載する

# OS
## man
export MANPATH=/usr/share/man/:/usr/local/share/man/:/usr/local/man:/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
## man とかを見るときはいつも bat を使う。
export PAGER=bat
## less のステータス行にファイル名と行数、いま何%かを表示するようにする。
export LESS='-R -X -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'
## デフォルトのエディタ
export EDITOR=vim
## 端末
export TERM=xterm-256color

# Ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# Java
export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Node.js
export NODE_PATH=$NODE_PATH:`npm root -g`
export PATH=~/.nodebrew/current/bin:$PATH

# OpenSSL
export LDFLAGS="$LDFLAGS -L/usr/local/opt/openssl/lib"
export CPPFLAGS="$CPPFLAGS -I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH /usr/local/opt/openssl/lib/pkgconfig"

# Qt
export LDFLAGS="$LDFLAGS -L/usr/local/opt/qt/lib"
export CPPFLAGS="$CPPFLAGS -I/usr/local/opt/qt/include"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH /usr/local/opt/qt/lib/pkgconfig"

# others
export DOTFILES=~/lib/dotfiles
export FZF_TMUX=1
export XDG_CONFIG_HOME=~/.config

# local
[ -f ~/.local.bash_profile ] && source ~/.local.bash_profile

# read .bashrc
[ -f ~/.bashrc ] && source ~/.bashrc

# PATH
PATH=/usr/local/bin:/usr/local/sbin:$PATH
PATH=$HOME/bin:$PATH
PATH=~/.rbenv/shims:$PATH
PATH=/usr/local/opt/openssl/bin:$PATH
PATH=/usr/local/opt/qt/bin:$PATH
PATH=/usr/local/opt/python/libexec/bin:$PATH
PATH=$HOME/lib/dotfiles/lib/flutter/bin:$PATH
PATH=$JAVA_HOME/bin:$PATH
export PATH


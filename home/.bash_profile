# .bash_profileにはexportする設定値を記載する

# OS
## man
export MANPATH=/usr/share/man/:/usr/local/share/man/:/usr/local/man:/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
## man とかを見るときはいつも less を使う。
export PAGER=less
## less のステータス行にファイル名と行数、いま何%かを表示するようにする。
export LESS='-R -X -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'
## デフォルトのエディタ
export EDITOR=vim
## 端末
export TERM=xterm-256color

# PATH
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=~/.rbenv/shims:$PATH
PATH=$PATH:/usr/local/opt/coreutils/libexec/gnubin
PATH=/usr/local/opt/qt/bin:$PATH
export PATH

# Java
export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

# Node.js
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH

# Qt
export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export PKG_CONFIG_PATH="/usr/local/opt/qt/lib/pkgconfig"

# others
export DOTFILES=~/lib/dotfiles
export FZF_TMUX=1
export XDG_CONFIG_HOME=~/.config

# local
[ -f ~/.local.bash_profile ] && source ~/.local.bash_profile

# read .bashrc
[ -f ~/.bashrc ] && source ~/.bashrc


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

# PATH
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=~/.rbenv/shims:$PATH
PATH=$PATH:/usr/local/opt/coreutils/libexec/gnubin
export PATH

# Java
export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

# Node.js
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH

# others
export DOTFILES=~/lib/dotfiles

# local
[ -f ~/.local.bash_profile ] && source ~/.local.bash_profile

# read .bashrc
[ -f ~/.bashrc ] && source ~/.bashrc

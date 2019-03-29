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
PATH=/usr/local/bin:/usr/local/sbin:$PATH
PATH=$HOME/bin:$PATH
PATH=~/.rbenv/shims:$PATH
PATH=/usr/local/opt/openssl/bin:$PATH
PATH=/usr/local/opt/qt/bin:$PATH
PATH=~/Library/Python/3.7/bin:$PATH
export PATH

# Java
export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
export NODE_PATH=$NODE_PATH:`npm root -g`

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


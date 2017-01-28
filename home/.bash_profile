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
# PATH=$PATH:/usr/local/lib/appengine-java-sdk/bin
# PATH=$PATH:$ANDROID_HOME/tools
# PATH=$PATH:$CATALINA_HOME/bin
# PATH=$PATH:$MVN_HOME/bin
export PATH

# Ruby
#export RUBY_HOME=/usr/local/lib/ruby/1.8
#export GEM_HOME=/usr/local/lib/ruby/gems/1.8/gems

# Java
export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
#export ANDROID_HOME=/usr/local/lib/android-sdk-mac_86
#export CATALINA_HOME=~/dev/java/lib/apache-tomcat-6.0.32
#export MVN_HOME=~/dev/java/lib/apache-maven-3.0.2

# Node.js
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH

# Android NDK
#export ANDROID_HOME=/usr/local/opt/android-sdk
#export NDK_TOP=/usr/local/opt/android-ndk
#export SYSROOT=${NDK_TOP}/platforms/android-8/arch-arm
#export CFLAGS="-march=armv5te -msoft-float"
#export CC="${NDK_TOP}/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-gcc -mandroid --sysroot=${SYSROOT}"

# read .bashrc
[ -f ~/.bashrc ] && source ~/.bashrc

## .local.bash_profile
[ -f ~/.local.bash_profile ] && source ~/.local.bash_profile


# setup
pacman-key --init
pacman -Syuu

# install packages
pacman -S mingw-w64-i686-toolchain
pacman -S base-devel
pacman -S msys2-devel
pacman -S tmux-git
pacman -S openssh
pacman -S mingw-w64-i686-curl
pacman -S mingw-w64-i686-ruby
pacman -S mingw-w64-i686-lua
pacman -S mingw-w64-i686-python2
pacman -S mingw-w64-i686-python3
pacman -S mingw-w64-i686-perl
pacman -S mingw-w64-i686-ag
pacman -S mingw-w64-i686-jq
pacman -S mingw-w64-i686-universal-ctags-git


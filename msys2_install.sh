# コメントアウトはgit-for-windows-sdkでは不要ぽいもの

# setup
# pacman-key --init
# pacman -Syuu

# install packages
# pacman -S mingw-w64-i686-toolchain
pacman -S base-devel
pacman -S msys2-devel
#pacman -S tmux-git
pacman -S tmux
# pacman -S openssh
# pacman -S vim
# pacman -S mingw-w64-i686-curl
pacman -S mingw-w64-i686-ag
pacman -S mingw-w64-i686-jq
pacman -S mingw-w64-i686-universal-ctags-git

pacman -S mingw-w64-i686-python2
pacman -S mingw-w64-i686-python2-pip
pacman -S mingw-w64-i686-python3
pacman -S mingw-w64-i686-python3-pip
# pacman -S mingw-w64-i686-perl
pacman -S mingw-w64-i686-lua
pacman -S mingw-w64-i686-nodejs
pacman -S mingw-w64-i686-go

pip2 install --user neovim
pip3 install --user neovim
npm install -g neovim
gem install neovim


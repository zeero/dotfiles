@echo off

rem scoop
scoop bucket add extras
scoop bucket add my-bucket https://github.com/zeero/scoop-my-bucket.git

scoop install sudo
scoop install 7zip
scoop install firefox
scoop install nodejs

rem scoop-my-bucket
scoop install gvim-kaoriya
scoop install sakura
scoop install tortoisesvn
scoop install tortoisesvn_ja
scoop install a5m2
scoop install clipnote
scoop install explzh
scoop install honeyview
scoop install keyswap
scoop install kiki
scoop install mausuji
scoop install magnet_window
scoop install softtilt
scoop install wheel_redirector
scoop install cmigemo
scoop install nkf
scoop install mktemp
scoop install df
scoop install pathcp
scoop install madonote


REM TODO: make scoop package
choco install mactype -y
choco install msys2 -y
choco install git -y


rem chocolatey
choco install GoogleChrome -y
choco install GoogleJapaneseInput -y
choco install winscp -y


rem pacman
pacman -S base-devel
pacman -S msys2-devel
pacman -S tmux-git
pacman -S openssh
pacman -S mingw-w64-i686-ruby
pacman -S mingw-w64-i686-lua
pacman -S mingw-w64-i686-python2
pacman -S mingw-w64-i686-python3
pacman -S mingw-w64-i686-perl
pacman -S mingw-w64-i686-ag
pacman -S mingw-w64-i686-jq
pacman -S mingw-w64-i686-universal-ctags-git

REM mingwÇ÷ÇÃà⁄çsÇ…î∫Ç¢ïsóvåÛï‚
REM choco install putty -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\putty"
REM choco install teraterm -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\teraterm"
REM choco install ConEmu -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\ConEmu"
REM choco install clink -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\clink"
REM choco install Gow -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\Gow"
REM wget
REM curl

pause


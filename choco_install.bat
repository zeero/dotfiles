@echo off

rem install chocolatey
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
pause

rem install chocolatey packages
choco install vim -y
choco install msysgit -y
choco install Gow -y
choco install mingw -y
choco install mingw-get -y
choco install Lua -y
choco install ctags -y
rem choco install cmigemo -y
choco install curl -y
choco install ag -y
rem choco install nkf -y
rem choco install mktemp -y
echo TODO: cmigemo、nkf、mktemp は別途インストール

choco install ruby -y
choco install StrawberryPerl -y
choco install svn -y
choco install tortoisesvn  -y

choco install ConEmu -y
choco install picasa -y
choco install mactype -y
choco install putty -y
choco install teraterm -y

pause


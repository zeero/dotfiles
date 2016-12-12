@echo off

rem install chocolatey packages
choco install vim -y -ia "INSTALLDIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\vim"
choco install git.install -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\git"
choco install Git-Credential-Manager-for-Windows -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\Git-Credential-Manager-for-Windows"
choco install Gow -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\Gow"
choco install mingw -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\mingw"
choco install mingw-get -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\mingw-get"
choco install Lua -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\Lua"
rem TODO universal-ctags
choco install ctags -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\ctags"
choco install curl -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\curl"
choco install ag -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\ag"
choco install jq -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\jq"

choco install ruby -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\ruby"
choco install StrawberryPerl -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\StrawberryPerl"
choco install svn -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\svn"
choco install tortoisesvn  -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\tortoisesvn"

choco install Firefox -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\Firefox"
choco install GoogleChrome -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\GoogleChrome"
choco install picasa -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\picasa"
choco install mactype -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\mactype"
choco install putty -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\putty"
choco install teraterm -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\teraterm"
choco install ConEmu -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\ConEmu"
choco install clink -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\clink"

pause


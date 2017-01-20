@echo off

rem scoop
rem scoopをインストールします。
rem powershell3がインストールされていることを確認してください。
rem   @powershell -Command "set-executionpolicy unrestricted -s cu"
rem   @powershell -Command "iex (new-object net.webclient).downloadstring('https://get.scoop.sh')"
rem git-for-windows-sdkとgit-credential-manager-for-windowsをインストールしてください。
rem （git-for-windows-sdkではpacmanのついたmsysがインストールされます）
rem   scoop bucket add extras
rem   scoop bucket add my-bucket https://github.com/zeero/scoop-my-bucket.git
rem   scoop install git-for-windows-sdk git-credential-manager-for-windows

rem chocolatey
rem chocolateyをインストールします。
rem   @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))"
rem   set PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

rem dotfilesをダウンロードします。
rem   git clone https://github.com/zeero/dotfiles.git


set DOTFILES=%~dp0
setx DOTFILES %~dp0
cd /d %DOTFILES%

rem mkdir
mkdir %HOMEDRIVE%%HOMEPATH%\bin
mkdir %HOMEDRIVE%%HOMEPATH%\tmp
mkdir %HOMEDRIVE%%HOMEPATH%\lib

rem setx
set HOME=%HOMEDRIVE%%HOMEPATH%
setx HOME %HOMEDRIVE%%HOMEPATH%
rem このスクリプト内での一時的なPATH追加
set PATH=%HOME%\bin;%HOME%\lib\git-sdk-32\mingw32\bin;%HOME%\lib\git-sdk-32\usr\bin;%PATH%
echo 以下を環境変数PATHに追加してください
echo %HOME%\bin;%HOME%\lib\git-sdk-32\mingw32\bin;%HOME%\lib\git-sdk-32\usr\bin
pause
echo.

rem scoop
scoop install sudo
scoop install 7zip
scoop install firefox
scoop install nodejs
rem scoop-my-bucket
scoop install gvim-kaoriya
scoop install sakura
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
REM TODO: 要検証
scoop install mactype
REM TODO: 要調整
REM scoop install tortoisesvn
REM scoop install tortoisesvn_ja

rem chocolatey
choco install GoogleChrome -y
choco install GoogleJapaneseInput -y
choco install winscp -y
choco install tortoisesvn -y
REM mingwへの移行に伴い不要候補
REM choco install putty -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\putty"
REM choco install teraterm -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\teraterm"
REM choco install ConEmu -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\ConEmu"
REM choco install clink -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\clink"
REM choco install Gow -y -ia "/DIR=%HOMEDRIVE%%HOMEPATH%\lib\choco\Gow"
REM wget
REM curl

REM TODO: コマンド実行できるか確認
REM bash msys2_install.sh


rem git configuration
git config --global user.name zeero
git config --global user.email zeero26@gmail.com
git config --global push.default simple
git config --global http.sslVerify false
git config --global core.excludesfile ~/.gitignore
git config --global core.autocrlf false
git config --global core.editor vim
git config --global diff.tool vimdiff
git config --global diff.algorithm histogram
git config --global merge.tool vimdiff
git config --global alias.co "checkout"
git config --global alias.st "status"
git config --global alias.graph "log --graph --decorate --name-status"
git config --global alias.ignore "update-index --skip-worktree"
git config --global alias.noignore "update-index --no-skip-worktree"
git config --global alias.stashdiff "diff HEAD..stash@{0}"
pause
echo.

rem git submodule
git submodule update --init

rem symlink
rem home
move %HOMEDRIVE%%HOMEPATH%\vimperator %HOMEDRIVE%%HOMEPATH%\vimperator.org
mklink /d %HOMEDRIVE%%HOMEPATH%\vimfiles %DOTFILES%\vim
mklink /d %HOMEDRIVE%%HOMEPATH%\vimperator %DOTFILES%\vimperator
mklink %HOMEDRIVE%%HOMEPATH%\_vimrc %DOTFILES%\vim\vimrc
mklink %HOMEDRIVE%%HOMEPATH%\_vimperatorrc %DOTFILES%\vimperator\vimperatorrc
mklink %HOMEDRIVE%%HOMEPATH%\.gitignore %DOTFILES%\home\.gitignore
mklink %HOMEDRIVE%%HOMEPATH%\.ctags %DOTFILES%\home\.ctags
mklink %HOMEDRIVE%%HOMEPATH%\.tmux.conf %DOTFILES%\home\.tmux.conf
rem whome
mklink %HOMEDRIVE%%HOMEPATH%\.minttyrc %DOTFILES%\whome\.minttyrc
mklink %HOMEDRIVE%%HOMEPATH%\.bashrc %DOTFILES%\whome\.bashrc
mklink %HOMEDRIVE%%HOMEPATH%\.bash_profile %DOTFILES%\whome\.bash_profile
mklink %HOMEDRIVE%%HOMEPATH%\.inputrc %DOTFILES%\whome\.inputrc
mklink %HOMEDRIVE%%HOMEPATH%\.profile %DOTFILES%\whome\.profile
move %HOMEDRIVE%%HOMEPATH%\scoop\apps\mausuji\1.33\MauSuji.ini %HOMEDRIVE%%HOMEPATH%\scoop\apps\mausuji\1.33\MauSuji.ini.org
mklink %HOMEDRIVE%%HOMEPATH%\scoop\apps\mausuji\1.33\MauSuji.ini %DOTFILES%\whome\mausuji\MauSuji.ini
rem msys2
move %HOMEDRIVE%%HOMEPATH%\lib\git-sdk-32\etc\pacman.conf %HOMEDRIVE%%HOMEPATH%\lib\git-sdk-32\etc\pacman.conf.org
mklink %HOMEDRIVE%%HOMEPATH%\lib\git-sdk-32\etc\pacman.conf %DOTFILES%\msys2\etc\pacman.conf
mklink /d %HOMEDRIVE%%HOMEPATH%\.vim %DOTFILES%\vim
move %HOMEDRIVE%%HOMEPATH%\.vimrc %HOMEDRIVE%%HOMEPATH%\.vimrc.org
mklink %HOMEDRIVE%%HOMEPATH%\.vimrc %DOTFILES%\vim\vimrc
rem wbin
mklink %HOMEDRIVE%%HOMEPATH%\bin\open.bat %DOTFILES%\whome\bin\open.bat
mklink %HOMEDRIVE%%HOMEPATH%\bin\PPPath.bat %DOTFILES%\whome\bin\PPPath.bat
mklink %HOMEDRIVE%%HOMEPATH%\bin\Shortcut.CMD %DOTFILES%\whome\bin\Shortcut.CMD
mklink %HOMEDRIVE%%HOMEPATH%\bin\svn_path_copy.bat %DOTFILES%\whome\bin\svn_path_copy.bat
rem shortcut
shortcut /t:"%HOMEDRIVE%%HOMEPATH%" %HOMEDRIVE%%HOMEPATH%\bin\home.lnk
shortcut /t:"%HOMEDRIVE%%HOMEPATH%\Downloads" %HOMEDRIVE%%HOMEPATH%\bin\dl.lnk
shortcut /t:"%HOMEDRIVE%%HOMEPATH%\bin" %HOMEDRIVE%%HOMEPATH%\bin\bin.lnk
shortcut /t:"%HOMEDRIVE%%HOMEPATH%\lib" %HOMEDRIVE%%HOMEPATH%\bin\lib.lnk
shortcut /t:"%HOMEDRIVE%%HOMEPATH%\tmp" %HOMEDRIVE%%HOMEPATH%\bin\tmp.lnk
shortcut /t:"%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" %HOMEDRIVE%%HOMEPATH%\bin\startup.lnk
shortcut /t:"%windir%\System32\drivers\etc\hosts" %HOMEDRIVE%%HOMEPATH%\bin\hosts.lnk
shortcut /t:"%windir%\system32\services.msc" %HOMEDRIVE%%HOMEPATH%\bin\svc.lnk
shortcut /t:"C:\Program Files\Internet Explorer\iexplore.exe" %HOMEDRIVE%%HOMEPATH%\bin\ie.lnk
shortcut /t:"%HOME%\lib\git-sdk-32\git-bash.exe" %HOMEDRIVE%%HOMEPATH%\bin\mingw.lnk
shortcut /t:"C:\Program Files\Google\Google Japanese Input\GoogleIMEJaTool.exe" /a:"--mode=word_register_dialog" %HOMEDRIVE%%HOMEPATH%\bin\dct.lnk
shortcut /t:"C:\Program Files\TortoiseSVN\bin\TortoiseProc.exe" /a:"/command:repobrowser" %HOMEDRIVE%%HOMEPATH%\bin\svnb.lnk
rem sendto
shortcut /t:"%HOMEDRIVE%%HOMEPATH%\scoop\shims\DF.exe" %HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\SendTo\DFで開く.lnk
shortcut /t:"C:\Program Files\Internet Explorer\iexplore.exe" %HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\SendTo\IEで開く.lnk
shortcut /t:"%HOMEDRIVE%%HOMEPATH%\bin\svn_path_copy.bat" %HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\SendTo\SVNレポジトリURLをコピー.lnk
rem startup
shortcut /t:"%HOMEDRIVE%%HOMEPATH%\scoop\apps\clipnote\current\clipnote2.exe" "%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\ClipNote.lnk"
shortcut /t:"%HOMEDRIVE%%HOMEPATH%\scoop\apps\mausuji\current\MauSuji.exe" "%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\MauSuji.lnk"
shortcut /t:"%HOMEDRIVE%%HOMEPATH%\scoop\apps\magnet_window\current\MgntWnd58003\MgntWnd.exe" "%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\MgntWnd.lnk"
shortcut /t:"%HOMEDRIVE%%HOMEPATH%\scoop\apps\softtilt\current\SoftTilt.exe" "%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SoftTilt.lnk"
shortcut /t:"%HOMEDRIVE%%HOMEPATH%\scoop\apps\wheel_redirector\current\Wheel Redirector.exe" "%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\WheelRedirector.lnk"
REM shortcut /t:"" %HOMEDRIVE%%HOMEPATH%\bin\my.lnk
REM shortcut /t:"" %HOMEDRIVE%%HOMEPATH%\bin\ol.lnk
REM shortcut /t:"" %HOMEDRIVE%%HOMEPATH%\bin\sys.lnk
echo.
echo %HOME%\binにmy、ol、sysのショートカットを手動で作成してください。
pause
echo.

rem Ricty
echo RictyDiminishedをインストールしてください。
explorer lib\RictyDiminished\RictyDiminished-Regular.ttf
explorer lib\RictyDiminished\RictyDiminished-Bold.ttf
explorer lib\RictyDiminished\RictyDiminished-Oblique.ttf
explorer lib\RictyDiminished\RictyDiminished-BoldOblique.ttf
pause
echo.

rem vimproc
echo NeoBundleInstallでvimprocのコンパイルが通るはず。
echo （うまくいかなかったらmingw32から「make -f make_mingw32.mak」を実行）
echo （pacmanからインストールしたvimを使う場合、vimproc_cygwin.dllが必要となる。msys2から「/usr/bin/make -f make_cygwin.mak」を実行）
pause
echo.

rem others
echo その他設定
echo ■キーリピートを速くする方が快適。以下のどちらかを実施。
echo 　・レジストリをいじる
echo 　　１．regedit
echo 　　２．HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response
echo 　　３．"AutoRepeatDelay"="300" "AutoRepeatRate"="16" "BounceTime"="0" "DelayBeforeAcceptance"="0" "Flags"="59"
echo 　・コンパネ→キーボード→表示までの待ち時間を短く
echo ■コンテキストメニューに「Vimで開く」を追加する。
echo 　・レジストリをいじる
echo 　　１．regedit
echo 　　２．「HKEY_CLASSES_ROOT\*\Shell」に移動
echo 　　３．Shellキーの中に新規キーgvimを作成する。
echo 　　４．gvimキーの文字列の値を「Vimで開く(&V)」に変更
echo 　　５．「Vimで開く」キーの中に新規キーcommandを作成する。
echo 　　６．commandキーの文字列の値を変更
echo 　　　　"${gvim.exeへのフルパス}" "%1"
pause
echo.

rem finally
echo 以下のコマンドで起動
echo vim +NeoBundleInstall +qall
pause


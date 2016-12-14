@echo off

rem chocolatey
rem まずは以下のコマンドを実行して、chocolateyをインストールする
rem @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

rem choco_install.batを実行

rem インストールが終わったら、dotfilesを落とします
rem git clone https://github.com/zeero/dotfiles.git


cd /d %~dp0

rem git submodule
git submodule update --init

rem symlink
move %HOMEDRIVE%%HOMEPATH%\vimperator %HOMEDRIVE%%HOMEPATH%\vimperator.org
mklink /d %HOMEDRIVE%%HOMEPATH%\vimfiles %~dp0\vim
mklink /d %HOMEDRIVE%%HOMEPATH%\vimperator %~dp0\vimperator
mklink %HOMEDRIVE%%HOMEPATH%\_vimrc %~dp0\vim\vimrc
mklink %HOMEDRIVE%%HOMEPATH%\_vimperatorrc %~dp0\vimperator\vimperatorrc
mklink %HOMEDRIVE%%HOMEPATH%\.gitignore %~dp0\home\.gitignore
mklink %HOMEDRIVE%%HOMEPATH%\.ctags %~dp0\home\.ctags
rem msys2
mklink %HOMEDRIVE%%HOMEPATH%\lib\msys32\home\%USERNAME%\.minttyrc %~dp0\msys2\home\.minttyrc
move %HOMEDRIVE%%HOMEPATH%\lib\msys32\etc\pacman.conf %HOMEDRIVE%%HOMEPATH%\lib\msys32\etc\pacman.conf.org
mklink %HOMEDRIVE%%HOMEPATH%\lib\msys32\etc\pacman.conf %~dp0\msys2\etc\pacman.conf
pause
echo.

rem git configuration
git config --global user.name zeero
git config --global user.email zeero26@gmail.com
git config --global push.default simple
git config --global http.sslVerify false
git config --global core.excludesfile ~/.gitignore
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
echo （うまくいかなかったら「make -f make_mingw32.mak」を実行）
pause
echo.

echo 別途インストールが必要なソフトウェア
echo ・mactype（chocolateyパッケージが壊れている）
echo 　　https://github.com/snowie2000/mactype/releases
echo ・cmigemo
echo 　　http://www.kaoriya.net/software/cmigemo/
echo ・nkf
echo 　　http://www.vector.co.jp/soft/win95/util/se295331.html
echo ・mktemp
echo 　　http://gnuwin32.sourceforge.net/packages/mktemp.htm
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
echo 　　３．Shellキーの中に新規キー「Vimで開く」を作成
echo 　　４．「Vimで開く」キーの中に新規キーcommandを作成する。
echo 　　５．commandキーの文字列の値を変更
echo 　　　　"${gvim.exeへのフルパス}" "%1"
pause
echo.


rem finally
echo 以下のコマンドで起動
echo vim +NeoBundleInstall +qall


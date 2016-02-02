@echo off

cd /d %~dp0

rem symlink
move %HOMEDRIVE%%HOMEPATH%\vimperator %HOMEDRIVE%%HOMEPATH%\vimperator.org
mklink /d %HOMEDRIVE%%HOMEPATH%\vimfiles %~dp0\vim
mklink /d %HOMEDRIVE%%HOMEPATH%\vimperator %~dp0\vimperator
mklink %HOMEDRIVE%%HOMEPATH%\_vimrc %~dp0\vim\vimrc
mklink %HOMEDRIVE%%HOMEPATH%\_vimperatorrc %~dp0\vimperator\vimperatorrc
mklink %HOMEDRIVE%%HOMEPATH%\.gitignore %~dp0\home\.gitignore
mklink %HOMEDRIVE%%HOMEPATH%\.ctags %~dp0\home\.ctags
pause

rem git submodules (NeoBundle, etc)
git submodule update --init

rem git configuration
git config --global user.name zeero
git config --global user.email zeero26@gmail.com
git config --global github.user zeero
git config --global diff.algorithm histogram
git config --global diff.tool vimdiff
git config --global push.default matching
git config --global core.excludesfile ~/.gitignore

rem Ricty
echo RictyDiminishedをインストールしてください。
explorer lib\RictyDiminished\RictyDiminished-Regular.ttf
explorer lib\RictyDiminished\RictyDiminished-Bold.ttf
explorer lib\RictyDiminished\RictyDiminished-Oblique.ttf
explorer lib\RictyDiminished\RictyDiminished-BoldOblique.ttf
pause
echo.

rem chocolatey
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
echo コマンドプロンプトを再起動して、choco_install.batを実行してください。
echo 別途インストールが必要なソフトウェア
echo ・cmigemo
echo 　　http://www.kaoriya.net/software/cmigemo/
echo ・nkf
echo 　　http://www.vector.co.jp/soft/win95/util/se295331.html
echo ・mktemp
echo 　　http://gnuwin32.sourceforge.net/packages/mktemp.htm
pause
echo.

rem vimproc
echo NeoBundleInstallでvimprocのコンパイルが通るはず。
echo （うまくいかなかったら「make -f make_mingw32.mak」を実行）
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


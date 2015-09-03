@echo off

cd /d %~dp0

rem symlink
move %HOMEDRIVE%%HOMEPATH%\vimperator %HOMEDRIVE%%HOMEPATH%\vimperator.org
mklink /d %HOMEDRIVE%%HOMEPATH%\vimfiles vim
mklink /d %HOMEDRIVE%%HOMEPATH%\vimperator vimperator
mklink %HOMEDRIVE%%HOMEPATH%\_vimrc vim\vimrc
mklink %HOMEDRIVE%%HOMEPATH%\_vimperatorrc vimperator\vimperatorrc

rem git submodules (NeoBundle, etc)
git submodule update --init

rem Ricty
echo RictyDiminishedをインストールしてください。
explorer RictyDiminished\RictyDiminished-Regular.ttf
explorer RictyDiminished\RictyDiminished-Bold.ttf
explorer RictyDiminished\RictyDiminished-Oblique.ttf
explorer RictyDiminished\RictyDiminished-BoldOblique.ttf
pause

rem vimproc
echo １．vimprocコンパイルのために以下をダウンロードし、インストールしてください。
echo ・Gnu on Windows
echo https://github.com/bmatzelle/gow/wiki
echo ・MinGW（「mingw32-base」をメニューから選択してインストール）
echo http://sourceforge.net/projects/mingw/
echo ２．両方のインストールパス直下のbinフォルダにPathを通す。
echo ３．インストールが終わったらNeoBundleInstallでコンパイルが通るはず。
echo （うまくいかなかったら「make -f make_mingw32.mak」を実行）
pause

rem others
echo その他インストールが必要なソフトウェア
echo ・lua
echo ・ctags
echo ・cmigemo
echo ・curl（プロクシ必要な場合は~/_curlrc作ること）
echo ・Ag（The silver searcher）
pause


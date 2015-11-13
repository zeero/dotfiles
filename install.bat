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

rem Ricty
echo RictyDiminishedをインストールしてください。
explorer lib\RictyDiminished\RictyDiminished-Regular.ttf
explorer lib\RictyDiminished\RictyDiminished-Bold.ttf
explorer lib\RictyDiminished\RictyDiminished-Oblique.ttf
explorer lib\RictyDiminished\RictyDiminished-BoldOblique.ttf
pause
echo.

rem vimproc
echo １．vimprocコンパイルのために以下をダウンロードし、インストール。
echo ・Gnu on Windows
echo https://github.com/bmatzelle/gow/wiki
echo ・MinGW（「mingw32-base」をメニューから選択してインストール）
echo http://sourceforge.net/projects/mingw/
echo ２．両方のインストールパス直下のbinフォルダにPathを通す。
echo ３．インストールが終わったらNeoBundleInstallでコンパイルが通るはず。
echo （うまくいかなかったら「make -f make_mingw32.mak」を実行）
pause
echo.

rem others
echo その他インストールが必要なソフトウェア
echo ・lua
echo ・ctags
echo ・cmigemo
echo ・curl（プロクシ必要な場合は~/_curlrc作ること）
echo ・Ag（The silver searcher）
echo ・nkf
echo 　　http://www.vector.co.jp/soft/win95/util/se295331.html
echo.
echo その他設定
echo ・msysgitのバグでgit pushが失敗するので以下の対応をとること。
echo 　・https://username:password@bitbucket.org/username/reponame.git のようにユーザー、パスワードを指定する
echo 　　・git remote set-url origin ${REPO_URL}
echo 　・sshプロトコルを使用する
echo 　・gitプロトコルを使用する
echo 　・1.8.4にダウングレードする
echo ・キーリピートを速くする方が快適。以下のどちらかを実施。
echo 　・レジストリをいじる
echo 　　１．regedit
echo 　　２．HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response
echo 　　３．"AutoRepeatDelay"="300" "AutoRepeatRate"="16" "BounceTime"="0" "DelayBeforeAcceptance"="0" "Flags"="59"
echo 　・コンパネ→キーボード→表示までの待ち時間を短く
pause
echo.


rem finally
echo 以下のコマンドで起動
echo vim +NeoBundleInstall +qall


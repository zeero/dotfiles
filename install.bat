@echo off

rem chocolatey
rem �܂��͈ȉ��̃R�}���h�����s���āAchocolatey���C���X�g�[������
rem @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

rem choco_install.bat�����s

rem �C���X�g�[�����I�������Adotfiles�𗎂Ƃ��܂�
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
echo RictyDiminished���C���X�g�[�����Ă��������B
explorer lib\RictyDiminished\RictyDiminished-Regular.ttf
explorer lib\RictyDiminished\RictyDiminished-Bold.ttf
explorer lib\RictyDiminished\RictyDiminished-Oblique.ttf
explorer lib\RictyDiminished\RictyDiminished-BoldOblique.ttf
pause
echo.

rem vimproc
echo NeoBundleInstall��vimproc�̃R���p�C�����ʂ�͂��B
echo �i���܂������Ȃ�������umake -f make_mingw32.mak�v�����s�j
pause
echo.

echo �ʓr�C���X�g�[�����K�v�ȃ\�t�g�E�F�A
echo �Emactype�ichocolatey�p�b�P�[�W�����Ă���j
echo �@�@https://github.com/snowie2000/mactype/releases
echo �Ecmigemo
echo �@�@http://www.kaoriya.net/software/cmigemo/
echo �Enkf
echo �@�@http://www.vector.co.jp/soft/win95/util/se295331.html
echo �Emktemp
echo �@�@http://gnuwin32.sourceforge.net/packages/mktemp.htm
pause
echo.

rem others
echo ���̑��ݒ�
echo ���L�[���s�[�g�𑬂�����������K�B�ȉ��̂ǂ��炩�����{�B
echo �@�E���W�X�g����������
echo �@�@�P�Dregedit
echo �@�@�Q�DHKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response
echo �@�@�R�D"AutoRepeatDelay"="300" "AutoRepeatRate"="16" "BounceTime"="0" "DelayBeforeAcceptance"="0" "Flags"="59"
echo �@�E�R���p�l���L�[�{�[�h���\���܂ł̑҂����Ԃ�Z��
echo ���R���e�L�X�g���j���[�ɁuVim�ŊJ���v��ǉ�����B
echo �@�E���W�X�g����������
echo �@�@�P�Dregedit
echo �@�@�Q�D�uHKEY_CLASSES_ROOT\*\Shell�v�Ɉړ�
echo �@�@�R�DShell�L�[�̒��ɐV�K�L�[�uVim�ŊJ���v���쐬
echo �@�@�S�D�uVim�ŊJ���v�L�[�̒��ɐV�K�L�[command���쐬����B
echo �@�@�T�Dcommand�L�[�̕�����̒l��ύX
echo �@�@�@�@"${gvim.exe�ւ̃t���p�X}" "%1"
pause
echo.


rem finally
echo �ȉ��̃R�}���h�ŋN��
echo vim +NeoBundleInstall +qall


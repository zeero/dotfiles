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
echo RictyDiminished���C���X�g�[�����Ă��������B
explorer lib\RictyDiminished\RictyDiminished-Regular.ttf
explorer lib\RictyDiminished\RictyDiminished-Bold.ttf
explorer lib\RictyDiminished\RictyDiminished-Oblique.ttf
explorer lib\RictyDiminished\RictyDiminished-BoldOblique.ttf
pause
echo.

rem chocolatey
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
echo �R�}���h�v�����v�g���ċN�����āAchoco_install.bat�����s���Ă��������B
echo �ʓr�C���X�g�[�����K�v�ȃ\�t�g�E�F�A
echo �Ecmigemo
echo �@�@http://www.kaoriya.net/software/cmigemo/
echo �Enkf
echo �@�@http://www.vector.co.jp/soft/win95/util/se295331.html
echo �Emktemp
echo �@�@http://gnuwin32.sourceforge.net/packages/mktemp.htm
pause
echo.

rem vimproc
echo NeoBundleInstall��vimproc�̃R���p�C�����ʂ�͂��B
echo �i���܂������Ȃ�������umake -f make_mingw32.mak�v�����s�j
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


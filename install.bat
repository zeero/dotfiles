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
echo RictyDiminished���C���X�g�[�����Ă��������B
explorer lib\RictyDiminished\RictyDiminished-Regular.ttf
explorer lib\RictyDiminished\RictyDiminished-Bold.ttf
explorer lib\RictyDiminished\RictyDiminished-Oblique.ttf
explorer lib\RictyDiminished\RictyDiminished-BoldOblique.ttf
pause
echo.

rem vimproc
echo �P�Dvimproc�R���p�C���̂��߂Ɉȉ����_�E�����[�h���A�C���X�g�[���B
echo �EGnu on Windows
echo https://github.com/bmatzelle/gow/wiki
echo �EMinGW�i�umingw32-base�v�����j���[����I�����ăC���X�g�[���j
echo http://sourceforge.net/projects/mingw/
echo �Q�D�����̃C���X�g�[���p�X������bin�t�H���_��Path��ʂ��B
echo �R�D�C���X�g�[�����I�������NeoBundleInstall�ŃR���p�C�����ʂ�͂��B
echo �i���܂������Ȃ�������umake -f make_mingw32.mak�v�����s�j
pause
echo.

rem others
echo ���̑��C���X�g�[�����K�v�ȃ\�t�g�E�F�A
echo �Elua
echo �Ectags
echo �Ecmigemo
echo �Ecurl�i�v���N�V�K�v�ȏꍇ��~/_curlrc��邱�Ɓj
echo �EAg�iThe silver searcher�j
echo �Enkf
echo �@�@http://www.vector.co.jp/soft/win95/util/se295331.html
echo.
echo ���̑��ݒ�
echo �Emsysgit�̃o�O��git push�����s����̂ňȉ��̑Ή����Ƃ邱�ƁB
echo �@�Ehttps://username:password@bitbucket.org/username/reponame.git �̂悤�Ƀ��[�U�[�A�p�X���[�h���w�肷��
echo �@�@�Egit remote set-url origin ${REPO_URL}
echo �@�Essh�v���g�R�����g�p����
echo �@�Egit�v���g�R�����g�p����
echo �@�E1.8.4�Ƀ_�E���O���[�h����
echo �E�L�[���s�[�g�𑬂�����������K�B�ȉ��̂ǂ��炩�����{�B
echo �@�E���W�X�g����������
echo �@�@�P�Dregedit
echo �@�@�Q�DHKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response
echo �@�@�R�D"AutoRepeatDelay"="300" "AutoRepeatRate"="16" "BounceTime"="0" "DelayBeforeAcceptance"="0" "Flags"="59"
echo �@�E�R���p�l���L�[�{�[�h���\���܂ł̑҂����Ԃ�Z��
pause
echo.


rem finally
echo �ȉ��̃R�}���h�ŋN��
echo vim +NeoBundleInstall +qall


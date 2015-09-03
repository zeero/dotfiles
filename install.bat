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
echo RictyDiminished���C���X�g�[�����Ă��������B
explorer RictyDiminished\RictyDiminished-Regular.ttf
explorer RictyDiminished\RictyDiminished-Bold.ttf
explorer RictyDiminished\RictyDiminished-Oblique.ttf
explorer RictyDiminished\RictyDiminished-BoldOblique.ttf
pause

rem vimproc
echo �P�Dvimproc�R���p�C���̂��߂Ɉȉ����_�E�����[�h���A�C���X�g�[�����Ă��������B
echo �EGnu on Windows
echo https://github.com/bmatzelle/gow/wiki
echo �EMinGW�i�umingw32-base�v�����j���[����I�����ăC���X�g�[���j
echo http://sourceforge.net/projects/mingw/
echo �Q�D�����̃C���X�g�[���p�X������bin�t�H���_��Path��ʂ��B
echo �R�D�C���X�g�[�����I�������NeoBundleInstall�ŃR���p�C�����ʂ�͂��B
echo �i���܂������Ȃ�������umake -f make_mingw32.mak�v�����s�j
pause

rem others
echo ���̑��C���X�g�[�����K�v�ȃ\�t�g�E�F�A
echo �Elua
echo �Ectags
echo �Ecmigemo
echo �Ecurl�i�v���N�V�K�v�ȏꍇ��~/_curlrc��邱�Ɓj
echo �EAg�iThe silver searcher�j
pause


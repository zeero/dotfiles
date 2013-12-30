@echo off
rem ~/.vim/bundle/vimproc/.git/hooks/post-merge.batとしてシンボリックリンクで配置

echo.
echo "START POST-MERGE HOOK"
echo.

rem git_hooks directory
set HOOK_DIR=%~dp0
rem vimproc directory
set PROC_DIR="%HOOK_DIR%\..\.."

set MAKE_FILE="make_mingw32.mak"

cd %PROC_DIR%

echo "compiling ..."
make -f %MAKE_FILE%
echo "done"
echo ""

echo "vimproc: build success!"
echo ""

echo "END POST-MERGE HOOK"


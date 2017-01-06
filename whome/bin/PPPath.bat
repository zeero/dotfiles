@echo off

echo %PATH% | sed -re "s/;/\n/g"
pause


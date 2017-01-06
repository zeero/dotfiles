@echo off

cd /d %~dp1

svn info %~nx1 | grep "^URL" | cut -b 6- | nkf32 --url-input | clip


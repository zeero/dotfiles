#!/bin/bash

DOTFILES=`dirname $0`/..

bitclust setup

# Xcode8以降にalcatrazを導入する場合、以下のコマンド実行が必要になる
# Xcodeのバージョンとxcodebuildコマンドも対象にするか聞かれるので対象にして実行する
update_xcode_plugins
update_xcode_plugins --unsign


#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

cat ${DOTFILES}/Gemlist | gxargs -E'__EOF__' gem install

gem specific_install -l http://github.com/zeero/ruboty-gen.git


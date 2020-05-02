#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

npm update -g npm
cat ${DOTFILES}/Nodelist | gxargs -E'__EOF__' npm install -g


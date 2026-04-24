#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

mkdir -p ~/.config/npm
npm config set prefix '~/.config/npm'
npm update -g npm
cat ${DOTFILES}/Nodelist | gxargs -E'__EOF__' npm install -g


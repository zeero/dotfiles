#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

cat ${DOTFILES}/Uvlist | gxargs -E'__EOF__' uv tool install


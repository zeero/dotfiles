#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

cat ${DOTFILES}/Mintlist | gxargs -L1 -E'__EOF__' mint install


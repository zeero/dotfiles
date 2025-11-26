#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

cat ${DOTFILES}/Piplist | gxargs -E'__EOF__' pip3 install --user


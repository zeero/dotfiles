#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

cat ${DOTFILES}/Uvlist | xargs -n1 uv tool install


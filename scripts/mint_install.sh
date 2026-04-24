#!/bin/bash

DOTFILES=$(realpath "$(dirname "$(realpath "$0")")/..")

cat ${DOTFILES}/Mintlist | gxargs -L1 -E'__EOF__' mint install


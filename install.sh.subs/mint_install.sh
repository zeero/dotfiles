#!/bin/bash

DOTFILES=`dirname $0`/..

cat ${DOTFILES}/Mintlist | gxargs -L1 -E'__EOF__' mint install


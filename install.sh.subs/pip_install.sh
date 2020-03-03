#!/bin/bash

DOTFILES=`dirname $0`/..

cat ${DOTFILES}/Piplist | gxargs -E'__EOF__' pip3 install --user


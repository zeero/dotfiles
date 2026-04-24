#!/bin/bash

DOTFILES=$(realpath "$(dirname "$(realpath "$0")")/..")

cat ${DOTFILES}/Piplist | gxargs -E'__EOF__' uv pip install --system


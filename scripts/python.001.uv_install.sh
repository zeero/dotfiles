#!/bin/bash

DOTFILES=$(realpath "$(dirname "$(realpath "$0")")/..")

cat ${DOTFILES}/Uvlist | xargs -n1 uv tool install


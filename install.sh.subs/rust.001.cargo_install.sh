#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

cat ${DOTFILES}/Cargolist | xargs -L1 cargo install

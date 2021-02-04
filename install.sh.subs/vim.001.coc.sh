#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

mkdir -p ~/.config/coc
ln -sf ${DOTFILES}/home/.config/coc/extensions ~/.config/coc/extensions
npm --prefix ~/.config/coc/extensions install --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod ~/.config/coc/extensions


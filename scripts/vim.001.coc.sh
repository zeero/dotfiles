#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

mkdir -p ~/.config/coc
npm --prefix ~/.config/coc/extensions install --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod


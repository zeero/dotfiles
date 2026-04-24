#!/bin/bash

DOTFILES=$(realpath "$(dirname "$(realpath "$0")")/..")

gem install yard
yard gems
yard config --gem-install-yri


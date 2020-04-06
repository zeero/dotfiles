#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

gem install yard
yard gems
yard config --gem-install-yri


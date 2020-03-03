#!/bin/bash

DOTFILES=`dirname $0`/..

gem install yard
yard gems
yard config --gem-install-yri


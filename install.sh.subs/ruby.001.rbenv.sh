#!/bin/bash

DOTFILES=`dirname $0`/..

RUBY_CONFIGURE_OPTS="--with-readline-dir=`brew --prefix readline`" rbenv install 2.6.5
rbenv global 2.6.5


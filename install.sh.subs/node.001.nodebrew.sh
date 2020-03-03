#!/bin/bash

DOTFILES=`dirname $0`/..

mkdir -p ~/.nodebrew/src
nodebrew install-binary 10.14.2


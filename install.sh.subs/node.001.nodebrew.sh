#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

mkdir -p ~/.nodebrew/src
nodebrew install-binary 10.14.2


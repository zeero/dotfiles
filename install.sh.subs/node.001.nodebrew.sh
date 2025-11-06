#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

mkdir -p ~/.nodebrew/src
nodebrew install-binary 24.11.0


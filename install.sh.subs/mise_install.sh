#!/bin/bash

DOTFILES=$(dirname $(realpath $0))/..

mise install
mise settings set idiomatic_version_file_enable_tools node


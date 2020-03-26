#!/bin/bash

DOTFILES=`dirname $0`/..
TIMESTAMP=`date "+%Y%m%d%H%M%S"`
PRE_LOG=~/log/install.sh.logs/`basename $0 .sh`.${TIMESTAMP}.pre.log
POST_LOG=~/log/install.sh.logs/`basename $0 .sh`.${TIMESTAMP}.post.log

# log
mkdir -p ~/log/install.sh.logs/
defaults read >> ${PRE_LOG}

# main
ruby `dirname $0`/osx_defaults.rb

# log
defaults read >> ${POST_LOG}

# diff
diff -u ${PRE_LOG} ${POST_LOG}


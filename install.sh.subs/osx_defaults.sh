#!/bin/bash

DOTFILES=`dirname $0`/..
TIMESTAMP=`date "+%Y%m%d%H%M%S"`

# log
mkdir -p ~/log/install.sh.logs/
defaults read >> ~/log/install.sh.logs/`basename $0 .sh`.${TIMESTAMP}.pre.log

## OS
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# フルスクリーン維持するため、アプリケーション終了時のウィンドウの復元をする
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool true
defaults write "com.apple.AppleMultitouchTrackpad" "TrackpadCornerSecondaryClick" -int 2
defaults write "com.apple.AppleMultitouchTrackpad" "TrackpadRightClick" -bool false
defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" "TrackpadCornerSecondaryClick" -int 2
defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" "TrackpadRightClick" -bool false
defaults write "com.apple.dock" "showAppExposeGestureEnabled" -bool true
defaults write "com.apple.preference.general" "version" -int 1
defaults write "com.apple.AppleMultitouchTrackpad" "DragLock" -bool true
defaults write "com.apple.AppleMultitouchTrackpad" "Clicking" -bool true
defaults write "com.apple.AppleMultitouchTrackpad" "Dragging" -bool true
defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" "DragLock" -bool true
defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" "Clicking" -bool true
defaults write "com.apple.driver.AppleBluetoothMultitouch.trackpad" "Dragging" -bool true
## Dock
defaults write "com.apple.dock" "tilesize" -int 32
defaults write "com.apple.dock" "magnification" -bool true
defaults write "com.apple.dock" "autohide" -bool true
## iTerm2
defaults write "com.googlecode.iterm2" "QuitWhenAllWindowsClosed" -bool true
## Clipy
defaults write "com.clipy-app.Clipy" "kCPYPrefNumberOfItemsPlaceInlineKey" -int 10
## Xcode
defaults write "com.apple.dt.Xcode" "ShowBuildOperationDuration" -bool true

# log
defaults read >> ~/log/install.sh.logs/`basename $0 .sh`.${TIMESTAMP}.post.log


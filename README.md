# dotfiles

My configuration files.

## Usage

1. Xcode install
   * sudo xcode-select -s /Applications/Xcode.app
   * インストールが終わってから次へ進むこと
1. chsh -s /bin/zsh
1. Homebrew install
1. brew install git
1. git clone git@github.com:zeero/dotfiles.git
1. source ./dotfiles/home/.zprofile
1. source ./dotfiles/home/.zshrc
1. ./dotfiles/install.sh

## Manual Configurations
* ダブルタップでドラッグするために「システム環境設定」の「アクセシビリティ」→「マウスとトラックパッド」→「トラックパッドオプション」→「ドラッグロック」を有効にする
* キー移動を速くするために「システム環境設定」の「キーボード」からキーリピート、リピート認識を最大にする
* シフトスペースをVimに送るためにGoogleIMEの英語キーボードを導入すること
* システム環境設定＞Mission Control＞最新の使用状況に基づいて操作スペースを自動的に並び替える、をオフにする
* AlfredでMacVimを検索できるようにする
  * MacVimのエイリアスをApplicationsに配置
  * Alfred設定＞Default Result＞Extras＞com.apple.alias-fileを追加
* Xcode
  * Editor
    * check `Vim Mode`
  * Edit
    * Format > Spelling and Grammer > `Check Spelling While Typing`
  * Preferences
    * Theme
      * `Default (Dark)` を調整
    * Navigation
      * Navigation Style: `Open in Place`
      * Navigation: `Used Focused Editor` (this is Default)
      * Optional Navigation: `Uses Separated Window Tab`
      * Double-click Navigation: `Uses Separated Window Tab`
    * Text Editing
      * check `Including whitespace-only lines`
    * Behaviors
      * Build
        * Generates new issues
          * uncheck
        * Fails
          * Show `window tab` `Build`
          * Show navigator `Issues`
      * Testing
        * Pauses
          * Show `window tab` `Debug`
        * Fails
          * Show `window tab` `Test`
          * Show navigator `Tests`
      * Running
        * Pauses
          * Show `window tab` `Debug`
          * Show navigator `Breakpoints`
        * Generates new issues
          * Show `window tab` `Debug`
          * Show navigator `Debug`
          * Show debugger with `Current Views`
        * Completes
          * `Hide` debugger


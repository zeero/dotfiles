# dotfiles

My configuration files.

## Usage

### 1. Xcodeをインストール
インストールが終わってから次へ進むこと
```
sudo xcode-select -s /Applications/Xcode.app
xcode-select --install
```
### 2. [Homebrew](https://brew.sh/ja)をインストール
### 3. dotfilesを設定
```
brew install git
```
```
mkdir ~/lib
cd ~/lib
# ssh設定はあとでやるのでいったんHTTPで落とす
git clone https://github.com/zeero/dotfiles.git
```
```
source ./dotfiles/home/.zprofile
source ./dotfiles/home/.zshrc
./dotfiles/install.sh
```

## Manual Configurations
* ダブルタップでドラッグするために「システム環境設定」の「アクセシビリティ」→「マウスとトラックパッド」→「トラックパッドオプション」→「ドラッグロック」を有効にする
* キー移動を速くするために「システム環境設定」の「キーボード」からキーリピート、リピート認識を最大にする
* シフトスペースをVimに送るためにGoogleIMEの英語キーボードを導入すること
* システム環境設定＞Mission Control＞最新の使用状況に基づいて操作スペースを自動的に並び替える、をオフにする
* Alfred
  * デフォルト検索をChatGPTにする
    * General > Default Results > Setup fallback results
    * +ボタンからCustom Search の中のChatGPTを選択して、一番上にもってくる
  * MacVimを検索できるようにする
    * MacVimのエイリアスをApplicationsに配置
    * Alfred設定＞Default Results＞Extras＞com.apple.alias-fileを追加
* memos
  * memosのクローンは鍵登録が必要なので、手動でクローンしてください
  * 鍵登録手順: [新しいSSHキーを生成してssh-agentに追加する](https://docs.github.com/ja/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
    * `ssh-keygen -t ed25519 -C "zeero26@gmail.com"`
    * `gh auth login`
      * 通信方式にSSHを選択する
    * `eval "$(ssh-agent -s)"`
    * `nvim ~/.ssh/config`
      ```
      Host github.com
        AddKeysToAgent yes
        UseKeychain yes
        IdentityFile ~/.ssh/id_ed25519
      ```
    * `ssh-add --apple-use-keychain ~/.ssh/id_ed25519`
  * `git clone git@github.com:zeero/memos.git ~/Documents/memos`
* Xcode
  * Editor
    * check `Vim Mode`
  * Edit
    * Format > Spelling and Grammer > `Check Spelling While Typing`
  * Preferences
    * Theme
      * `Default (Dark)` を調整
    * Navigation
      * Command-click on Code: `Jumps to Definition`
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


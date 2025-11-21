# CLAUDE.md

このファイルは、このリポジトリのコードを扱う際にClaude Code (claude.ai/code) にガイダンスを提供します。

## 📂 リポジトリ概要

これは、macOS開発環境設定のための包括的なdotfilesリポジトリです。シェル (zsh)、エディタ (Vim/Neovim)、開発ツール、システム環境設定を、自動インストールとシンボリックリンクによって管理します。

## 🛠️ 主要コマンド

### 🚀 インストールとセットアップ
- `./install.sh` - 全体的なセットアップを調整するメインのインストールスクリプトです。
- `./install.sh.subs/symlink.sh` - ホームディレクトリへのシンボリックリンクを作成します。
- `brew bundle` - BrewfileからすべてのHomebrewパッケージをインストールします。

### 🧪 開発とテスト
- `./install.sh.subs/ruby.001.rbenv.sh` - rbenvでRuby環境をセットアップします。
- `./install.sh.subs/node.001.nodebrew.sh` - nodebrewを介してNode.jsをインストールします。
- `./install.sh.subs/vim.001.coc.sh` - CoC言語サーバーでVimを設定します。
- `./install.sh.subs/osx_defaults.sh` - macOSシステムデフォルトを適用します。
- `colima start` - Colima Dockerランタイムを開始します（install.shによって自動開始されます）。

### 📦 パッケージ管理
- **Homebrew**: `brew bundle` (Brewfileを使用します)
- **Ruby gems**: Gemlistファイルとrbenvを介して管理されます。
- **Node packages**: Nodelistファイルとnodebrewを介して管理されます。
- **Python packages**: Piplistファイルとpipを介して管理されます。
- Swift packages**: MintlistファイルとMintを介して管理されます。

### 💻 開発環境
- **Ruby**: rbenvをバージョン管理に使用します (`rbenv versions`, `rbenv global`)
- **Node.js**: nodebrewをバージョン管理に使用します (`nodebrew ls`, `nodebrew use`)
- **Vimプラグイン**: dein.vimプラグインマネージャーを使用し、`vim/dein.toml`でプラグインが定義されています。
- **Git設定**: install.shのgit configコマンドによって自動化されます。

## 🏗️ アーキテクチャと構造

### 🗂️ 設定の整理
- `/home/` - `~/`にシンボリックリンクされるdotfiles (zshrc, vimrc, gitignoreなど)
- `/vim/` - プラグインと言語設定を含む完全なVim/Neovim設定です。
- `/xcode/` - Xcodeテンプレート、コードスニペット、プロジェクトセットアップツールです。
- `/install.sh.subs/` - 異なるコンポーネント用のモジュラーインストールスクリプトです。
- `/lib/` - 外部依存関係とカラースキームです。
- `Brewfile` - Homebrewパッケージ定義です。
- `Gemlist`/`Nodelist` - 言語固有のパッケージリストです。

### ⬇️ インストールフロー
インストールは次の順序で実行されます。
1. Gitサブモジュールとディレクトリの作成
2. Homebrewバンドルのインストール
3. シンボリックリンクの作成
4. Gitグローバル設定
5. Gitエイリアスの設定
6. 言語環境のセットアップ (Ruby → Node → Python)
7. Vim/CoC設定
8. macOSシステムデフォルト

### 📝 主要設定ファイル
- `home/.zshrc` - 高度な機能を備えたメインのシェル設定 (14k+行)
- `vim/vimrc` - dein.vimプラグイン管理を備えたVim設定です。
- `vim/dein.toml` - プラグイン定義と設定です。
- `vim/coc-settings.json` - CoCの言語サーバー設定です。
- `home/.gitignore` - グローバルなgit ignoreパターンです。
- `Brewfile` - Homebrewパッケージ定義 (casksとformulasを含む)
- `Gemlist`/`Nodelist`/`Piplist`/`Mintlist` - 言語固有のパッケージリストです。

### ✨ 開発環境の機能
- **言語**: Ruby, Node.js, Python, Go, Swift, Kotlin, Dart
- **エディタ**: Vim/Neovim (100以上のプラグイン、CoC経由の言語サーバー付き)
- **iOS開発**: Clean Swift, VIPER, TCAアーキテクチャ用のXcodeテンプレートです。
- **Gitワークフロー**: 高度なエイリアスとカスタム設定です。
- **ターミナル**: Smyckカラースキームを備えたiTerm2です。
- **ブラウザ**: VimのようなブラウジングのためのCVim拡張機能です。

### 🍎 プラットフォーム固有の事項
- **主要ターゲット**: macOS開発環境です。
- **多言語サポート**: 英語/日本語 (Google日本語入力付き)
- **iOS/macOS重視**: 豊富なXcode統合とSwift開発ツールです。
- **クロスプラットフォームノート**: 一部のWindows/MSYS2設定が利用可能です。

### ✋ 手動設定の要件
インストール後、以下の手動設定が必要です。
- macOSシステム環境設定 (トラックパッド、キーボード設定)
- Google IME設定
- Alfredワークフロー設定
- Xcode環境設定と動作
- Mission Control設定

## ✍️ ファイル変更ガイドライン

設定を変更する際。
- **zshrcの変更**: `home/.zshrc`を編集します (`~/.zshrc`にシンボリックリンクされます)
- **Vim設定**: `vim/`ディレクトリ内のファイル (vimrc, dein.toml, coc-settings.json) を変更します。
- **パッケージの追加**: 適切なパッケージリストファイルを更新します。
  - Homebrewパッケージとcaskは`Brewfile`
  - Ruby gemは`Gemlist`
  - Node.jsパッケージは`Nodelist`
  - Pythonパッケージは`Piplist`
  - Swiftパッケージは`Mintlist`
- **インストールスクリプト**: 命名規則に従って`install.sh.subs/`に新しいスクリプトを追加します。
- **Git設定**: メインの`install.sh`内のgit configコマンドを変更します。
- **Xcodeテンプレート**: Clean Swift, VIPER, TCAアーキテクチャ用に`xcode/File Templates/`にテンプレートを追加します。

### ✅ 変更のテスト
- 個々のコンポーネントをテストするには、`install.sh.subs/`から特定のサブスクリプトを実行します。
- 変更後にdotfilesを再リンクするには、`./install.sh.subs/symlink.sh`を使用します。
- 可能であれば、クリーンな環境で`./install.sh`を使用して完全なインストールをテストします。

### 📝 開発の前提条件
このリポジトリを変更する前に。
1. Xcodeとコマンドラインツールをインストールします。`sudo xcode-select -s /Applications/Xcode.app && xcode-select --install`
2. Homebrewをインストールします。https://brew.sh/ の指示に従います。
3. Gitをインストールします。`brew install git`
4. リポジトリをクローンします。`git clone https://github.com/zeero/dotfiles.git ~/lib/dotfiles`
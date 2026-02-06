# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 📂 リポジトリ概要

これは、Vim/Neovim の包括的な設定ディレクトリです。3600行以上の vimrc、1200以上のプラグイン定義、言語別の after/ 設定、カスタムスニペット、辞書ファイルを含む、高度にカスタマイズされた開発環境を提供します 🎯

## 🛠️ 主要コマンド

### 🔄 プラグイン管理（dein.vim）
- `:call dein#install()` - 未インストールのプラグインをインストール
- `:call dein#update()` - インストール済みプラグインを更新
- `:call dein#check_clean()` - 未使用プラグインをチェック
- `:call map(dein#check_clean(), "delete(v:val, 'rf')")` - 未使用プラグインを削除

### 📝 補完・言語サーバー（CoC）
- `:CocInstall <extension>` - CoC拡張機能をインストール
- `:CocUpdate` - CoC拡張機能を更新
- `:CocCommand` - CoCコマンドを実行
- `:CocConfig` - coc-settings.json を開く

### 🧪 プラグイン動作確認
- `:Scouter` - Vim起動時間の各要素を計測（vim-scouterプラグイン）
- `:PP <expression>` - 値をプリティプリント（vim-prettyprintプラグイン）

### 📦 主要プラグイン操作
- **CtrlP**: `<C-p>` でファジーファインダー起動、`:CtrlP` `:CtrlPBuffer` `:CtrlPMRU` など
- **VimShell**: `:VimShell` `:VimShellPop` でシェル起動
- **Unite**: `:Unite` でインターフェース起動（ファイル、バッファ、レジスタなど統合的に扱う）
- **Gista**: `:Gista list` でGist管理、`:CtrlPGista` で検索
- **Workflowish**: `.md` `.markdown` ファイルはデフォルトで workflowish として開かれる（lua/filetype.lua 参照）

## 🏗️ アーキテクチャと構造

### 🗂️ 設定の整理
- `vimrc` (3600行) - メインの設定ファイル。初期化、基本設定、プラグイン設定、キーマップを含む
- `dein.toml` (1200行) - dein.vim によるプラグイン定義。遅延読み込み（lazy）設定を多用
- `coc-settings.json` - CoC言語サーバーの設定（補完、診断の挙動）
- `after/ftplugin/*.vim` - ファイルタイプ別の詳細設定（Ruby, Kotlin, Swift, Markdown, Workflowish など）
- `after/syntax/*.vim` - ファイルタイプ別の追加シンタックス定義
- `lua/filetype.lua` - Neovim用のカスタムファイルタイプ定義（Markdown系を workflowish に紐付け）
- `neosnippets/*.snip` - 言語別のスニペット定義
- `dict/` - 補完用の辞書ファイル（bootstrap.dict, pocke_dicts など）
- `skel/` - 新規ファイル作成時のテンプレート

### 💎 設計ポリシー

1. **Lazy Loading Everywhere (遅延読み込みの徹底)**
   起動速度を最優先し、ほぼすべてのプラグインを遅延読み込み（on_ft, on_cmd, on_map, on_i など）で管理します。
   - **実践例**: dein.toml で `lazy = 1` を多用し、必要になるまでプラグインを読み込まない

2. **Fold-Based Organization (折りたたみベースの整理)**
   vimrc はマーカー折りたたみ（`{{{1` など）で階層的に整理され、3600行でも見通しよく管理できます。
   - **実践例**: `" 初期設定 {{{1`, `" 基本設定`, `" Plugin設定` などのセクション分け

3. **After Directory Pattern (後読み込みパターン)**
   after/ ディレクトリを活用し、プラグイン読み込み後に言語別設定を適用します。
   - **実践例**: `after/ftplugin/ruby.vim` で Ruby固有の設定、`after/syntax/log.vim` でログファイルの追加ハイライト

4. **Multi-Language Support (多言語対応)**
   Ruby, JavaScript, Python, Swift, Kotlin, Dart など多数の言語に対応し、言語ごとにプラグインとスニペットを提供します。
   - **実践例**: dein.toml の `on_ft` による言語別プラグインの遅延読み込み、neosnippets/*.snip による言語別スニペット

5. **Key Mapping Consistency (キーマップの一貫性)**
   プラグインのデフォルトキーマップを無効化し、一貫性のあるカスタムキーマップを定義します。
   - **実践例**: `let g:textobj_entire_no_default_key_mappings = 1` でデフォルト無効化後、`omap aa` で独自マップ

6. **Autocmd Safety (自動コマンドの安全性)**
   すべての autocmd を `augroup myvimrc` で囲み、`au!` で初期化してから定義します。
   - **実践例**: `augroup myvimrc` と `au!` の組み合わせで、vimrc の再読み込み時に重複を防止

### 📦 プラグイン構成

#### コアプラグイン
- **dein.vim** - プラグインマネージャー
- **vimproc.vim** - 非同期処理基盤
- **coc.nvim** - 言語サーバープロトコル対応の補完エンジン
- **neosnippet** - スニペット管理

#### ファイル操作・ナビゲーション
- **ctrlp.vim** - ファジーファインダー（メイン）
- **unite.vim** - 統合インターフェース（legacy、一部機能で使用）
- **vimfiler.vim** - ファイラー
- **vim-gista** - Gist管理

#### 編集支援
- **vim-easymotion** - 高速カーソル移動
- **vim-surround** - 囲み文字の編集
- **vim-expand-region** - ビジュアル選択の拡張
- **vim-quickhl** - 単語のハイライト
- **vim-textobj-*** - テキストオブジェクトの拡張

#### Git統合
- **vim-fugitive** - Git操作
- **gv.vim** - Gitログビューア
- **vim-gitgutter** - 差分表示

#### 言語別
- **Ruby**: vim-ruby, vim-rails, rubocop, vim-rspec
- **JavaScript**: vim-javascript-syntax, prettier
- **Python**: jedi-vim
- **Swift**: vim-swift
- **Kotlin**: vim-kotlin
- **Dart**: dart-vim-plugin

### ✨ 主要機能

#### 遅延読み込み戦略
- `on_ft` - ファイルタイプで遅延読み込み（言語プラグイン）
- `on_cmd` - コマンド実行時に読み込み（ツール系プラグイン）
- `on_map` - キーマップ実行時に読み込み（編集支援プラグイン）
- `on_i` - 挿入モード開始時に読み込み（補完プラグイン）
- `on_source` - 他プラグイン読み込み時に読み込み（拡張プラグイン）

#### 補完設定（CoC）
- `suggest.noselect: true` - 補完候補を自動選択しない
- `diagnostic.enable: false` - 診断機能は無効（別のリンターを使用）
- `suggest.minTriggerInputLength: 3` - 3文字から補完開始
- neosnippet 連携で高優先度スニペット補完

#### ファイルタイプ判定（Neovim）
- `lua/filetype.lua` で `.md`, `.markdown`, `.mkd` などを `workflowish` として認識
- Neovim の組み込み filetype.lua より優先される

#### 文字エンコーディング
- UTF-8 をデフォルトとし、cp932, euc-jp, iso-2022-jp に対応
- ファイルフォーマットは unix, dos, mac に対応

## ✍️ ファイル変更ガイドライン

### vimrc の変更
- **検索・編集設定**: `" 検索に関する設定` `" 編集に関する設定` セクションを変更
- **プラグイン設定**: 各プラグイン名のコメント（例: `" ctrlp {{{1`）で検索して該当箇所を変更
- **キーマップ**: vimrc 内の `nnoremap`, `inoremap`, `vnoremap` などを検索
- **Autocmd**: `augroup myvimrc` 内の `au` で定義、必ず既存パターンに従う

### プラグインの追加・削除
- **追加**: `dein.toml` に `[[plugins]]` ブロックを追加、適切な遅延読み込み設定（`lazy`, `on_ft` など）を指定
- **削除**: `dein.toml` から該当プラグインを削除後、`:call map(dein#check_clean(), "delete(v:val, 'rf')")` で物理削除
- **設定**: vimrc に `" <プラグイン名> {{{1` でセクションを追加

### 言語別設定の変更
- **ファイルタイプ設定**: `after/ftplugin/<filetype>.vim` を編集（例: `after/ftplugin/ruby.vim`）
- **シンタックス設定**: `after/syntax/<filetype>.vim` を編集
- **スニペット**: `neosnippets/<filetype>.snip` を編集または追加

### CoC 設定の変更
- `coc-settings.json` を編集
- 拡張機能追加は `:CocInstall coc-<extension>` を実行

### ファイルタイプ判定の変更（Neovim）
- `lua/filetype.lua` を編集
- `vim.filetype.add()` で拡張子やパターンを追加

## 🎯 開発のコツ

### プラグイン設定を見つける
1. vimrc で `" <プラグイン名>` をコメント検索（折りたたみマーカー付き）
2. 該当セクションで `let g:<プラグイン名>_` で変数を確認
3. キーマップは `nmap`, `vmap`, `imap` などで定義されている

### 起動が遅い場合
1. `:Scouter` で起動時間を計測
2. dein.toml で遅延読み込み（`lazy = 1`）されているか確認
3. vimrc の `" プラグイン無効化` セクションで不要なデフォルトプラグインを無効化

### テキストオブジェクトの拡張
- `textobj-user` プラグインベースで多数のカスタムテキストオブジェクトを定義
- `aa`（entire）、`af`（関数）、`a_`（wiw）、`a=`（between）など
- `expand-region` で `v` を連打して選択範囲を拡張

### Workflowish の扱い
- Markdown ファイルは自動的に workflowish として扱われる（lua/filetype.lua）
- アウトライン編集に特化したキーマップとシンタックス（after/ 参照）
- PrevimやMarkdown Preview連携で即座にプレビュー可能

### 辞書ファイル
- `dict/` に補完用の辞書ファイルを配置
- ファイルタイプ別に `set dictionary+=` で追加可能

## 📝 注意事項

- vimrc は非常に大きいため（3600行）、変更時は必ず折りたたみマーカー（`{{{1`）でセクションを確認
- プラグイン設定は vimrc 内にあり、dein.toml はプラグインリストのみ
- after/ ディレクトリの設定は vimrc やプラグイン設定より後に読み込まれるため、上書きに使える
- Neovim と Vim で一部動作が異なる（lua/filetype.lua は Neovim のみ）
- 遅延読み込みされているプラグインは、トリガー（コマンド、キーマップ、ファイルタイプ）を実行するまで利用できない

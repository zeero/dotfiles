# CLAUDE.md

このファイルは、このリポジトリのコードを扱う際にClaude Code (claude.ai/code) にガイダンスを提供します。

## 📂 リポジトリ概要

これは、macOS開発環境設定のための包括的なdotfilesリポジトリです。シェル (zsh)、エディタ (Vim/Neovim)、開発ツール、システム環境設定を、自動インストールとシンボリックリンクによって管理します。

## 🛠️ 主要コマンド

### 🚀 インストールとセットアップ
- `./install.sh` - 全体的なセットアップを調整するメインのインストールスクリプトです。
- `./scripts/symlink.sh` - ホームディレクトリへのシンボリックリンクを作成します。
- `brew bundle` - BrewfileからすべてのHomebrewパッケージをインストールします。

### 🧪 開発とテスト
- `./scripts/ruby.001.rbenv.sh` - rbenvでRuby環境をセットアップします。
- `./scripts/node.001.nodebrew.sh` - nodebrewを介してNode.jsをインストールします。
- `./scripts/vim.001.coc.sh` - CoC言語サーバーでVimを設定します。
- `./scripts/osx_defaults.sh` - macOSシステムデフォルトを適用します。
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
- `/scripts/` - 異なるコンポーネント用のモジュラーインストールスクリプトです。
- `/tests/` - テストコードを配置します。
- `/lib/` - 外部依存関係とカラースキームです。
- `Brewfile` - Homebrewパッケージ定義です。
- `Gemlist`/`Nodelist` - 言語固有のパッケージリストです。

### 🧪 テスト構成ルール
テストコードは `/home/` 配下のシンボリックリンク先を汚さないよう、ルートの `/tests/` ディレクトリに分離して配置します。

1. **ディレクトリ構成**: `tests/{language}/`
   - 言語ごとにディレクトリを分け、テストランナーや設定を独立させます。
2. **ファイル命名規則**: `{path-to-flat}/{filename}.test.{ext}`
   - テスト対象ファイルのパスをハイフン繋ぎでフラットに表現します。
   - 例: `home/.pi/agent/extensions/slack-notify.ts` のテスト
     -> `tests/typescript/home-pi-agent-extensions/slack-notify.test.ts`

### 💎 設計ポリシー
このリポジトリは、以下の明確な設計ポリシーに基づいて構築されています。

1.  **Single Source of Truth (信頼できる唯一の情報源)**
    環境に関する全ての設定情報をこのGitリポジトリに集約し、一貫性と再現性を保証します。
    - **実践例**: `symlink.sh` で設定ファイルをホームディレクトリにシンボリックリンクすることで、リポジトリを唯一の正とします。

2.  **Declarative over Imperative (命令的より宣言的)**
    「どのように(How)」を記述するのではなく、「どうあるべきか(What)」を宣言的に記述することで、可読性とメンテナンス性を向上させます。
    - **実践例**: `osx_defaults.yml` にmacOSの「あるべき状態」を記述し、実際のコマンド実行はスクリプトに任せます。

3.  **Maximize Automation, but Keep Human in the Loop (自動化の最大化と人的介入)**
    可能な限り自動化しつつ、セキュリティに関わる部分などでは意図的に人間の判断を介在させ、安全性と確実性を両立します。
    - **実践例**: Gitの個人情報設定など、スクリプト実行中に `read` コマンドでユーザーの確認を待ちます。

4.  **Optimize for Speed and Efficiency (速度と効率の最適化)**
    あらゆる操作の応答速度と効率性を追求し、開発者の生産性を最大化します。
    - **実践例**: `osx_defaults.yml` でキーリピートを高速化したり、`git` エイリアスでキーストロークを削減します。

5.  **Modularity and Extensibility (モジュール性と拡張性)**
    機能を疎結合なモジュールに分割し、将来の変更や拡張に対応しやすくします。
    - **実践例**: `scripts/` 以下に、言語ごとのセットアップスクリプトを個別に配置します。

6.  **Convention over Configuration (設定より規約)**
    標準的なツールや規約を採用することで、設定の複雑さを軽減し、シンプルさを保ちます。
    - **実践例**: `rbenv` や `nodebrew` など、各言語で標準的なバージョン管理ツールを採用します。

7.  **Cross-Agent Portability (AIエージェント設定の横断可搬性)**
    AIコーディングエージェント関連の設定については、複数のAIコーディングエージェント (Claude Code / Codex / Pi) で設定資産を共有するため、依存先をポータビリティで階層化します。可搬な層にロジックを寄せ、ツール固有の接着剤は最小化することで、特定ツールへのロックインを避けます。
    - **Tier 1 (完全可搬・第一選択)**: コンテキストファイル・Agent Skill・プレーンなMarkdown成果物。3エージェントが同一資産を読むため、ここに最大限寄せます。
      - コンテキストファイルは `AGENTS.md` を信頼できる唯一の源とし、Claude Code 用 `CLAUDE.md` は `@AGENTS.md` import の1行に留めて二重管理を避けます（Codex は `AGENTS.md`、Pi は `AGENTS.md`/`CLAUDE.md` 双方を読む）。
      - Agent Skill は [Agent Skills 標準](https://agentskills.io/specification) に準拠した `SKILL.md` とし、横断共有のため「skill名＝親ディレクトリ名」を厳守します（Pi は名前ズレを許容するが標準は禁止）。1ディレクトリに集約し各ツールの探索パスへ symlink します。
    - **Tier 2 (ロジックは共有・接着剤のみ非可搬)**: フック機構はツールごとに別物（Claude Code: `settings.json` のフック / Pi: TypeScript Extension / Codex: 別機構）であり、横断不可です。ロジックは共有スクリプト1本に置き、各ツールのフック/Extension は「それを呼ぶだけの薄いアダプタ」に限定します。
    - **原則**: モデルに委ねられる判断は Tier 1（Skill＋context file）へ寄せ、決定論的な強制が本当に必要なものだけ Tier 2 を使います。フック設定の中に業務ロジックを直書きしない（ツールロックインを生むため）。

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
- **インストールスクリプト**: 命名規則に従って`scripts/`に新しいスクリプトを追加します。
- **Git設定**: メインの`install.sh`内のgit configコマンドを変更します。
- **Xcodeテンプレート**: Clean Swift, VIPER, TCAアーキテクチャ用に`xcode/File Templates/`にテンプレートを追加します。

### ✅ 変更のテスト
- 個々のコンポーネントをテストするには、`scripts/`から特定のサブスクリプトを実行します。
- 変更後にdotfilesを再リンクするには、`./scripts/symlink.sh`を使用します。
- 可能であれば、クリーンな環境で`./install.sh`を使用して完全なインストールをテストします。

### 📝 開発の前提条件
このリポジトリを変更する前に。
1. Xcodeとコマンドラインツールをインストールします。`sudo xcode-select -s /Applications/Xcode.app && xcode-select --install`
2. Homebrewをインストールします。https://brew.sh/ の指示に従います。
3. Gitをインストールします。`brew install git`
4. リポジトリをクローンします。`git clone https://github.com/zeero/dotfiles.git ~/lib/dotfiles`


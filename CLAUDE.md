# CLAUDE.md

このファイルは、このリポジトリのコードを扱う際にClaude Code (claude.ai/code) にガイダンスを提供します。

## 📂 リポジトリ概要

これは、macOS開発環境設定のための包括的なdotfilesリポジトリです。シェル (zsh)、エディタ (Vim/Neovim)、開発ツール、システム環境設定を、自動インストールとシンボリックリンクによって管理します。

## 🛠️ 主要コマンド

タスクは [go-task](https://taskfile.dev) で定義します（`Taskfile.yml` がルート、`Taskfile.install.yml`/`Taskfile.tests.yml` を include）。`task`（引数なし）で一覧を表示します。`install.sh` はこれらの `task install:*` を順に呼ぶ薄いラッパです。

### 🚀 インストールとセットアップ
- `./install.sh` - 対話プロンプトを含む全体セットアップ（各 `task install:*` を順次実行）。
- `task install:all` - mkdir→brew→symlink→git-setup→toolchains→osx-defaults を一括実行。
- `task install:brew` - `brew bundle` で Homebrew パッケージを導入。
- `task install:symlink` - `scripts/symlink.sh`（宣言 `scripts/symlink.yml`）でシンボリックリンクを作成。`./scripts/symlink.sh -n` で dry-run。
- `task install:toolchains` - mise/Mint で各言語ランタイムとパッケージを導入。
- `brew services start colima` - Colima Docker ランタイムを起動（install.sh では手動プロンプト。常用する場合のみ）。

### 🧪 開発とテスト
- `task tests:ts` - TypeScript テストを vitest で実行（`tests/typescript/`）。`task tests:ts-watch` で watch。
- 単一テスト: `task tests:ts -- <pattern>`（`--` 以降が vitest に渡る）。

### 📦 パッケージ管理
宣言リストを編集し、対応する `scripts/*` 経由で反映します。
- **Homebrew**: `Brewfile`（`brew bundle`）
- **Ruby gems**: `Gemlist`（mise の ruby + `scripts/ruby.00*.sh`）
- **Node packages**: `Nodelist`（mise の node + `scripts/node.002.npm_install.sh`）
- **Python packages**: `Piplist`/`Uvlist`（mise の python + uv、`scripts/python.00*.sh`）
- **Rust crates**: `Cargolist`（`scripts/rust.001.cargo_install.sh`）
- **Swift packages**: `Mintlist`（Mint、`scripts/mint_install.sh`）

### 💻 開発環境
- **言語ランタイム**: [mise](https://mise.jdx.dev) で ruby/node/python を一元管理（global は `~/.tool-versions`）。`scripts/mise_install.sh` で `mise install`。非対話/CI では activate が効かないため `mise exec --` でラップする（`Taskfile.install.yml` の toolchains 参照）。
- **Vimプラグイン**: dein.vimプラグインマネージャーを使用し、`vim/dein.toml`でプラグインが定義されています。
- **Git設定**: `scripts/git_config.sh`（`task install:git-setup`）によって自動化されます。

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
    - **実践例**: `symlink.yml` に対象を宣言し、`symlink.sh` がホームディレクトリにシンボリックリンクすることで、リポジトリを唯一の正とします。

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
    - **実践例**: `mise` で複数言語のバージョンを一元管理し、タスクは `go-task`（Taskfile）の規約に寄せます。

7.  **Cross-Agent Portability (AIエージェント設定の横断可搬性)**
    AIコーディングエージェント関連の設定については、複数のAIコーディングエージェント (Claude Code / Codex / Pi) で設定資産を共有するため、依存先をポータビリティで階層化します。可搬な層にロジックを寄せ、ツール固有の接着剤は最小化することで、特定ツールへのロックインを避けます。
    - **Tier 1 (完全可搬・第一選択)**: コンテキストファイル・Agent Skill・プレーンなMarkdown成果物。3エージェントが同一資産を読むため、ここに最大限寄せます。
      - コンテキストファイルは symlink で内容を一元化します。本リポジトリでは `CLAUDE.md` を実体とし、`AGENTS.md` → `CLAUDE.md` の symlink で二重管理を避けます（Codex は `AGENTS.md`、Pi は `AGENTS.md`/`CLAUDE.md` 双方を読むため、3エージェントが同一内容を読む）。
      - Agent Skill は [Agent Skills 標準](https://agentskills.io/specification) に準拠した `SKILL.md` とし、横断共有のため「skill名＝親ディレクトリ名」を厳守します（Pi は名前ズレを許容するが標準は禁止）。1ディレクトリに集約し各ツールの探索パスへ symlink します。
    - **Tier 2 (ロジックは共有・接着剤のみ非可搬)**: フック機構はツールごとに別物（Claude Code: `settings.json` のフック / Pi: TypeScript Extension / Codex: 別機構）であり、横断不可です。ロジックは共有スクリプト1本に置き、各ツールのフック/Extension は「それを呼ぶだけの薄いアダプタ」に限定します。
    - **原則**: モデルに委ねられる判断は Tier 1（Skill＋context file）へ寄せ、決定論的な強制が本当に必要なものだけ Tier 2 を使います。フック設定の中に業務ロジックを直書きしない（ツールロックインを生むため）。

### ⬇️ インストールフロー
`task install:all`（= `install.sh` の中核）は次の順序で実行されます。
1. `mkdir` - ディレクトリ作成と Git サブモジュール初期化
2. `brew` - Homebrew バンドル（Rosetta 導入含む）
3. `symlink` - シンボリックリンク作成（`symlink.yml` 駆動）
4. `git-setup` - Git グローバル設定（`git_config.sh`）と gh 拡張
5. `toolchains` - mise/Mint で各ランタイムとパッケージ（Ruby/Node/Python/Rust/Vim CoC）
6. `osx-defaults` - macOS システムデフォルト

`install.sh` はこれに加えて Antigravity/Claude Code/各プラグイン導入や iTerm2/Vimium 設定などの対話プロンプトを挟みます。

### 📝 主要設定ファイル
- `home/.zshrc` - 高度な機能を備えたメインのシェル設定 (14k+行)
- `vim/vimrc` - dein.vimプラグイン管理を備えたVim設定です。
- `vim/dein.toml` - プラグイン定義と設定です。
- `vim/coc-settings.json` - CoCの言語サーバー設定です。
- `home/.gitignore` - グローバルなgit ignoreパターンです。
- `Brewfile` - Homebrewパッケージ定義 (casksとformulasを含む)
- `Gemlist`/`Nodelist`/`Piplist`/`Uvlist`/`Cargolist`/`Mintlist` - 言語固有のパッケージリストです。
- `Taskfile.yml`/`Taskfile.install.yml`/`Taskfile.tests.yml` - go-task のタスク定義です。

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
  - Pythonパッケージは`Piplist`/`Uvlist`
  - Rust crateは`Cargolist`
  - Swiftパッケージは`Mintlist`
- **インストールスクリプト**: 命名規則に従って`scripts/`に新しいスクリプトを追加し、`Taskfile.install.yml`の`toolchains`等から呼び出します。mise 管理ランタイムに依存するものは `mise exec --` でラップします。
- **Git設定**: `scripts/git_config.sh`を変更します。
- **Xcodeテンプレート**: Clean Swift, VIPER, TCAアーキテクチャ用に`xcode/File Templates/`にテンプレートを追加します。

### ✅ 変更のテスト
- TypeScript ロジックは `task tests:ts`（vitest）で検証します。
- 個々のコンポーネントをテストするには、`scripts/`から特定のサブスクリプトを実行します。
- 変更後にdotfilesを再リンクするには、`task install:symlink`（差分確認は `./scripts/symlink.sh -n`）を使用します。
- 可能であれば、クリーンな環境で`./install.sh`を使用して完全なインストールをテストします。

### 📝 開発の前提条件
このリポジトリを変更する前に。
1. Xcodeとコマンドラインツールをインストールします。`sudo xcode-select -s /Applications/Xcode.app && xcode-select --install`
2. Homebrewをインストールします。https://brew.sh/ の指示に従います。
3. Gitをインストールします。`brew install git`
4. リポジトリをクローンします。`git clone https://github.com/zeero/dotfiles.git ~/lib/dotfiles`

## 🔄 作業サイクル（plan → work → review → learning）

非自明な作業は次を既定の流れとして回す。小さく自明な変更ではスキップしてよい（儀式化しない）。

1. **plan**: 着手前に方針を立て、`STRATEGY_SPEC.md` の目的・指標から外れていないか確認する。
2. **work**: 実装する。リファクタ・構造改善は `tdd-refactoring` skill の手順に沿う。
3. **review**: テスト・lint に加え `self-code-review` skill で確かめ、重要な判断は確信度つきで `~/.agents/reflection/decisions-log.md` に記録する。
4. **learning**: 再利用できる学びが出ていれば `learning` skill で `LEARNINGS.md` に追記する。
5. 締め: セッションの振り返りは `retrospective`、判断の見返しは `reflect` skill を使う。


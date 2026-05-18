# go-task Migration Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** `install.sh` の巨大なスクリプトを、安全性を保ちながら段階的に `go-task` (Taskfile.yml) に移行し、最終的に `install.sh` を廃止する。

**Architecture:** ハイブリッドアプローチを採用。`Taskfile.install.yml` を新設し、処理を意味単位でタスク化していく。タスク化した部分は `install.sh` 側で `task install:xxx` を呼び出すように変更し、常に `install.sh` が動作する状態を維持する。最後に `install.sh` を削除し、README等を更新する。

**Tech Stack:** go-task, bash

---

### Task 1: 基盤準備 (Taskfile.install.yml の作成)

**Files:**
- Create: `Taskfile.install.yml`
- Modify: `Taskfile.yml`
- Modify: `install.sh`

- [x] **Step 1: `Taskfile.install.yml` を作成する**

```yaml
version: '3'

tasks:
  setup:
    desc: "Install all dotfiles dependencies and configurations"
    cmds:
      - echo "Setup started..."
```

- [x] **Step 2: メインの `Taskfile.yml` にインクルードする**

`Taskfile.yml` の `includes:` に `install:` ネームスペースを追加する。

```yaml
version: '3'

includes:
  tests: Taskfile.tests.yml
  install: Taskfile.install.yml

tasks:
  default:
    cmds:
      - task --list
    silent: true
```

- [x] **Step 3: `task --list` でインクルードされたことを確認する**

Run: `task --list`
Expected: `install:setup` がリストに表示されること。

- [x] **Step 4: Commit**

```bash
git add Taskfile.yml Taskfile.install.yml
git commit -m "build: setup Taskfile.install.yml infrastructure"
```

---

### Task 2: 冪等な初期化処理の移行 (mkdir & git_config.sh)

**Files:**
- Create: `scripts/git_config.sh`
- Modify: `Taskfile.install.yml`
- Modify: `install.sh`

- [x] **Step 1: `scripts/git_config.sh` を作成する**

`install.sh` にあった `git config` の設定をすべてこのスクリプトに移動します。

```bash
#!/bin/bash

# git config
git config --global push.default simple
git config --global pull.rebase false
git config --global merge.ff false
git config --global http.sslVerify false
git config --global core.editor nvim
git config --global core.pager delta
git config --global core.quotepath false
git config --global core.safecrlf true
git config --global core.autocrlf false
git config --global core.ignorecase false
git config --global color.ui true
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global commit.template "~/.git-commit-template"
git config --global interactive.diffFilter 'delta --color-only'
git config --global include.path '~/.config/delta/.gitconfig'
git config --global diff.algorithm histogram
git config --global diff.tool nvimdiff
git config --global difftool.prompt false
git config --global difftool.nvimdiff.cmd 'nvim -d "$LOCAL" "$REMOTE"'
git config --global merge.tool nvimdiff
git config --global mergetool.prompt true
git config --global mergetool.keepBackup false
git config --global mergetool.nvimdiff.cmd 'nvim -d "$LOCAL" "$REMOTE" "$MERGED" -c "wincmd 3w" -c "wincmd J"'
git config --global mergetool.vimrdiff.cmd 'vimr --wait --nvim -d $LOCAL $REMOTE'
git config --global merge.conflictStyle zdiff3
git config --global fetch.prune true
git config --global init.defaultBranch main
git config --global ghq.root "~/dev"
git config --global alias.co "checkout"
git config --global alias.st "status"
git config --global alias.pick "cherry-pick"
git config --global alias.graph "log --graph --decorate --name-status"
git config --global alias.ignore "update-index --skip-worktree"
git config --global alias.noignore "update-index --no-skip-worktree"
git config --global alias.stashdiff "diff HEAD..stash@{0}"
git config --global alias.amend "commit --amend --no-edit"
git config --global alias.wdiff "diff --word-diff -w"
git config --global alias.vdiff "difftool --tool=vimdiff --no-prompt"
git config --global alias.nvimdiff "difftool --tool=nvimdiff --no-prompt"
git config --global alias.vimrdiff "difftool --tool=vimrdiff --no-prompt"
git config --global alias.head "rev-parse --short=7 HEAD"
git config --global alias.swap '!GIT_SEQUENCE_EDITOR="gsed -i \"1{h;d};2G\"" git rebase -i HEAD~2'
git config --global alias.slog "log --pretty=format:'%C(yellow)%h %Creset%cd %Cblue%cn %Cred%d %Creset%s'"
git config --global alias.wlog "log -p --word-diff -w"
git config --global alias.fixup '!f(){ git commit --fixup $1 && GIT_SEQUENCE_EDITOR="gsed -i \"\"" git rebase -i --autosquash $1^;};f'
git config --global alias.show-base-branch '!f(){ git log --first-parent --pretty=format:"%D" | grep -v "^$" | grep -v "HEAD" | head -1 | awk -F, "{print \$1}"; };f'
```

- [x] **Step 2: `Taskfile.install.yml` に `mkdir` と `git-config` タスクを追加する**

```yaml
# ... (既存の記述) ...
tasks:
  setup:
    desc: "Install all dotfiles dependencies and configurations"
    cmds:
      - task: mkdir
      - task: git-config

  mkdir:
    desc: "Create required directories"
    cmds:
      - mkdir -p ~/bin ~/dev ~/tmp ~/log ~/lib/go/bin
      - git submodule update --init

  git-config:
    desc: "Setup global git configurations"
    cmds:
      - bash ./scripts/git_config.sh
```

- [x] **Step 3: `install.sh` の処理を `task` 呼び出しに置き換える**

`install.sh` の `# mkdir` 以下の複数行を `task install:mkdir` に変更。
`# git config` 以下の複数行（ユーザー情報のecho部分の手前まで）を `task install:git-config` に変更。

- [x] **Step 4: 動作確認**

Run: `./install.sh`
Expected: mkdirとgit-configのエラーが出ずにスクリプトが進行すること。

- [x] **Step 5: Commit**

```bash
git add scripts/git_config.sh Taskfile.install.yml install.sh
git commit -m "build: migrate mkdir and git-config to go-task via script"
```

---

### Task 3: Homebrewと外部スクリプトの移行

**Files:**
- Modify: `Taskfile.install.yml`
- Modify: `install.sh`

- [x] **Step 1: `Taskfile.install.yml` に `brew` と各種 `scripts` タスクを追加する**

```yaml
  brew:
    desc: "Install Homebrew packages"
    cmds:
      - sudo softwareupdate --install-rosetta || true
      - brew bundle --verbose

  symlink:
    desc: "Create symlinks"
    cmds:
      - ./scripts/symlink.sh

  tools:
    desc: "Install toolchains and languages"
    cmds:
      - ./scripts/mise_install.sh
      - ./scripts/mint_install.sh
      - ./scripts/ruby.002.gem_install_pre.sh
      - ./scripts/ruby.003.gem_install.sh
      - ./scripts/ruby.004.gem_install_post.sh
      - ./scripts/node.002.npm_install.sh
      - ./scripts/python.001.uv_install.sh
      - ./scripts/python.002.pip_install.sh
      - ./scripts/rust.001.cargo_install.sh
      - ./scripts/vim.001.coc.sh

  plist:
    desc: "Apply macOS defaults"
    cmds:
      - ./scripts/osx_defaults.sh
```

`setup` タスクの `cmds:` にも追加します。

```yaml
  setup:
    desc: "Install all dotfiles dependencies and configurations"
    cmds:
      - task: mkdir
      - task: brew
      - task: symlink
      - task: git-config
      - task: tools
      - task: osx-defaults
```

- [x] **Step 2: `install.sh` の該当箇所を置き換える**

```bash
# HomeBrew
task install:brew
read -p "Press Enter to resume..."
read -p "Dockerを常時立ち上げるなら \`brew services start colima\` を実行..."

# symlink
task install:symlink

# git submodules
git submodule update --init

# ...

# Mise
task install:tools

# plist
task install:plist
```
*(Mint, ruby, node.js, python, rust, vim のスクリプト実行部分はすべて削除し、上記 `task install:tools` の1行にまとめる)*

- [x] **Step 3: 動作確認**

Run: `task --list` で新しいタスクが表示されるか確認。

- [x] **Step 4: Commit**

```bash
git add Taskfile.install.yml install.sh
git commit -m "build: migrate homebrew and external scripts to go-task"
```

---

### Task 4: インタラクティブ処理の分離と移行

**Files:**
- Modify: `Taskfile.install.yml`
- Modify: `install.sh`

- [ ] **Step 1: `Taskfile.install.yml` に UI/インタラクティブタスクを追加**

```yaml
  apps:
    desc: "Setup UI apps, extensions, and tools"
    cmds:
      # Alfred Custom Search
      - open alfred://customsearch/%E8%8B%B1%E5%92%8C/eiwa/utf8/nospace/https%3A%2F%2Ftranslate.google.com%2F%23en%2Fja%2F%7Bquery%7D
      - open alfred://customsearch/%E5%92%8C%E8%8B%B1/waei/utf8/nospace/https%3A%2F%2Ftranslate.google.com%2F%23ja%2Fen%2F%7Bquery%7D
      - open alfred://customsearch/GitHub/hub/utf8/nospace/https%3A%2F%2Fgithub.com%2Fsearch%3Futf8%3D%25E2%259C%2593%26o%3Ddesc%26s%3Dstars%26q%3D%7Bquery%7D
      - open alfred://customsearch/ChatGPT/gpt/utf8/nospace/https%3A%2F%2Fchatgpt.com%2F%3Fq%3D%7Bquery%7D%0D%0A
      - open alfred://customsearch/Perplexity/perp/utf8/nospace/https%3A%2F%2Fwww.perplexity.ai%2F%3Fq%3D%7Bquery%7D%0D%0A
      # iTerm2
      - open {{.ROOT_DIR}}/lib/Smyck-Color-Scheme/Smyck.itermcolors
      # Claude Code
      - curl -fsSL https://claude.ai/install.sh | bash
      - claude plugin install context7@claude-plugins-official
      - claude plugin install ralph-loop@claude-plugins-official
      - claude plugin install plugin-dev@claude-plugins-official
      - claude plugin install claude-code-setup@claude-plugins-official
      - claude plugin install superpowers@claude-plugins-official
      - gemini extensions install https://github.com/obra/superpowers --consent
      - claude plugin marketplace add anthropics/skills
      - claude plugin install example-skills@anthropic-agent-skills
      - claude plugin install document-skills@anthropic-agent-skills
      - claude plugin marketplace add mksglu/context-mode
      - claude plugin install context-mode@context-mode
      # MCP
      - playwright install chromium
      - notebooklm skill install

  manual-steps:
    desc: "Show manual steps required after installation"
    cmds:
      - echo "==============================================="
      - echo "🚨 Manual Steps Required:"
      - echo "1. Git config:"
      - echo "   git config --global user.name zeero"
      - echo "   git config --global user.email zeero26@gmail.com"
      - echo "   git config --global github.user zeero"
      - echo "2. Docker: run \`brew services start colima\` if needed."
      - echo "3. iTerm: Open Profiles > Colors and select Smyck."
      - echo "4. Vimium C: Import settings from vimium_c.json"
      - echo "==============================================="
```
`setup` タスクの末尾に `task: apps` と `task: manual-steps` を追加する。

- [ ] **Step 2: `install.sh` を Task 実行のみに簡略化**

ついに `install.sh` を, 単なる `task install:setup` のラッパーにします。

```bash
#!/bin/bash
cd `dirname $0`
task install:setup
```

- [ ] **Step 3: 動作確認**

Run: `./install.sh`
Expected: go-task 経由で全体のセットアップ処理（の表示）が走り、最後に Manual Steps が表示されること。

- [ ] **Step 4: Commit**

```bash
git add Taskfile.install.yml install.sh
git commit -m "build: migrate interactive steps to go-task and simplify install.sh"
```

---

### Task 5: 完了とクリーンアップ (README / CLAUDE.md 更新)

**Files:**
- Delete: `install.sh`
- Modify: `README.md`
- Modify: `CLAUDE.md` / `AGENTS.md` (if applicable)

- [ ] **Step 1: `install.sh` を削除**

Run: `rm install.sh`

- [ ] **Step 2: `README.md` を更新**

`README.md` 内のインストール手順を `./install.sh` から `task install:setup` に書き換える。

- [ ] **Step 3: `CLAUDE.md` / `AGENTS.md` の更新**

プロジェクトのセットアップや利用方法として `go-task` が公式の手順となったことを明記する。
「セットアップは `task install:setup` を使用する」という文言を追加。

- [ ] **Step 4: コミット**

```bash
git rm install.sh
git add README.md CLAUDE.md AGENTS.md
git commit -m "build: finalize go-task migration, remove install.sh and update docs"
```

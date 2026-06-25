# mise は非対話シェルでは activate が効かない — `mise exec` / shims を使う

**学び**: `eval "$(mise activate zsh)"` は precmd フック方式で、PATH へのツール追加は**対話シェルのプロンプト発火時にしか起きない**。`#!/bin/bash` スクリプト・go-task（内蔵 `mvdan/sh`）・CI などの非対話/非ログイン実行では発火せず、mise 管理の runtime（node/ruby/python の `npm`/`gem`/`python` 等）が PATH に乗らない。非対話で確実に通すには次のどちらか:
- `mise exec -- <cmd>`（mise バイナリさえ PATH にあれば global `~/.tool-versions` を解決。activate/shims 非依存）
- `~/.local/share/mise/shims` を PATH 前置（`mise install` 後に生成される）

**根拠**: 2026-06 dotfiles の新規端末構築フロー調査。symlink 直後の同一 `install.sh` プロセス内では `.zprofile`（mise activate を記述）が未読込で、`mise install` 直後の `gem`/`npm` が見つからず失敗していた。`env -i PATH=/opt/homebrew/bin:... mise exec -- bash -c 'command -v gem npm'` で、activate なし最小 PATH でも mise installs から解決されることを実機確認。

**適用範囲**: install スクリプト / Taskfile / Makefile / CI / フック等、非対話で mise 管理ツールを呼ぶ全ての場面。「symlink や設定ファイル配置をしても、同一プロセスの PATH は更新されない（新シェル起動が必要）」という一般則の一例でもある。

**例外・前提**: `mise` バイナリ自体は PATH に必要（brew 製なら brew step 通過時点で `/opt/homebrew/bin` に乗っている）。shims 方式は `mise install` 実行後にディレクトリが生成される順序依存がある。`mise exec` は cwd 階層 + global の `.tool-versions`/`mise.toml` を解決するため、意図した config が効く場所で実行すること。

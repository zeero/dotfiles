# Learnings — 運用ガイド

`index.md` はコンテキストへ自動ロードされ得るため最小限に保つ。詳細な運用ルールはこのファイルに逃がす（このファイル自体は自動ロードしない）。

## 位置づけ

- ツール中立（Claude Code / Codex / Pi 共通）で `~/.agents/learnings/` に置く。
- repo-local の学びは各リポジトリの `LEARNINGS.md` に置き、再現性が確認できたものをここへ昇格する（object-level の複利）。
- 判断の仕方（meta-level）は `../reflection/` 側で昇格する。

## 露出方針（コンテキスト肥大の回避）

- 常時ロードは `index.md` のみ薄く保つ。
- 個別の学びは `*.md` に分割し、`compound` skill が on-demand で読み込む。
- 正規コンテキストファイルからは `index.md` を薄くロードする。

## 昇格の基準

- repo-local で2回以上、別の文脈で再利用された。
- 「適用範囲」と「例外 / 前提」が言語化できる状態になっている。

---
paths: "**/skills/**/SKILL.md"
---

# SKILL.md シェルコマンドルール

### ホームディレクトリは `~` を使う

絶対パスは環境によってユーザー名が変わるため、`~` を使う。

### `git -C <path>` の代わりに `cd <path> && git` を使う

`git -C` は Claude Code の権限プロンプトでブロックされるケースがある。

```bash
cd ~/Documents/memos && git log -1 --format="%H" -- <file>
```

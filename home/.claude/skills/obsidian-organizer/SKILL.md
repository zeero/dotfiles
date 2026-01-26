---
name: obsidian-organizer
description: Obsidian vault の自動整理を行う。"Obsidian整理", "vault整理", "ダッシュボード整理", "inbox整理", "メモ整理" などのリクエスト時に使用する。
---

# Obsidian Organizer

Obsidian vault の自動整理スキル。git pull → InBox整理 → Dashboard整理 → git commit & push の順で実行する。

## 設定

| 項目 | 値 |
|------|-----|
| Vault | `~/Documents/memos` |
| Dashboard | `📋 Dashboard.md` |

## 処理フロー

### 1. Git Pull

```bash
cd ~/Documents/memos && git pull
```

### 2. InBox整理

`InBox/` 内の `.md` ファイルを、フロントマターの `tags` に基づいて移動する。

- タグあり → 同名ディレクトリへ移動（例: `tags: [ideas]` → `Ideas/`）
- タグなし → 移動しない

**既存ディレクトリ**: Bases, Blogs, Books, Businesses, Clippings, DailyNotes, Fun, Ideas, Knowledges, Locals, Logs, Reports, SampleCodes, Templates

### 3. Dashboard整理

`📋 Dashboard.md` の `# Ideas` セクションにある未処理アイテムをファイル化する。

**対象**:
- チェックボックス: `[ ]` または `[/]`
- 箇条書き: `-` または `*`
- 除外: 既に `[[...]]` でリンク化済みのアイテム

**処理**:
1. チェックボックス行の内容 → 新規ファイルの H1 ヘッダー
2. ファイル名 → AI翻訳で英語ケバブケース生成
3. 配置先 → `Ideas/`
4. 子アイテム（インデント行） → ファイル本文
5. 元の行 → `[[filename|元テキスト]]` に置換

**例**:
```markdown
# Before (Dashboard)
* [ ] nvimモダナイズ
    * [ ] パッケージマネージャ
    * [ ] 補完

# After (Dashboard)
* [ ] [[nvim-modernize|nvimモダナイズ]]

# Generated (Ideas/nvim-modernize.md)
# nvimモダナイズ

* [ ] パッケージマネージャ
* [ ] 補完
```

### 4. Git Commit & Push

変更がある場合のみ実行。

```
🤖 自動整理

📥 InBox → {移動先} (N件)
- ファイル名1
- ファイル名2

📋 Dashboard → Ideas (N件)
- 元タイトル → ファイル名.md
```

## 注意事項

- 既存ファイル上書き禁止（重複時は連番付与）
- 処理前に `git status` で未コミット変更を確認
- 各ステップの実行前に処理対象を一覧表示し、ユーザー確認を得る

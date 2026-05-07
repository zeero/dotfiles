---
name: wiki
description: >
  Obsidian Vault（memos）のWikiをLLMが管理するスキル。
  以下のような状況で必ずこのスキルを使うこと:
  - 「WikiにXXを取り込んで」「ingestして」「このメモをWikiに追加して」「Wikiを更新して」
  - 「Wikiで調べて」「Wikiを検索」「WikiでXXについて教えて」
  - 「Wiki lint」「Wikiの健全チェック」「Wikiをチェックして」
  - 「/wiki ingest」「/wiki query」「/wiki lint」などのコマンド形式
  - 会話の流れでWikiへの参照・更新が適切と判断できる場合も積極的に起動すること
argument-hint: (ingest|query|lint)
---

# Wiki スキル

Obsidian Vault の `Wiki/` ディレクトリをLLMが管理するスキル。

- **Vault**: `/Users/zeero/Documents/memos`
- **Wiki Schema**: `Wiki/CLAUDE.md`（毎回必ず最初に読むこと）

## 最初にすること

どのオペレーションでも、必ず最初に `Wiki/CLAUDE.md` を読む。ディレクトリ構造・refs形式・命名規則・Rawソース一覧がそこに集約されている。

## オペレーション判定

`$ARGUMENTS` または会話コンテキストからオペレーションを判定する:

| トリガー例 | オペレーション |
|---|---|
| `ingest Ideas/foo.md`、「取り込んで」「ingestして」「Wikiに追加して」 | **ingest** |
| `query swift`、「Wikiで調べて」「WikiでXXを教えて」 | **query** |
| `lint`、「健全チェック」「lintして」「古いのを確認して」 | **lint** |

引数・文脈からオペレーションが判断できない場合は確認する。

---

## ingest

Rawソースファイルの内容を読み取り、`Wiki/pages/` を更新し、`Wiki/refs/` に取り込み記録を残す。

### 手順

1. **Schema読み込み**: `Wiki/CLAUDE.md` を読む
2. **対象ファイルのコミットハッシュを取得**:
   ```bash
   git log --follow -1 --format="%H" -- <source_path>
   ```
3. **再ingest判定**: `Wiki/refs/` の対応するRefファイルを確認し、`source_commit` が一致すれば「既に最新です」とユーザーに報告してスキップ
4. **ファイル内容を読む**: 対象ファイルを読み込む
5. **pages更新**: 内容を分析し、関連する `Wiki/pages/` ページを特定して作成または更新する
   - 既存ページがあれば新しい知見をマージ・更新する
   - 新トピックなら新規ページを作成する
   - 内容が複数トピックにまたがるなら複数ページを更新してよい
6. **refs更新**: `Wiki/refs/{ディレクトリ}-{ファイル名}.md` を作成または更新する
   - `source_path` と `contributed_to` は WikiLink形式（例: `"[[Ideas/foo]]"`）
   - `source_commit` はフルハッシュ（短縮ではない）
   - `ingested_at` は現在日時（`"YYYY-MM-DD HH:MM"` 形式）
   - ファイル末尾の `## サマリー` にRawソースの要約を記載する
7. **結果報告**: 更新した pages と refs をユーザーに報告する

### refs ファイル命名規則

`Wiki/refs/{ディレクトリ}-{ファイル名のケバブケース（拡張子なし）}.md`

例:
- `Ideas/llm-wiki.md` → `Wiki/refs/Ideas-llm-wiki.md`
- `Knowledges/swift.md` → `Wiki/refs/Knowledges-swift.md`

---

## query

`Wiki/pages/` を検索してトピックに関する情報を提供する。

### 手順

1. **Schema読み込み**: `Wiki/CLAUDE.md` を読む
2. **pages検索**: `rg` でキーワード検索し、関連ページを特定する:
   ```bash
   rg -il "<キーワード>" /Users/zeero/Documents/memos/Wiki/pages/
   ```
3. **回答生成**: 関連ページの内容を読み、質問に答える
4. **Wiki更新（任意）**: 回答中に知識の欠落や新たな整理が必要と判断した場合は、該当pagesページを更新し、元となるRawソースのrefsも合わせて更新する

---

## lint

Wikiの健全性をチェックしてレポートを出力する。

### 手順

1. **Schema読み込み**: `Wiki/CLAUDE.md` を読む
2. **stale refs チェック**: `Wiki/refs/` の全ファイルを走査し、`source_commit` が現在の最新コミットと異なるものを検出する:
   ```bash
   git -C /Users/zeero/Documents/memos log --follow -1 --format="%H" -- <source_path>
   ```
3. **orphan pages チェック**: `Wiki/pages/` のファイルのうち、どの `Wiki/refs/` ファイルの `contributed_to` にも含まれていないものを検出する
4. **レポート出力**:
   - 更新候補のRawソース一覧（stale refs）
   - 孤立ページ一覧（orphan pages）
   - 問題がなければ「✅ Wikiは健全です」と報告する

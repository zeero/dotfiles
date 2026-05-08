---
name: wiki
description: >
  Obsidian Vault（memos）のWikiをLLMが管理するスキル。
  Karpathy の LLM Wiki パターン (https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) を実装。
  RawSource(Reports/Ideas/Knowledges等のmd) を取り込んで pages/ にページ群を構築し、
  index.md（カタログ）・log.md（時系列）・refs/（ソース毎のメタ）を維持する。
  以下のような状況で必ずこのスキルを使うこと:
  - 「WikiにXXを取り込んで」「ingestして」「このメモをWikiに追加して」「Wikiを更新して」
  - 「直近1日で更新があったmdを全部Wikiに取り込んで」「Reportsを一括ingestして」
  - 「Wikiで調べて」「Wikiを検索」「WikiでXXについて教えて」「indexから探して」
  - 「Wiki lint」「Wikiの健全チェック」「stale な refs を確認」「orphan pages を探して」
  - 「/wiki ingest」「/wiki query」「/wiki lint」などのコマンド形式
  - 会話の流れでWikiへの参照・更新が適切と判断できる場合も積極的に起動すること
argument-hint: (ingest|query|lint) [args...]
---

# Wiki スキル

Obsidian Vault `$HOME/Documents/memos` の `Wiki/` ディレクトリを LLM が管理する。

## ディレクトリ構造

```
Wiki/
├── CLAUDE.md   # schema（毎回必ず最初に読む）
├── index.md    # カタログ（pages 一覧 + ingest 済み sources）
├── log.md      # 時系列ログ（append-only）
├── pages/      # LLM が書く markdown ページ群
└── refs/       # ソース毎のメタ（source_commit, contributed_to）
```

## 役割分担

| ファイル | 役割 | 更新タイミング |
|---|---|---|
| `index.md` | 何があるかのカタログ。query の入口 | pages 新規追加・lint 時 |
| `log.md` | いつ何が起きたか。append-only | ingest/query/lint のたび |
| `refs/{x}.md` | ソースの取り込み状況。**ingest 判定の入口** | 該当ソース ingest 時 |
| `pages/{x}.md` | 知識本体 | ingest/query で必要時 |

## 最初にすること

どのオペレーションでも、必ず最初に `Wiki/CLAUDE.md` を読む。raw_paths・カテゴリ・命名規則・WikiLink 形式がそこに集約されている。

## オペレーション判定

`$ARGUMENTS` または会話コンテキストから判定する:

| トリガー例 | オペレーション |
|---|---|
| `ingest Reports/foo.md`、「取り込んで」「ingestして」 | **ingest** |
| `ingest --since 1d`、「直近1日の更新を全部取り込んで」 | **ingest（一括）** |
| `query swift`、「Wikiで調べて」「indexから探して」 | **query** |
| `lint`、「健全チェック」「staleやorphanを確認」 | **lint** |

引数・文脈から判断できない場合は確認する。

---

## ingest

RawSource を読み取り、`pages/` を更新し、`refs/` に取り込み記録を残し、`index.md`（必要時）と `log.md` を更新する。

### 単一ファイルの ingest 手順

1. **Schema 読み込み**: `Wiki/CLAUDE.md` を読む
2. **対象ファイルのコミットハッシュ取得**:
   ```bash
   cd $HOME/Documents/memos && git log -1 --format="%H" -- <source_path>
   ```
3. **再 ingest 判定**: `Wiki/refs/{ディレクトリ}-{ファイル名}.md` を確認し、`source_commit` が一致すれば「既に最新です」と報告してスキップ
   ```bash
   recorded=$(grep '^source_commit:' Wiki/refs/<ref>.md | awk '{print $2}')
   current=$(cd $HOME/Documents/memos && git log -1 --format='%H' -- <source_path>)
   [ "$recorded" = "$current" ] && echo SKIP || echo RE-INGEST
   ```
   refs ファイルが存在しない場合は新規 ingest として扱う。
4. **ファイル読み込み**: 対象 RawSource を読む
5. **pages 更新**: 内容を分析し、関連 `pages/` ページを特定して作成または更新する
   - 既存ページがあれば新しい知見をマージ
   - 新トピックなら新規ページを作成
   - 複数トピックにまたがるなら複数ページを更新してよい
6. **refs 更新**: `Wiki/refs/{ディレクトリ}-{ファイル名}.md` を作成または更新する
   - YAML frontmatter:
     - `source_path`: WikiLink（例: `"[[Ideas/foo]]"`）
     - `source_commit`: フルハッシュ（短縮しない）
     - `ingested_at`: `"YYYY-MM-DD HH:MM"`
     - `contributed_to`: WikiLink 配列（例: `["[[pages/X]]", "[[pages/Y]]"]`）
   - 本文に `## サマリー` で RawSource の要約を記載
7. **index.md 更新（新規 page 作成時のみ）**:
   - 新規 page を該当カテゴリセクションに追加（カテゴリは schema 参照）
   - `## Sources（ingest 済み）` セクションに新エントリ追加（既存ソース更新時はスキップ）
8. **log.md に追記**: 各 page の状態を `(new)`（新規作成）または `(merged)`（既存ページにマージ）で注釈する
   ```
   ## [YYYY-MM-DD] ingest | <source_path>
   - commit: <short_hash>
   - pages: [[pages/X]] (new), [[pages/Y]] (merged)
   ```
   1ファイル全体で全 page が new または merged の場合、行末に1つだけ `(new)` / `(merged)` を置く形式でも可。
9. **結果報告**: 更新した pages, refs, index 変更有無をユーザーに報告

### 一括 ingest（`--since` フラグ）

「直近 N 日で更新のあった RawSource をすべて取り込む」シナリオ:

1. **Schema 読み込み**
2. **対象ファイル列挙**: 以下のいずれか（`<raw_paths>` は schema の `raw_paths` を参照）
   ```bash
   # commit ベース（推奨。git 管理されているソースに使う）
   cd $HOME/Documents/memos && git log --since="<期間>" --name-only --pretty=format: \
     -- <raw_paths> | sort -u | grep -E '\.md$'

   # mtime ベース（git 管理外も含めたいとき）
   find <raw_paths> -mtime -<N> -name '*.md'
   ```
3. **逐次 ingest**: 各ファイルについて単一 ingest 手順 2-9 を実行（再 ingest 判定で未更新は自動スキップ）
4. **log.md にサマリー＋個別エントリを追記**:
   ```
   ## [YYYY-MM-DD] ingest --since=<期間> | <M> sources
   - targets: <path1>, <path2>, ...
   - new pages: [[pages/X]], [[pages/Y]]
   - skipped: <K> (既に最新)

   ## [YYYY-MM-DD] ingest | <path1>
   - commit: <short_hash>
   - pages: [[pages/X]] (new)

   ## [YYYY-MM-DD] ingest | <path2>
   - commit: <short_hash>
   - pages: [[pages/X]] (merged)
   ```
   サマリーで全体像、個別エントリで詳細を残す二段構造。スキップされたソースもサマリーには件数のみ記載する。
5. **報告**: 取り込み件数・スキップ件数・新規/更新ページ数をユーザーに報告

### refs ファイル命名規則

`Wiki/refs/{ディレクトリ}-{ファイル名のケバブケース・拡張子なし}.md`

例:
- `Ideas/llm-wiki.md` → `Wiki/refs/Ideas-llm-wiki.md`
- `Reports/20260507-foo.md` → `Wiki/refs/Reports-20260507-foo.md`
- `Knowledges/swift.md` → `Wiki/refs/Knowledges-swift.md`

サブディレクトリがある場合は `/` を `-` に置換: `Ideas/day-trade/foo.md` → `Wiki/refs/Ideas-day-trade-foo.md`

---

## query

`Wiki/` を検索してトピックに関する情報を提供する。

### 手順

1. **Schema 読み込み**: `Wiki/CLAUDE.md` を読む
2. **index.md を読む**: query の入口。カテゴリ別 pages 一覧から関連候補を見つける
3. **必要なら全文検索で補完**:
   ```bash
   rg -il "<キーワード>" $HOME/Documents/memos/Wiki/pages/
   ```
4. **関連 pages を読み込み**、回答を合成する。引用・WikiLink で出典明示
5. **Wiki への filing back（任意）**: 回答中に新たな整理や comparison が生まれた場合、新規 page として `pages/` に保存することを提案する。Karpathy 原案の "good answers can be filed back into the wiki" の実践
6. **log.md に追記**:
   ```
   ## [YYYY-MM-DD] query | <要約>
   - read: [[pages/X]], [[pages/Y]]
   - filed_back: [[pages/Z]]  # 新規 page を作成した場合のみ
   ```

---

## lint

Wiki の健全性をチェックしてレポートを出す。

### 手順

1. **Schema 読み込み**
2. **stale refs チェック**: `Wiki/refs/` の全ファイルを走査。各々の `source_commit` と現在の最新 commit を比較:
   ```bash
   cd $HOME/Documents/memos && git log -1 --format="%H" -- <source_path>
   ```
   不一致なら更新候補
3. **orphan pages チェック**: `Wiki/pages/` の各ページが、どの `Wiki/refs/` の `contributed_to` にも含まれていないものを検出
4. **missing pages チェック**: `index.md` に列挙されているのに `pages/` に存在しないファイル、またはその逆
5. **index.md 健全性**: `pages/` ディレクトリと `index.md` の Sources/Pages セクションの差分を検出
6. **矛盾・stale claims チェック**: `Wiki/pages/` のページ群を横断的に読み、以下を検出する:
   - 異なるページ間で矛盾する記述（例: 同一トピックについて正反対の主張）
   - より新しい refs（`ingested_at` が新しいもの）によって上書きされるべき古い主張（stale claims）
   - 矛盾/stale が多い場合は代表例のみ列挙し、全件は省略可
7. **未作成概念ページチェック**: `Wiki/pages/` の全 WikiLink を収集し、対応するページファイルが存在しないものを「concept gap」として検出する:
   ```bash
   rg -oh '\[\[[^\]]+\]\]' $HOME/Documents/memos/Wiki/pages/ | sort -u
   ```
   - 存在しない WikiLink ターゲット一覧を報告
   - 重要度が高いと判断したものはページ新規作成を提案する
8. **レポート出力**:
   - 更新候補の RawSource 一覧（stale refs）
   - 孤立ページ一覧（orphan pages）
   - index.md と pages/ の不整合
   - 矛盾・stale claims 一覧（contradiction）
   - WikiLink 未作成概念一覧（concept gap）
   - 問題が無ければ「✅ Wiki は健全です」と報告
9. **log.md に追記**:
   ```
   ## [YYYY-MM-DD] lint | stale=N, orphan=M, mismatch=K, contradiction=P, concept_gap=Q
   ```
10. **修復提案**: 問題が見つかった場合、ユーザーに修復オプション（一括再 ingest、index 再生成、orphan 削除、concept gap のページ新規作成）を提示
11. **新規調査提案**: lint 結果全体を踏まえ、以下を提案する（任意）:
    - 掘り下げるべき新しい質問・テーマ
    - 収集すると wiki を強化できる新ソース候補

---

## 共通ルール

- **WikiLink 形式**: ソース・ページ・refs への参照は `[[path/name]]` を使う（拡張子なし）
- **日付**: ISO 8601 (`YYYY-MM-DD`、必要なら `HH:MM` まで)
- **フルハッシュ**: `source_commit` は短縮しない（log.md の表示用は短縮可）
- **schema 優先**: ディレクトリ構造・カテゴリ・命名規則は `Wiki/CLAUDE.md` に従う。SKILL.md と齟齬があれば schema を正とし、ユーザーに齟齬を報告する

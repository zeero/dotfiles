---
name: learning-from-memory
argument-hint: "[対象ストア / 操舵指示]"
description: >
  Harvest un-distilled reusable knowledge from agent memory stores
  (Claude Code auto-memory, Serena memories) and promote it into the
  learning tiers (global CLAUDE.md / skill / <repo>/.learnings/), then
  dispose of the source entries to avoid dual management. Use when the
  user runs /learning-from-memory, or explicitly asks to 「メモリを蒸留して」
  「auto-memory から学びを昇格して」「メモリの棚卸しをして」. Do NOT fire
  proactively at work boundaries or session wrap-up — that is the learning
  skill's job.
summary: >
  メモリストア（auto-memory / Serena）から未蒸留の汎用知見を回収し、
  learning の置き場へ昇格させて元エントリを後処理するスキル。
  /learning-from-memory または「メモリを蒸留して」等の明示依頼で起動する。
user-invocable: true
---

# Learning from Memory

メモリストアに溜まった未蒸留の汎用知見を回収し、learning の置き場（グローバル CLAUDE.md / skill / `<repo>/.learnings/`）へ昇格させ、元エントリを後処理するスキル。

**なぜやるか**: メモリストアはセッション中に低摩擦で自由書き込みされる一次捕捉層（inbox）であり、learning を通らずに書かれた汎用知見が溜まる。放置すると (1) 他のエージェントから見えない場所に知見が滞留し、(2) 同じ知見が learning の置き場と二重管理になる。このスキルがその回収・蒸留経路を担う。

**依存方向**: このスキル → learning スキル／各メモリストア の一方向のみ。learning 本体とストア側（auto-memory の書き込みや dreaming-auto-memory）はこのスキルを知らず、単独で成立する。ストア側の書き込みは一切制約しない。

ユーザからの補足（あれば考慮する）: $ARGUMENTS

## プロセス

### 1. ソース列挙

実行環境で利用可能なメモリストアを検出する。存在しないものは黙ってスキップする（ポータブル設計）。

- **auto-memory**: システムプロンプトに提示されるメモリディレクトリ（index は `MEMORY.md`）。提示が無ければ対象外。
- **Serena memory**: `list_memories` ツールで列挙する。ツールが無ければ対象外。

`$ARGUMENTS` で対象ストアの限定や操舵指示があればそれに従う。

### 2. 候補抽出

各ストアのエントリを読み、「learning の置き場に昇格すべき汎用的な技術知見」を抽出する。**残すもの（昇格対象外）**の基準:

- **auto-memory**: エージェント自身の振る舞い調整・ユーザ個人の好み・進行中の作業文脈・外部リソースへのポインタ（reference）は、ストアの本来の役割なので残す。
- **Serena**: その位置づけ（CLAUDE.md 参照＋LSP 固有事実の pull 型ストア）に沿うエントリは残す。
- 1エントリに汎用知見とストア固有メモが混在する場合は、汎用部分だけを昇格候補として切り出す（エントリ全体を対象にしない）。

### 3. 蒸留・承認・反映

抽出した候補を入力として、learning スキル（`~/.claude/skills/learning/SKILL.md`）のプロセス0（セットアップ）と2〜4（抽象化・保存先の判断・承認と反映）に従う。判定基準・承認ゲート・記録フォーマットをこのスキルで二重定義しない。

learning のプロセス4（AskUserQuestion での承認）では、各候補に**元エントリの処置**も含めて1セットで承認を取る:

- 全体が昇格するエントリ → **削除**
- 混在エントリ → ストア固有の残滓だけに**書き換え**

### 4. 後処理

承認された分について、昇格の反映と同一ターンで元エントリを処置する。

- **auto-memory**: エントリファイルを削除（or 書き換え）し、`MEMORY.md` の該当行を同期する（削除なら行ごと削除、書き換えなら要約を更新）。
- **Serena**: `delete_memory`（書き換えなら `edit_memory`）。
- 昇格先の「根拠」欄に由来ストアを一言残す（例: 「auto-memory から昇格」）。

**ポインタは残さない**。昇格先はいずれも自動で視界に入る（`.learnings/index.md` の @import ／ グローバル CLAUDE.md の常時ロード ／ skill description）ため、二重の recall 経路は常駐コンテキストを太らせるだけで得るものがない。

### 5. 報告する

昇格した学び（保存先つき）と、元エントリの処置結果（削除／書き換え／残置）を一覧でユーザに報告する。

## 重要事項

- 昇格の判断基準は learning と同じ「汎用性」1軸。迷ったら「その知見は他のエージェントや将来の作業でも効くべきか？」で判定する。
- 元エントリの削除・書き換えは承認前に行わない。ストアへの破壊的操作は必ずプロセス3の承認を経る。
- 一度に大量処理しない。候補が多い場合は価値の高いものから数件に絞り、残りは次回に回す。

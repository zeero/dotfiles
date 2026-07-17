---
name: dreaming-auto-memory
argument-hint: "[steering instructions / path to session dir]"
description: user invoke only
summary: >
  Consolidate and reorganize Claude Code's auto-memory store the way the
  managed-agents "dreams" feature cleans a memory store: read the existing
  memory files plus the session transcripts recorded since the last run, then
  produce a rebuilt store with duplicates merged, stale or contradicted entries
  replaced by their latest value, and durable new insights surfaced — all
  non-destructively, staged for review before anything is applied. Use when the
  user runs /dreaming-auto-memory, or asks to clean up / compact / dedupe /
  reorganize / "garbage-collect" their auto-memory, resolve contradictory or
  outdated memories, or fold recent sessions into long-term memory. Portable:
  it discovers the store's format at runtime rather than assuming one.
allowed-tools: Bash
---

# Dreaming for auto-memory

このスキルは **dream** — Claude Code の auto-memory ストアに対する非破壊の整理統合パス — を**オーケストレーションする**。あなた（メインコンテキスト）は安価で決定論的な工程 — 準備・承認ゲート・適用 — を担い、トークンを大量に消費する読み込みと推論だけを**サブエージェントに委譲する**。ライブストアは決して直接変更せず、結果はステージング領域に置き、ユーザーの承認を経て初めて反映される。

`$ARGUMENTS`（あれば）は自由形式の操舵指示 — dreams API の `instructions` フィールドに相当する。自動検出が失敗する場合は、代わりにセッションディレクトリ（トランスクリプトが置かれる projects/<slug>/ で、memory/ を直下に含む）へのパスでもよい。先頭がファイルシステムパスならディレクトリ指定として扱い、残りを操舵指示として扱う。

## なぜこの形か

auto-memory はセッション中に逐次書き込まれるため、時間とともに重複・矛盾・陳腐化が蓄積する。dream はその定期クリーンアップである。多数のトランスクリプトを読む処理はトークンを大量に消費するため、**その部分だけをサブエージェントに隔離する**。一方、承認ゲート（AskUserQuestion）と適用はメインで行う — こうすることで**制御がメインから離れず**、サブエージェントが返したレポートを受けてそのまま承認・適用へ進める。

以前は skill 全体を `context: fork` で丸ごとサブエージェント実行していたが、戻り値がテキスト塊としてメインに渡るだけで「結果を受けて動く」のが難しかった。この構成はメインを制御の主体に保つことでそれを解消する。サブエージェントは findings を最終メッセージのテキストとして返すため、harness の「subagent はレポートファイルを書けない」制約とも自然に噛み合う。

## ワークフロー（メインコンテキストで実行）

### 1. 準備（決定論・スクリプト任せ）

prep スクリプトを実行する。ユーザーがセッションディレクトリを指定した場合のみ `$1` に渡し、指定がなければ何も渡さずカレントプロジェクトから導出させる。memory ディレクトリはこのセッションディレクトリ直下として導出される。

```bash
bash "${CLAUDE_SKILL_DIR}/scripts/dream_prep.sh" [session-dir-override]
```

このスクリプトが以下を一括で行う:

- ストアの解決とステージング領域（`STAGED_DIR`）の作成
- 7日を超えた古い staged ディレクトリ / バックアップ（zip）の掃除
- 未処理トランスクリプトの digest 生成 — バイト予算内・古い順。予算超過分は次回の dream に持ち越される（予算は環境変数 `DREAM_DIGEST_BUDGET_BYTES` で調整可）
- apply が読む `.dream-meta.json` の生成（処理対象セッションの watermark 情報を含む）

出力は `KEY=VALUE` 行（`MEMORY_DIR`, `STAGED_DIR`, `SKIPPED_TRANSCRIPT_COUNT`, ...）と、`DIGESTS_BEGIN` / `DIGESTS_END` の間の `session_id<TAB>digest_bytes<TAB>digest_path` 行。`MEMORY_DIR` / `STAGED_DIR` / `SKIPPED_TRANSCRIPT_COUNT` と digest パス一覧を控える — 次のステップでサブエージェントに渡す。

`ERROR:` が出たら中断してヒントをユーザーへ伝える（大抵はセッションディレクトリの明示指定が必要）。パスを推測してはならない。

### 2. サブエージェントで推論（重い処理を隔離）

汎用サブエージェント（general-purpose 等、各エージェントのサブエージェント起動ツール）を1つ起動し、下記のプロンプトを渡す。`<...>` の各プレースホルダはステップ1で得た**実際の値**に置換する（`${CLAUDE_SKILL_DIR}` はこのファイル読み込み時に解決済み。メインが渡す時点で全て絶対値になっていること）。digest の読み込み・整理統合・ステージングへの書き込みはすべてサブエージェント側で完結し、その重いトークン消費はメインの会話に載らない。

```text
あなたは dream の推論パスを担うサブエージェントである。Claude Code の auto-memory ストアを非破壊で整理統合し、再構築後のストアをステージング領域に書き、変更レポートを最終メッセージのテキストとして返す。ライブストア（MEMORY_DIR）には決して書き込まない。

まず判断基準として ${CLAUDE_SKILL_DIR}/references/consolidation-policy.md を読む。フォーマット発見・recency 判断・統合・矛盾解消・削除・要確認・レポート構造のルールはすべてそこに従う。

入力:
- MEMORY_DIR（ライブストア。読み取り専用でサンプリングのみ）: <MEMORY_DIR>
- STAGED_DIR（成果物の書き込み先）: <STAGED_DIR>
- 操舵指示（instructions）: <ARGUMENTS。無ければ「なし」>
- 未処理の持ち越し件数: <SKIPPED_TRANSCRIPT_COUNT>
- 読むべき digest（session_id / bytes / path。bytes=0 は飛ばす。一覧が空なら digest なし）:
  <DIGESTS 一覧。無ければ「なし」>

手順:
1. フォーマット発見: policy に従い MEMORY_DIR の既存メモリとインデックスをサンプリングし、frontmatter・type・本文スタイル・命名規約を把握して維持する計画を立てる。空ストアなら policy のフォールバック形式を使う。
2. digest を読む（あれば）: 各 digest を Read で読み、永続的で再利用可能な事実を採掘する。
3. 整理統合（推論）: policy に従い、重複統合・矛盾の recency 解消・確信できる削除・新知見抽出を行う。確信できないもの／外部状態依存のものは手を付けず「要確認」としてレポートに記す（黙って消さない）。生き残ることが確定したエントリは policy の「recall 最適化（Sharpen）」に従い description / index フックの想起性を保守的に磨く（既に固有名詞が先頭にあるものは触らない）。
4. ステージングへ書く: 再構築した「あるべき最終状態そのもの」を <STAGED_DIR>/memory/ に発見済みフォーマットで書き、インデックスファイルも再生成する。生き残るエントリ（追加・統合・未変更/要確認）を全て含め、削除対象は含めない。report.md などのレポートファイルは書かない — findings は最終メッセージのテキストで返す。
5. レポートを返す: policy の「報告（引き継ぎ）の構造」に従い、変更サマリ・追加・統合・削除（理由と recency シグナル）・要確認（理由）・recall 最適化（before → after）を最終メッセージのテキストとして返す。<SKIPPED_TRANSCRIPT_COUNT> が 0 より大きければ「未処理 N 件 — 再実行で続きが処理される」を必ず含める。
```

### 3. レポートを提示して承認を得る（報告と承認依頼は別ターンに分離する）

**同一ターンでレポート提示と `AskUserQuestion` を行ってはならない。** ツール呼び出し前の途中テキストはユーザーに表示されないことがあり、説明のない「適用しますか？」だけが届く事故になる（実際に発生した）。必ず2段階に分ける:

1. **報告ターン**: サブエージェントが返したレポートを、ツール呼び出しを伴わない**単独の最終メッセージ**として提示してターンを終える。レポートには「適用すると何が起こるか」（追加・統合・削除・更新されるファイルとその要旨）を含める。
2. **承認ターン**: ユーザーの応答を受けた次のターンで、`AskUserQuestion` で「適用 / 破棄」の2択を問う。ユーザーがテキストで明示的に適用/破棄を指示した場合は、それを承認として扱ってよい（メニューの再提示は不要）。

推測の yes で適用しない。承認ゲートを構造化された選択にしているのは意図的である: apply はライブストアを上書きするため、選択は明示的かつ曖昧さのないものでなければならない。

### 4. 適用 or 破棄（承認後）

ユーザーが選んだ方**だけ**を実行する。生の `rm` は決して発行せず、削除は必ずスクリプト経由で行う。

```bash
# 適用（実行前に .dream/backup-* へ自動バックアップ）
bash "${CLAUDE_SKILL_DIR}/scripts/dream_apply.sh" "<STAGED_DIR>"

# 破棄（ライブストアは無変更）
bash "${CLAUDE_SKILL_DIR}/scripts/dream_discard.sh" "<STAGED_DIR>"
```

## 注意

- ライブの `MEMORY_DIR` には決して書き込まない。書き込み先は常に `STAGED_DIR` のみ。ライブストアは `dream_apply.sh` 経由・承認後にのみ変わる。
- apply スクリプトはライブストアをステージ済みツリーと完全一致させる（追加・統合・削除を反映）。実行前に必ず `.dream/backup-*.zip` へバックアップを取り、prep 以降にライブストアが変化していれば安全のため中断する（その場合は破棄して dream をやり直す）。watermark は成功時のみ進み、その後ステージング領域を削除する。何を変えたかの監査証跡はこのバックアップ（unzip してストアと `diff` で比較可能）と、メインが提示したレポートが担う。

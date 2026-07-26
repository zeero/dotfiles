---
name: background-agent-ops
description: >
  Pitfalls and diagnostics for background execution of long-running commands
  and background subagent operations. Use whenever:
  (1) launching a long-running command/CLI in the background (external review CLIs, builds, batch jobs) or deciding how to capture its output,
  (2) a background subagent's completion is overdue, seems stalled, or no completion notification arrives,
  (3) about to stop/kill or re-issue a background task — especially on suspicion of a wrong working directory,
  (4) /exit is blocked with "Background work is running",
  (5) dispatching a subagent into a git worktree or any isolated working directory where it will commit.
  Fire proactively at launch time, not only after trouble — most of these pitfalls are cheap to prevent and expensive to diagnose.
---

# Background Agent Ops

バックグラウンド実行（長時間 CLI・バックグラウンドサブエージェント）の落とし穴集。状況→症状→診断→対処で引く。

**可搬性の区分**: 各項に注記する。「エージェント非依存」はシェル・エージェント一般に成り立つ原則、「Claude Code 固有」は Claude Code の機構（transcript パス・task notification・teammate・/exit・Bash session cwd の持続・Agent dispatch）に依存する手順。Codex / Pi 等の他エージェントで使う場合、固有項は「同種の機構があるか」を確認してから流用する。

## 1. 長時間 CLI のバックグラウンド実行 — パイプが失敗ごと隠す（エージェント非依存）

- **状況**: 長時間かかる外部 CLI（外部レビュー CLI、ビルド、バッチ）をバックグラウンドで走らせ、出力を後から覗きたい。
- **症状**: `cmd | tail -N > log` のようにパイプ加工を挟むと、パイプが CLI 終了まで出力をバッファし、ログが 0 行のまま。進捗が見えないだけでなく、起動不全（即死・無応答）の痕跡まで消える。実例: 49分無出力の正体が起動不全だった。
- **対処**:
  - 出力加工なしで生ログをファイルへ直書きさせ（`cmd > log 2>&1`）、覗くときに読む側で `tail` する。
  - 起動直後に生ログの先頭数行で正常起動（バージョン表示・プロンプト受理）を確認する。
  - 長時間無出力のときは「フィルタ・ラッパーが出力を隠していないか」を先に疑う。`; echo` ラッパーが exit 1 を隠す罠と同族。
  - プロセス実在の確認はプロセス名でなく起動コマンドラインで照合する（同名 GUI アプリを CLI と誤認した実例あり）。

## 2. bg サブエージェントの停滞・完了通知取りこぼし（Claude Code 固有）

- **状況**: バックグラウンドサブエージェントの完了待ちが長引く、または完了通知が来ない。
- **症状**: 「待っても何も来ない」には2通りある — (1) ツール呼び出し（特に MCP）がタイムアウトなしで永久ハングしサイレントに固まっている、(2) 実は完走済みなのに task notification が届いていない。
- **診断**: transcript を直接見る。`~/.claude/projects/<proj>/<session>/subagents/agent-<id>.jsonl` の mtime と最終イベントを確認し、最終行が `stop_reason: tool_use` のまま更新停止ならハング、`end_turn` なら完走済み（結果は transcript の最終 assistant メッセージから回収できる）。
- **対処**: ハング個体は TaskStop で停止し、再起動プロンプトにハング原因ツールの明示禁止（例: 「mcp__plugin_context-mode_* 系は使わない。Read/Grep/Glob/Bash のみ」）を書く。調査系サブエージェントは起動時から禁止を書いておくのが安全。

## 3. background task の停止・再発行 — cwd は実測してから（Claude Code 固有）

- **状況**: background task が「間違った cwd で動いているのでは」と疑い、停止・再発行しようとしている。
- **症状**: cwd の机上追跡は compound コマンド・background・並行作業が混ざると必ずどこかでズレる。正常な task を誤認で連続停止した実例あり。Claude Code の Bash session cwd は foreground の `cd X && ...` で持続的に移動する（background 呼び出し内の cd は持続しない）。
- **対処**:
  - 停止する前に必ず `pwd` で session cwd を実測する。机上推論で殺さない。
  - 「修正して再発行した」コマンドは、発行前に停止したコマンド文字列と逐語比較する。差分がなければ修正できていない（強い予測下では同一コマンドを「修正済み」と思い込んで再発行しがち）。
  - そもそも background 実行は `git -C` / 絶対パス / コマンド内 `cd` の自己完結形にして、session cwd への依存を断つのが最も安全（この原則自体はエージェント非依存）。

## 4. /exit ブロックと残存 teammate（Claude Code 固有）

- **状況**: `/exit` が `Background work is running` でブロックされる。
- **症状**: TaskList・CronList を見て「実行中タスクなし」でもブロックが解けない。原因は、役目を終えたままアイドルで残存する teammate（レビュー・セカンドオピニオン用サブエージェント等）。**TaskList の実行中タスクと teammate の残存は別枠**で、前者が空でも後者が exit をブロックする。
- **対処**: (1) ブロックされたら実行中タスクだけでなく残存 teammate を列挙して停止する。(2) 予防として、teammate を多数立てる運用では役目が終わった時点（報告受領・マージ完了時）で都度停止し、セッション終端の一括掃除に頼らない。

## 5. worktree への subagent dispatch — コミット先を自己検証させる（Claude Code 固有）

- **状況**: git worktree 等の隔離ディレクトリへ、コミットまで行う subagent を dispatch する。
- **症状**: dispatch プロンプトに作業ディレクトリを明示していても、subagent が別チェックアウト（main 等）へ誤コミットする事故が実発生している（根本原因は未特定＝指示だけでは再発しうる）。
- **対処**:
  - dispatch プロンプトに「作業ディレクトリの絶対パス」と「コミット直前に `pwd` / `git branch --show-current` を再確認し、想定外なら即 BLOCKED 報告」を毎回明記する。
  - 事故後のリカバリ: 誤コミットのハッシュを確認 → 正しいブランチへ `git cherry-pick` で回収 → 誤って触れた側を安全な地点へ戻す。作業内容自体を失う必要はない。

---

出典: daytrade auto-memory から昇格（2026-07-26）。

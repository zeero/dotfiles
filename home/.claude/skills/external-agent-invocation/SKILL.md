---
name: external-agent-invocation
description: >
  Common procedure and pitfalls for launching another coding agent's CLI
  (codex / claude / gemini) as a subprocess from the current session.
  Use before running `codex exec`, `claude -p`, or `gemini -p` — whether a
  review / second-opinion skill routes here, or the request is ad-hoc such as
  「codex に見てもらって」「gemini にも聞いて」「別のエージェントの意見も欲しい」.
  Covers which CLI to pick, how to pass the target, working-directory and stdin
  failures that stay silent, and how to make the external agent label severity.
summary: 外部エージェントの CLI を子プロセスとして起動するときの共通手順。doc-review-external / code-review-external / sidekick の共通部分の実体。起動したプロセスをバックグラウンドで走らせる場合の落とし穴は background-agent-ops が扱う。
---

# 外部エージェント呼び出し

現在のセッションから、別のコーディングエージェントの CLI（codex / claude / gemini）を子プロセスとして起動するときの共通手順。

呼び出し元のスキルはこの手順に従い、自分に固有の部分だけを持つ。この手順に**含めないもの**は次の4つで、これらは呼び出し元が決める。

- 何を渡すか（ファイル / リビジョン範囲 / 自由なテーマ）
- 外部プロセスに修正まで適用させるか
- 終わったあとに何を確認するか
- やり取りを何往復で打ち切るか

## 1. オプションの解釈

呼び出し元が受け取った引数を次のように解釈する。呼び出し元ごとに違う解釈をしない。

| フラグ | 意味 |
|---|---|
| `--claude` | claude を使う |
| `--gemini` | gemini を使う |
| `--codex` / 指定なし | codex を使う（既定） |
| `-a` / `--adversarial` | Adversarial Review モード（まず反証を試みさせる） |

これらのフラグを取り除いた残りが対象。対象が何を意味するかは呼び出し元が決める。

## 2. 起動コマンド

| CLI | 形 |
|---|---|
| codex | `codex exec "[指示内容]" < /dev/null` |
| claude | `claude --model fable -p "[指示内容]"` |
| gemini | `gemini -p "[指示内容]"` |

- **stdin は必ず塞ぐか、ファイルを渡す**。ファイル内容を読ませる場合は `< /dev/null` の代わりに `< "[FILE_PATH]"` にする。開けたままにすると codex は入力待ちでハングする。
- **claude に修正させるかは `--permission-mode` で決まる**。編集まで任せるなら `--permission-mode "acceptEdits"`、意見だけ聞くなら指定しない（既定のまま）。
- **claude を使う場合はモデルを `fable` に固定する**。呼び出し元が別のモデルを必要とする場合だけ上書きする。
- パスにスペースが含まれうるので必ずクォートする。
- 実行前に、なぜそのコマンド・そのツールを選んだかを簡潔に説明する。

起動したプロセスをバックグラウンドで走らせる場合は、`background-agent-ops` スキルも読むこと。

## 3. コマンド置換を使わない

`$(...)` やバッククォートによるコマンド置換を使わない。情報は個別のステップで取得し、リテラルとして次のステップへ渡す。

diff や log を指示文へ埋め込むためにコマンド置換を使いたくなるが、その必要はない。範囲だけをリテラルで渡し、`git log -p <範囲>` は外部プロセス自身に実行させる。

## 4. codex の落とし穴

codex は他の2つより起動条件が厳しく、失敗が静かに別の症状へ化ける。

### 作業ディレクトリはリポジトリ内にする

リポジトリ外（スクラッチ領域等）を cwd にすると "Not inside a trusted directory" で即失敗する（exit 1）。対象ファイル自体はリポジトリ外でも構わないが、実行時の cwd はリポジトリ内であること。

`; echo` のようなラッパーを挟むと exit 0 に見えてしまうため、出力が数行しかないときはこのエラーを疑う。

### `cd` と同じコマンドに繋がない

`cd <リポジトリ外> && ... ; codex exec ...` と繋ぐと、cd の副作用で codex が信頼されない cwd から起動し、上記の失敗になる。準備コマンドとは別の単独コマンドとして実行する。

### ハングの判定はプロセス状態で行う

`| tail` 等でパイプすると入力が閉じるまで出力が出ないため、「出力が無い」ことはハングの根拠にならない。`ps` で見て、経過時間が長いのに CPU 時間がほぼゼロ（sleeping）なら stdin 待ち。

### worktree を作業ディレクトリにしない

git worktree を workdir にすると exit code 134 で異常終了する既知問題がある。worktree 上のブランチを対象にする場合は次の形にする。

1. codex の workdir はメインリポジトリにする。
2. worktree とメインリポジトリは同じ `.git`（オブジェクトストア）を共有しているため、メインリポジトリ側からでも worktree 側のコミットには**コミットハッシュ**で到達できる。ブランチ名や worktree の絶対パスではなく、確定済みのコミットハッシュ範囲（`<base>..<head>`）を渡す。
3. ファイルを編集させる必要がある場合は、worktree 側の絶対パスを明示する。

## 5. 対象の位置づけを渡す

指示文には、対象の位置づけ（目的・読者・次工程、探索段階なのか採用直前なのか）を1〜3行で書く。

位置づけを渡さないと、外部プロセスが想定と異なる基準で重大度を判定し、指摘が過剰にも過小にもなる。呼び出しコンテキストから位置づけを特定できない場合はユーザに確認する。

## 6. 重大度を必ずラベルさせる

外部プロセスの出力をそのまま流すと、重要な指摘と好みの問題が同じ重みで並ぶ。指示文に次の3つを必ず含める。

1. 各指摘に、**2段階の重大度ラベル**のどちらかを必ず明記させる。ラベルの語は呼び出し元が指定する（採否を判定するレビューなら「ブロック / 非ブロック」、意見聴取なら「重大な懸念 / 参考意見」など）。
2. 上位ラベルに該当する指摘が一つも無い場合は、その旨を明示させる（「ブロックレベルの指摘なし」等）。**言及が無いだけの状態と区別できなくなるため**、ゼロの明示は省略させない。
3. ユーザへの報告は、冒頭で**上位ラベルの指摘があったかを yes/no で言い切る**。yes なら該当内容も併記し、no でも「〜なし」と明示する。

# 生成ループスキル — テンプレート

> loop-skill-creator が生成するループスキルの雛形。`<...>` を埋める。
> このスキルは **1 ターン分のワークフロー**。scheduler が外から呼ぶ前提。
> 不要な move（その作業に部品が無い／要らない）は節ごと省く。ただし Verification と Stop は必須。

```markdown
---
name: <work>-loop
description: <このループが 1 ターンで何をするかの実文>
disable-model-invocation: true   # 副作用ありワークフロー。会話中の自動発火を防ぐ。scheduler / `/name` / 手動の明示起動は通る。
argument-hint: [このターンへの補足（任意）]
---

# <work> ループ（1 ターン）

このスキルは 1 ターン分を実行する。**scheduler（cron / /loop / /schedule 等）が外から起動する**前提。

## Discovery（このターンの仕事を見つける）
- 読む: <CI / issues / commits / inbox / 前回の state ...>
- 採用スキル（参照 invoke）: <discovery 用の既存スキル名>
- 判断: 各候補は今やる価値があるか。ノイズは捨て、actionable だけ残す。

## Handoff（分離して渡す）
- 各 finding に作業空間を 1 つ割り当てる: <発見した実装: worktree / 分離ディレクトリ>

## Verification（独立 evaluator が "no" と言う）★必須
- 評価者: <別 subagent / agents/<work>-reviewer.md / 採用した review 系スキル>
- 基準（broken 前提・読むより動かす・fresh model で stop 判定）:
  1. 動くか（読むのでなく実行する）
  2. テスト: 実際に流して実出力を貼る
  3. 作者が飛ばした edge cases
  4. 振る舞いはチケット / Stop 境界に一致するか
- PASS は全基準を満たした時のみ。さもなくば REJECT ＋理由を列挙。

## Persistence（会話の外に残す）
- 書き出す: <state file / board>（テンプレ: state-template.md）
- 次ターンが読めるよう commit / 保存する。エージェントは忘れる、リポジトリは忘れない。

## Stop（あなたが保つ境界）★必須・人間にしか書けない
- 確認なしで絶対やらないこと: <例「マージしない」「削除しない」「本番に触れない」>
- 確信が持てないものは <inbox / 人間待ち> へ。PR やマージに流さない。

## Caps（1 ターンの輪止め）
- max-retries: <N>（1 つのバグが一晩空回りするのを防ぐ）

---
■ scheduler 起動 contract（このスキルの外）
- 起動方法: `/<work>-loop` または `claude -- skill <work>-loop`
- 期待する前提: <state file の場所 / 必要な connector など>
- スコープ外（ユーザが別途用意）: scheduling 起動、per-run / daily budget cap
```

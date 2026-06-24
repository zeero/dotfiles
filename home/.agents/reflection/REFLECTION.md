# Reflection Index

判断の質を複利で高めるメタ認知の層（How I think）。ツール中立に保つため、Claude 固有の `~/.claude/reflection/` ではなく `~/.agents/reflection/` に置く。

学びの層（`../learnings/`）が「何が効くか」を昇格するのに対し、ここは「どう判断したか」を昇格する。両者で二軸の複利を回す。

## ファイル構成

- `decisions-log.md` — 判断の記録。エピソード的。確信度つき。
  参照頻度：高（重要な判断のたびに追記）
- `patterns.md` — 昇格した思考パターン。意味的。
  参照頻度：高（判断の前に必ず参照）

## 運用ルール

- 判断時：`patterns.md` を読んでから決める（= control）
- 判断後：`decisions-log.md` に「選択・理由・代替案・確信度(Low/Mid/High)」を記録する（= monitoring）
- 週次：`reflect` skill で log を振り返り、3回以上再現した共通点を `patterns.md` へ昇格する（手動 or Cron）

## 昇格の基準

- 同じパターンが3回以上、別の判断で再現している
- 「適用」と「例外」が言語化できる状態になっている

## ハーネスへの接続

- 低い確信度（confidence）は、adversarial evaluator / backtest のコストを集中投下すべき判断の目印。
- 自己モニタリング（confidence）＋ 外部評価（evaluator）で self-evaluation の罠を防ぐ。

## 儀式化しない原則

- 全判断ではなく "重要な判断" だけ記録する（日記化を防ぐ）。
- 常時ロードは index と `patterns.md` のみ薄く。`decisions-log.md` は週次・必要時のみ読む。

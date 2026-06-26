## 作業サイクル（plan → work → review → learning）

非自明な作業は次を既定の流れとして回す。小さく自明な変更ではスキップしてよい（儀式化しない）。

1. **plan**: 着手前に方針を立て、`STRATEGY_SPEC.md` の目的・指標から外れていないか確認する。
2. **work**: 実装する。
3. **review**: プロジェクトの検証（テスト・lint・自己レビュー）で確かめる。後戻りしにくい・影響範囲が広い・代替案で迷った判断は、確信度つきで `~/.agents/reflection/decisions-log.md` に記録する（軽微な判断まで書くと日記化するので絞る）。
4. **learning**: 再利用できる学びが出ていれば `learning` skill で `LEARNINGS.md` に追記して締める。

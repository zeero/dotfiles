## 作業サイクル（plan → work → review → learning）

非自明な作業は次を既定の流れとして回す。小さく自明な変更ではスキップしてよい（儀式化しない）。

1. **plan**: 着手前に方針を立てる。
2. **work**: 実装する。
3. **review**: プロジェクトの検証（テスト・lint・自己レビュー）で確かめる。
4. **learning**: 再利用できる学びが出ていれば `learning` skill で締める。learning が学びを蒸留し、どれだけ汎用的かに応じて振り分ける。
  - プロジェクト固有は @.learnings/index.md + `.learnings/<slug>.md`
  - 特定領域で普遍なら skill
  - あらゆる作業で普遍ならグローバル CLAUDE.md

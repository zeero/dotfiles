---
name: tdd-refactoring
description: A TDD-style procedure for safely carrying out refactoring. Always propose this procedure before starting code refactoring, structural improvement, internal cleanup, renaming, or deduplication. Applies to any change that improves internals without altering external behavior.
---

# リファクタリングの TDD 手順

リファクタリング（外部挙動を変えずに内部構造を改善する変更）に着手するときは、以下の TDD スタイルの手順を提案してから進める。テストという安全網を先に確保することで、リファクタリングによる挙動変化（デグレ）を即座に検知できるためである。

1. 既存のテストコードが変更範囲をカバーできているか確認する。
2. カバーできていない場合、テストコードを追加する。
3. テストが成功する（グリーン）ことを確認する。
4. リファクタリングを実施する。
5. 再びテストが成功することを確認する。

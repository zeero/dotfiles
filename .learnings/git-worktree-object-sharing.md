### worktree の変更は commit hash 経由で他の workdir からも参照できる

**学び**: git worktree は同一の `.git`（オブジェクトストア）を共有するため、あるworktree上にしか存在しないコミットでも、コミットハッシュ（またはブランチ名）さえ分かれば別のworktreeやmain repoのworkdirから直接 `git log -p <hash1>..<hash2>` 等で参照できる。worktree側の diff を一時ファイルへ書き出して受け渡す必要はない。

**根拠**: code-review-external skill で、codex が git worktree を workdir にすると異常終了する制約から workdir を main repo に固定していたが、その結果生じた「worktree側の変更をどう見せるか」という副次課題を、diff の一時ファイル書き出しで解決していた。実際にはコミットハッシュ範囲を渡すだけで main repo の workdir から直接参照できるため、書き出しは不要だった（2026-07-21）。

**適用範囲**: 複数の worktree／複数の workdir 間で、コミット済みの変更内容を連携したい場面全般（外部エージェントへのレビュー依頼に限らない）。

**例外・前提**: 対象がコミットされていない変更の場合は使えない（先にコミットする）。ブランチ名は別の worktree で同時に checkout されていると解決が曖昧になりうるため、コミットハッシュを優先する。

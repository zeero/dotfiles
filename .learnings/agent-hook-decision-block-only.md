### Claude Code / Codex 共用フックの decision フィールドは block 専用

**学び**: PostToolUse フックの JSON 出力で `decision` フィールドの有効値は Claude Code / Codex とも `"block"` のみ（enum 制約）。「処理を通す（allow 相当）」を表現したいときは `decision` フィールドを出力しない（何も出力しない、または exit 0 のみ）。`{"decision": "allow"}` は両ツールにとって無効値で、Claude Code は毎回バリデーションエラーを表示し、Codex はサイレントに無視する。未知・無効フィールドが両ツールで安全に無視される保証はないので、共用スクリプトへフィールドを足すたびに両者のスキーマ制約を疑う。

**根拠**: 2026-07-23、`home/.agents/hooks/check-python.sh` / `check-shell.sh` が対象外ファイル時に `{"decision": "allow"}` を出力し、Claude Code が `PostToolUse:Write hook error: Hook JSON output validation failed` を毎回表示していた。Codex 側バイナリ埋め込みの JSON Schema を直接抽出し、`BlockDecisionWire: { enum: ["block"] }` と全く同じ制約を確認（daytrade プロジェクトの auto-memory から昇格）。

**適用範囲**: `home/.agents/hooks/` の共用フックスクリプトの新規作成・レビュー全般。各エージェントの薄いアダプタ定義を書くときも同様。

**例外・前提**: 将来どちらかのフックスキーマが `allow` 等の値を追加したら再検証する。

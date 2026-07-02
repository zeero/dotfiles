# .learnings（index）

- `reference-skill-sed-split.md` — reference 型 skill は公式 doc を `sed -n` で byte-exact 分割し見出し数で検証する — 手打ち転記せず行範囲を切り出しコード例の崩れを防ぐ
- `reference-skill-skip-eval-loop.md` — reference 型 skill は評価ループをスキップし description 最適化に絞る — 出力が主観的な skill は assertion 検証に不向き
- `skill-deterministic-to-script.md` — スキル手順の決定論処理はスクリプトへ寄せられないか点検する — 存在チェック/コピー/scaffold は script、判断と要確認はモデルに残す
- `skill-setup-existence-gate.md` — 冪等 setup は「初回のみ」と書かず毎回通る存在確認ゲートにする — 「初回のみ」は素通りされる。sentinel の有無だけで判定し中身は見ない
- `claude-code-at-import-backticks.md` — CLAUDE.md の @import は backtick 内では展開されない — 自動 import させたいパスは backtick で囲まない（Claude Code 固有）

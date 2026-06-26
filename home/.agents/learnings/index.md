# Learnings

プロジェクトをまたいで使える学びの置き場。書き方と移動の手順は [README.md](./README.md) を参照。

## 学び一覧

- CLAUDE.md の @import は backtick 内では展開されない — claude-code-at-import-backticks.md — 自動 import させたいパスは backtick で囲まない
- mise は非対話シェルで activate が効かない — mise-non-interactive-exec.md — 非対話/CI では `mise exec` か shims でツールを通す
- レビューAIの保留付き指摘は実コード検証してから採否を決める — review-ai-hedged-findings-verify-first.md — 「要確認」付きの指摘や曖昧化提案は鵜呑みにせず grep/Read で逐語照合する
- Agent skill の冪等 setup は「初回のみ」と書かず毎回通る存在確認ゲートにする — skill-setup-existence-gate.md — 「初回のみ」は素通りされる。sentinel の有無だけで判定し中身は見ない
- subagent-driven 開発では実装者の「N passed」を信じず controller が full gate を independent に回す — subagent-controller-full-gate.md — 実装者は検証スコープを狭めがち。controller が full test+coverage と廃止シンボルの grep を独立実行して捕捉する

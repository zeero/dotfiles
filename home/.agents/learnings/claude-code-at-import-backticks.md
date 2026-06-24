## CLAUDE.md の @import は backtick 内では展開されない

**学び**: CLAUDE.md / AGENTS.md で `@path` を自動 import させたいときは backtick で囲まない。`` `@path` `` は説明用のリテラル表示になり import されない。

**根拠**: 2026-06 の cross-tool 基盤整備中、`@~/.agents/learnings/index.md` を backtick で囲んだら自動ロードが効かず、公式 docs（code.claude.com/docs/en/memory）で挙動を確認した。

**適用範囲**: メモリファイルで自動 import を使う／逆に import させずパスを例示したい場面。

**例外・前提**: Claude Code 固有の挙動。Codex / Pi など他ツールでは @import 自体が効かず、ただのテキストとして扱われる。

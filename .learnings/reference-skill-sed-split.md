### reference 型 skill は公式 doc を `sed -n` で byte-exact 分割し、見出し数で取りこぼし検証する

**学び**: 1ページの公式 doc を `references/` にセクション分割するとき、Read した内容を手打ちで再現せず `sed -n 'START,ENDp' SRC > DST` で行範囲を切り出す。エスケープされた backtick（`` !`gh pr diff` `` 等）やコード例が崩れずフィデリティを保てる。分割後は「元doc の `^## /^### ` 見出し数 == references 全体の見出し数」を `grep -c` で照合し、境界での取りこぼしゼロを検証する。

**根拠**: 2026-06-26、`agent-skill-reference` skill を公式 skills doc（約780行）から作成した際。手打ち転記はコード例の崩れリスクが高く、sed 分割＋見出し数照合で 33==33 を確認できた。

**適用範囲**: 1ソースの長い doc/リファレンスを複数ファイルに分割して reference 型 skill（pi/hermes-agent-reference 系）を作る場面。SKILL.md は「ナビ＋frontmatter/要点の早見表」に絞り、全文は `references/` へ置く。

**例外・前提**: 分割は論理セクション境界（`##`/`###` 直前の空行）に合わせる。複数ソースを統合・再編集する場合や、内容の要約・再構成が必要な場合は sed 分割は使えない（その場合は意図的に書き起こす）。`echo`/`cat`/`sed` 多用は通常避けるが、既存ファイルの byte-exact 切り出しは Read+Write で代替できないため sed が正当。

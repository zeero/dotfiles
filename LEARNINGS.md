# LEARNINGS.md

このリポジトリで得た「次回から楽になる学び」を1件ずつ貯める場所。
作業サイクルの締めに、再利用できる知見が出ていれば `learning` skill でここへ追記する。

このリポジトリの外でも使える学びになり、「適用範囲」と「例外」が書ける状態になったら、横断ストア `~/.agents/learnings/` へ昇格する。判断の型（どう判断したか）は `~/.agents/reflection/`、プロジェクトの北極星は `STRATEGY_SPEC.md` を参照。

書式は `learning` skill の `SKILL.md` 内 `<learning-entry-format>` を正とする。

## 学び一覧

### reference 型 skill は公式 doc を `sed -n` で byte-exact 分割し、見出し数で取りこぼし検証する

**学び**: 1ページの公式 doc を `references/` にセクション分割するとき、Read した内容を手打ちで再現せず `sed -n 'START,ENDp' SRC > DST` で行範囲を切り出す。エスケープされた backtick（`` !`gh pr diff` `` 等）やコード例が崩れずフィデリティを保てる。分割後は「元doc の `^## /^### ` 見出し数 == references 全体の見出し数」を `grep -c` で照合し、境界での取りこぼしゼロを検証する。

**根拠**: 2026-06-26、`agent-skill-reference` skill を公式 skills doc（約780行）から作成した際。手打ち転記はコード例の崩れリスクが高く、sed 分割＋見出し数照合で 33==33 を確認できた。

**適用範囲**: 1ソースの長い doc/リファレンスを複数ファイルに分割して reference 型 skill（pi/hermes-agent-reference 系）を作る場面。SKILL.md は「ナビ＋frontmatter/要点の早見表」に絞り、全文は `references/` へ置く。

**例外・前提**: 分割は論理セクション境界（`##`/`###` 直前の空行）に合わせる。複数ソースを統合・再編集する場合や、内容の要約・再構成が必要な場合は sed 分割は使えない（その場合は意図的に書き起こす）。`echo`/`cat`/`sed` 多用は通常避けるが、既存ファイルの byte-exact 切り出しは Read+Write で代替できないため sed が正当。

### reference 型 skill は skill-creator の評価ループをスキップし description 最適化に絞ってよい

**学び**: 出力が主観的な reference 型 skill（pi/hermes/agent-skill-reference 系）を作るときは、skill-creator の評価ループ（test 実行・assertion・benchmark）はスキップしてよい。assertion で客観評価しづらく費用対効果が低いため。代わりに、比較的客観的に測れる **トリガー精度（description）の最適化**に労力を寄せる。

**根拠**: 2026-06-26、`agent-skill-reference` 作成時に評価方針を選択した際。reference 型は出力が主観的＝assertion 検証に不向きという整理で、ユーザも作成優先（評価スキップ）を選んだ。

**適用範囲**: 知識提供が主目的で出力が主観的な reference / convention / style 系 skill の新規作成・改善。task 型（deploy・commit 等、検証可能な手順）には当てはまらない。

**例外・前提**: retrieval 的に「正しい節を引けたか」を検証できる reference skill では、output benchmark は省いてもトリガー eval だけは実施する中間案が有効な場合がある。判断軸は「出力が客観的に採点できるか」。

### スキル作成/改善時は散文化された決定論処理をスクリプトへ寄せられないか点検する

**学び**: skill の手順を書く・見直すとき、毎回モデルが手作業で行う **決定論的な処理**（存在チェック、ディレクトリ作成、テンプレ/ファイルのコピー、スキャフォルド生成）が散文で書かれていたら、それはスクリプト化の候補。スクリプトへ寄せると (1) 手順が「スクリプトを1回実行する」という不可避・冪等なアクションになり、ゲートの素通りや手作業のブレが消え、(2) モデルには判断と要確認だけが残る。分担の境界は明確で、**「CLAUDE.md 等の“要ユーザ確認”編集」と「docs から読み取る等の LLM 判断」はモデル / それ以外の機械的処理はスクリプト**。スクリプトは `SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"` で自己位置からテンプレを相対参照すれば agent 固有変数（`${CLAUDE_SKILL_DIR}` 等）に依存せず、skill ディレクトリごと symlink されていても動く。出力は「今回作成した分だけ ACTION NEEDED」を出し、すべて既存なら `all set` にすると、毎回の再提案を防げる。

**根拠**: 2026-06-26、learning skill の section 0 をスクリプト化した作業。存在チェック＋テンプレコピーが散文だったのを `scripts/setup.sh` に集約し、使い捨て HOME・一時 git repo・symlink 経由で「冪等性・部分補完・非git skip・自己位置解決」を確認した。

**適用範囲**: 冪等な setup/bootstrap を持つ、または決定論的な反復処理を含む agent skill の新規作成・改善（skill-creator / skill-refiner を使うときの点検観点）。ゲートの書き方そのものは横断ストアの `skill-setup-existence-gate.md` を併せて参照。スキル作成は他プロジェクトでも起きるが、本リポジトリが skill 資産の本拠地のため当面ここに置く。横断で固まったら `~/.agents/learnings/` へ昇格。

**例外・前提**: ユーザ確認が要る編集（グローバル設定・既存 CLAUDE.md への追記）や、文脈読解が要る判断はスクリプト化せずモデルに残す。見合うのは「スクリプト化のコスト ＜ 反復回数 × 手作業コスト」のとき。1回限り・自明な処理まで無理にスクリプト化しない（オーバーエンジニアリング回避）。

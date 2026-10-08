# Loop Engineering — 概念リファレンス

> このファイルは loop-skill-creator が参照する **概念モデルの SSoT**。
> 重要: ここに挙げる moves/parts は **現時点での最良の分解** であって固定の真理ではない。
> loop-skill-creator の本体は「6 個」を直書きせず、ここが挙げる項目を反復処理すること。
> モデルが更新されたら **このファイルだけ** を編集する。生成済み skill の追従は行わない（関心外）。

## 目次
1. 4 層スタックとループの位置
2. 1 ターンの 5 つの move
3. move を実現する parts（＋探すべき候補実装）
4. Generator / Evaluator（このスキルの心臓）
5. 4 つの静かなコスト
6. 5 つのアンチパターン

## 1. 4 層スタックとループの位置
Prompt → Context → Harness → **Loop**。各層は 1 つ上で扱う単位が大きくなる（1 文 → 1 ウィンドウ → 1 ラン → 自走するループ）。ループはハーネスの「あなたを待つ」を自動化する層。

**失敗の波及はループ層が最大**。誤りが state file に書かれ、翌ターン "既定事実" として読み戻され、何ターンも上に積み上がる。誤りのコストは「捕まるまでに生き延びたターン数」に比例し、ループは構造上そのターン数を最大化する機械である。だから安全装置（evaluator・human checkpoint・caps）はすべて「誤りと発見の距離を縮める」ために在る。

## 2. 1 ターンの 5 つの move
- **Discovery**: そのターンの仕事を **自分で見つける**。ループ全体の品質の上限を決める（無価値な仕事を拾えば残り 4 つが台無し）。
- **Handoff**: 仕事を分離して渡す。並列時の衝突を防ぐ。
- **Verification**: 結果が正しいかを **別の視点で** 判定する。最も手を抜きやすく、最も省けない。
- **Persistence**: 結果を会話の外に残す。ループの記憶。
- **Scheduling**: 1 ターンをループにする。← **loop-skill-creator のスコープ外**。生成スキルは「1 ターンの中身」だけを担い、これは外付け scheduler に委ねる。

## 3. parts（各 move を実現する部品）と「探すべき候補実装」
> capability 発見では、各部品が **この環境でどう実現できるか** を下の候補から探す。**在ると前提しない**。
> 作業に必要な部品だけ選ぶ。全部入れる必要はない（"first loop 小さく"）。

- **Skills（→ Discovery）**: プロジェクト知識を恒久化（SKILL.md）。intent debt を払う。
  候補: 既存の triage / review / wiki / organizer 系スキル、CI / issue / commit / inbox を読む手段。
- **Worktrees（→ Handoff）**: 並列エージェントの独立作業ディレクトリ。
  候補: `git worktree`、worktree 系スキル、その他の分離手段。
- **Sub-agents（→ Verification）**: 書き手と判定者を分離する。独立 evaluator。
  候補: subagent 起動（Task 等）、`.claude/agents/` の reviewer 定義、self-code-review / code-review-external、`/goal` の stop 判定、動作確認用 MCP（Playwright 等）。
- **Memory（→ Persistence）**: 会話の外に残る永続状態。
  候補: markdown の state file、Serena memory MCP、learnings/、board(Linear)。
- **Connectors（→ Persistence / Discovery）**: 外部システムへの接続（MCP）。
  候補: 接続済み MCP サーバ、各種 plugin。
- **Automations（→ Scheduling）**: トリガ / タイマで起動。← **スコープ外**。発見も生成もしない。
  参考のみ（レポートでユーザに委ねる）: `/loop`, `/schedule`(Cloud Routines), cron, launchd, GitHub Actions。

## 4. Generator / Evaluator（このスキルの心臓）
- **自分の成果物は甘く採点する**。書いた文脈が「なぜそう書いたか」で満ちているので、出力でなく自己説得の連鎖が見える。ループ内では各ターン自分に頷き、長く回るほど実品質から漂流する。
- **直し方は構造的**。寛容な作者を矯正するより、**別の懐疑的 evaluator を立てる方が遥かに容易**。GAN の発想（作る側／粗探しする側）をそのまま持ち込む。
- **evaluator は "読む" でなく "動かす"**。「JSX は良さそう」でなく「ボタンを押したら遷移した、これが screenshot」へ。可能なら別モデル（同一モデル＋別指示は盲点を残す）。
- **既定スタンスは疑い**。「証明されるまで壊れている前提」。
- **完了は fresh model が判定**。maker-checker 原則（記帳者と承認者を分ける、銀行で何十年も使われる）を stop 条件に適用する。
- **判定基準が repo 全体に及ぶなら「北極星」へ切り出す**。evaluator の基準は多くが「このループ限りの受け入れゲート」（テスト緑・lint 0 等）だが、時に repo 全体の目的・方針・指標——人が普段のプランでも立ち返る北極星——そのものになる。その場合は基準を evaluator に埋め殺さず `<repo>/NORTH_STAR.md` に固定し、ループの evaluator と通常プランが同じ 1 枚を共有する。雛形は `../assets/NORTH_STAR.md`。

生成する evaluator 基準のテンプレは `../assets/evaluator-agent-template.md`。

## 5. 4 つの静かなコスト（回っている間は無音）
- **Verification debt**: 「動く」と「正しい」の差に未検証出力が溜まる。→ 独立 evaluator。
- **Comprehension rot**: 書いていないコードが増え、頭の地図が遅れる。→ サンプルを定期的に読み、説明できるか試す。
- **Cognitive surrender**: 信頼できるほど判断を手放したくなる。→ 「実行はさせるが決定はさせない」一線。
- **Token blowout**: 唯一直接請求に響く。1 つのバグが一晩空回りする。→ 出荷前の hard cap（per-run / daily / max-retries）。

4 つは互いを強化し、ある朝まとめて来る。守りは同じ——「no と言える人間を保ち、人間が起きていなくても回る検査を仕込む」。

## 6. 5 つのアンチパターン（1 move skip = 1 失敗）
- **Nodding loop**（Verification skip）: 自分で書いて自分で合格。最頻。→ generator/evaluator 分離。
- **Amnesiac loop**（Persistence skip）: 進捗を忘れ毎ターン同じ所から。→ disk 上の state file。
- **Manual loop**（Scheduling skip）: 人が手で回し、やがて忘れる。→ ※本スキルのスコープ外だが、レポートで起動を促す。
- **Blind loop**（Discovery skip）: 人が毎ターン仕事を手渡す。高い部分が自動化されない。→ discovery をスキルへ。
- **Tangled loop**（Handoff skip）: 並列が同じ場所を触り衝突。→ 1 タスク 1 worktree。

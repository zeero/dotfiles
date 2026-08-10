---
name: background-agent-ops
description: >
  Use when launching a long-running CLI in the background (external review CLIs,
  builds, batch jobs) or deciding how to capture its output; when a subagent is
  stalled, its completion is overdue, or its completion notification arrives while
  the work it launched may still be running; before stopping or re-issuing a
  background task, especially on suspicion of a wrong working directory; when
  /exit is blocked with "Background work is running"; when dispatching a subagent
  into a worktree or isolated directory where it will commit or write reports; and
  when setting up a standing subagent you delegate to repeatedly, including how it
  must report back.
  Fire at launch time, not only after trouble.
summary: バックグラウンド実行（長時間 CLI・バックグラウンドサブエージェント）の落とし穴と診断手順の集約。予防は安く診断は高いため、トラブル後ではなく起動時点で読む。外部エージェントの CLI をどう起動するかは external-agent-invocation が扱う。
---

# Background Agent Ops

バックグラウンド実行（長時間 CLI・バックグラウンドサブエージェント）の落とし穴集。状況→症状→診断→対処で引く。

**可搬性の区分**: 各項に注記する。「エージェント非依存」はシェル・エージェント一般に成り立つ原則、「Claude Code 固有」は Claude Code の機構（transcript パス・task notification・teammate・/exit・Bash session cwd の持続・Agent dispatch）に依存する手順。Codex / Pi 等の他エージェントで使う場合、固有項は「同種の機構があるか」を確認してから流用する。

## 1. 長時間 CLI のバックグラウンド実行 — パイプが失敗ごと隠す（エージェント非依存）

- **状況**: 長時間かかる外部 CLI（外部レビュー CLI、ビルド、バッチ）をバックグラウンドで走らせ、出力を後から覗きたい。
- **症状**: `cmd | tail -N > log` のようにパイプ加工を挟むと、パイプが CLI 終了まで出力をバッファし、ログが 0 行のまま。進捗が見えないだけでなく、起動不全（即死・無応答）の痕跡まで消える。実例: 49分無出力の正体が起動不全だった。
- **対処**:
  - 出力加工なしで生ログをファイルへ直書きさせ（`cmd > log 2>&1`）、覗くときに読む側で `tail` する。
  - 起動直後に生ログの先頭数行で正常起動（バージョン表示・プロンプト受理）を確認する。
  - 長時間無出力のときは「フィルタ・ラッパーが出力を隠していないか」を先に疑う。`; echo` ラッパーが exit 1 を隠す罠と同族。
  - プロセス実在の確認はプロセス名でなく起動コマンドラインで照合する（同名 GUI アプリを CLI と誤認した実例あり）。

## 2. bg サブエージェントの停滞・完了通知取りこぼし（Claude Code 固有）

- **状況**: バックグラウンドサブエージェントの完了待ちが長引く、または完了通知が来ない。
- **症状**: 「待っても何も来ない」には2通りある — (1) ツール呼び出し（特に MCP）がタイムアウトなしで永久ハングしサイレントに固まっている、(2) 実は完走済みなのに task notification が届いていない。
- **診断**: transcript を直接見る。`~/.claude/projects/<proj>/<session>/subagents/agent-<id>.jsonl` の mtime と最終イベントを確認し、最終行が `stop_reason: tool_use` のまま更新停止ならハング、`end_turn` なら完走済み（結果は transcript の最終 assistant メッセージから回収できる）。
- **対処**: ハング個体は TaskStop で停止し、再起動プロンプトにハング原因ツールの明示禁止（例: 「mcp__plugin_context-mode_* 系は使わない。Read/Grep/Glob/Bash のみ」）を書く。調査系サブエージェントは起動時から禁止を書いておくのが安全。
- **通知が届いた場合の別パターン — サブエージェントの完了 ≠ 委譲先プロセスの完了**: サブエージェント（fork を含む）が長時間 CLI をバックグラウンド起動してそのままターンを終えると、CLI 本体はまだ走っているのに**サブエージェントの完了通知だけが先に届く**。これを成果の到着と読み違えると、未完の処理を「結果ゼロ」と誤読しうる（外部レビューを委譲して「ブロック指摘なし」と誤読する類）。委譲するときは**成果そのもの**（判定・出力・結論）を報告に含めるよう指示し、報告に成果が無ければ親が §1 の生ログとプロセス終了を直接監視して回収する。入れ子の完了条件は、外側が終わっても内側は終わっていない。**待つ役目を再委譲しても解決しない** — 待機役も同じ理由で先に戻るため、同じ完了通知が繰り返されるだけで進まない。読み取り（大出力の回収）は委譲できるが、待機は親が持つ。

## 3. background task の停止・再発行 — cwd は実測してから（Claude Code 固有）

- **状況**: background task が「間違った cwd で動いているのでは」と疑い、停止・再発行しようとしている。
- **症状**: cwd の机上追跡は compound コマンド・background・並行作業が混ざると必ずどこかでズレる。正常な task を誤認で連続停止した実例あり。Claude Code の Bash session cwd は foreground の `cd X && ...` で持続的に移動する（background 呼び出し内の cd は持続しない）。
- **対処**:
  - 停止する前に必ず `pwd` で session cwd を実測する。机上推論で殺さない。
  - 「修正して再発行した」コマンドは、発行前に停止したコマンド文字列と逐語比較する。差分がなければ修正できていない（強い予測下では同一コマンドを「修正済み」と思い込んで再発行しがち）。
  - そもそも background 実行は `git -C` / 絶対パス / コマンド内 `cd` の自己完結形にして、session cwd への依存を断つのが最も安全（この原則自体はエージェント非依存）。

## 4. /exit ブロックと残存 teammate（Claude Code 固有）

- **状況**: `/exit` が `Background work is running` でブロックされる。
- **症状**: TaskList・CronList を見て「実行中タスクなし」でもブロックが解けない。原因は、役目を終えたままアイドルで残存する teammate（レビュー・セカンドオピニオン用サブエージェント等）。**TaskList の実行中タスクと teammate の残存は別枠**で、前者が空でも後者が exit をブロックする。
- **対処**: (1) ブロックされたら実行中タスクだけでなく残存 teammate を列挙して停止する。(2) 予防として、teammate を多数立てる運用では役目が終わった時点（報告受領・マージ完了時）で都度停止し、セッション終端の一括掃除に頼らない。

## 5. worktree への subagent dispatch — コミット先を自己検証させる（Claude Code 固有）

- **状況**: git worktree 等の隔離ディレクトリへ、コミットまで行う subagent を dispatch する。
- **症状**: dispatch プロンプトに作業ディレクトリを明示していても、subagent が別チェックアウト（main 等）へ誤コミットする事故が実発生している（根本原因は未特定＝指示だけでは再発しうる）。
- **対処**:
  - dispatch プロンプトに「作業ディレクトリの絶対パス」と「コミット直前に `pwd` / `git branch --show-current` を再確認し、想定外なら即 BLOCKED 報告」を毎回明記する。
  - 事故後のリカバリ: 誤コミットのハッシュを確認 → 正しいブランチへ `git cherry-pick` で回収 → 誤って触れた側を安全な地点へ戻す。作業内容自体を失う必要はない。

## 6. subagent に書かせる報告ファイルのパスは run 固有にスコープする（エージェント非依存）

- **状況**: 実装 subagent に「作業報告をファイルへ書け」と指示する。多タスクを連続で委譲する開発フロー全般に当てはまる。
- **症状**: `<scratch>/task-N-report.md` のような **run 非固有パス**は feature・セッションを跨いで同名になり、過去 run の無関係な報告を上書き破壊する。scratch 領域は git-ignored なことが多く復元できない。subagent が「既存ファイルを上書きした」と警告を上げ続けるため、報告が実態と乖離していないかの切り分けコストが毎タスク発生する。
- **対処**: dispatch の brief で報告パスを run 固有にスコープする（feature slug や日付をパスに挟む）。テンプレートやスキルが固定パスを提示していても、そのまま渡さない。既存の同名ファイルを見つけた場合は、上書き前に無関係な残骸かを確認させる。

## 7. worktree のブランチを `gh pr merge --delete-branch` で消さない（エージェント非依存 / 退出手順は Claude Code 固有）

- **状況**: 隔離 worktree で作ったブランチの PR を、その worktree の中からマージする。
- **症状**: worktree が勝手に base ブランチ（main 等）へ切り替わり、自分のコミットが worktree から消えたように見える（squash には取り込み済みなので実際のロスはない）。ローカル base が origin と分岐していれば、マージ後の fast-forward 追従も失敗する。
- **なぜ起きるか**: `--delete-branch` は**リモートだけでなくローカルブランチも削除する**（`gh pr merge --help` に明記）。ローカル削除にはそのブランチから離れている必要があるため、`gh` は前処理として base を checkout しに行く。これは git の必然ではなく `gh` 側の挙動で、worktree の配置次第で「切り替わる」ことも「base が別 worktree で使用中のため部分的に失敗し、ローカル後始末が残る」こともある。**症状から git の仕様を推論しないこと** — 実際に効いているのはツール側の後始末手順である。
- **対処**: 順序を「セッションを worktree から退出（Claude Code なら `ExitWorktree` の keep）→ `git worktree remove <path>`（ブランチは消えない）→ `gh pr merge`（`--delete-branch` なし）」にする。ローカルブランチの掃除はマージ結果を確認したあと別操作で行う。マージ結果は squash commit と `gh pr view <n> --json state,mergeCommit` で裏取りする。

## 8. 名前付き subagent への委譲 — 報告手段を指示しないと届かない（Claude Code 固有）

- **状況**: 常駐の名前付き subagent（実装レーン・レビュー担当等）へ作業を委譲し、その完了報告を受け取りたい。
- **症状**: 委譲先が報告本文を書き終えても、controller には `{"type":"idle_notification", ...}` しか届かない。平文出力は controller から読めないため「完走したのに無報告」が繰り返し起き、そのたび再要求で往復が発生する。**§2 とは主語が違う** — あちらは「ハングか完走かの切り分け」、こちらは完走していても**報告経路が存在しない**という委譲設計の欠落。
- **対処**:
  - 委譲プロンプトに**報告手段を明示する**（`SendMessage` で controller 宛に送ること、報告に含める項目 — 変更要約・実行したコマンドの実出力・自分が単独で判断した箇所）。
  - **idle 通知を完了報告として扱わない**。作業内容は `git log` / `git status` / diff で controller が実物を直接確認する。失敗（API エラー等）で idle になった場合も、何が残っているかは実物でしか分からない。
  - 委譲先へ渡す検証ゲートは、controller が回すものと同一集合にする。省く要素があれば「controller 側で見る」と委譲時に明示する。

## 9. 実装レーンの運用 — 申告でなく実物で判定する（Claude Code 固有）

常駐の実装レーン（controller が起こす subagent に作業を任せ続ける形）では、レーンの申告が実体から外れる経路が局面ごとに別々にある。§2 §5 §8 が個々の症状を扱うのに対し、ここは「レーンを動かし続ける間、controller が何を自分で測るか」をまとめる。

- **レーンにさらに委譲させない**: レーンが起こしたサブエージェントから、そのレーンへ報告が戻らないことがある。孫が仕事を終えても親レーンは完了待ちのまま turn を終えて固まる。§8 の「報告手段を明示する」は報告経路が存在する深さでの対処であり、孫の深さで効くかは harness の版に依存する（送信先に何を書けるかの意味が版ごとに変わる）。**指示の書き方に賭けず、委譲させない設計へ倒す** — レーンへの指示に「サブエージェントへ委譲しない（自分で実装する）」「委譲先の完了を待つ形で turn を終えない」を入れる。固着したかの判定手順は §2。
- **固着しても成果は残っていることが多い**: 停止させる前に、未コミットの作業ツリーがゲートを通るかを controller が自分で測る。通るなら後継レーンへ「まずそれをコミットさせる」ところから引き継ぐ。いきなり停止・破棄すると完成済みの作業を捨てる。
- **緑報告はランタイムの一致を先に見る**: worktree で仮想環境を作ると、親リポジトリと違う言語バージョンで作られることがある。**別ランタイムでの「lint 0 / N passed / coverage 100%」はゲートとして弱い**。数値より先に、使われたバージョンが親と一致するかを確かめる。worktree を作った直後に揃えておくと、後からゲートを二度回す羽目にならない。
- **ゲートやレビューの間は worktree を凍結する**: 同じ worktree に検証する側と編集する側が同時にいると、(1) レビュー結果がレーンへ直接届いてレーンが自分で反映し amend するため、controller がゲートを通したコミットが存在しなくなる、(2) ゲート実行中にツリーが変わり、その緑が最終ツリーの緑でなくなる。ゲートに入る前にレーンへ「controller の明示依頼があるまで worktree を触らない」と指示し、**レーンが同居している worktree では**レビューに編集権を与えず報告のみにする。指摘の採否と修正の適用は controller が持つ。レビュー結果がレーンへ届いてしまった場合も、レーンは反映せず内容と推奨を controller へ渡すだけに留めさせる。

---

出典: daytrade auto-memory から昇格（2026-07-26、2026-08-01、2026-08-03、実装レーンの節は 2026-08-09 追加）。

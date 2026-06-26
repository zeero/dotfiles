# subagent-driven 開発では実装者の「N passed」を信じず controller が full gate を independent に回す

**学び**: タスクを委譲する実装サブエージェントは検証スコープを狭めがちで（プロジェクト全体ではなく触ったディレクトリだけテストする等）、自分の変更が壊した周辺を「green」と誤報告する。controller 側で毎タスク、プロジェクトの **full gate（型チェック + 全テスト + coverage ゲート）を独立実行**し、加えて「廃止/改名したシンボル・フラグ・引数の残存」を `grep` で横断確認する。実装者の報告テキストは「走らせた範囲の証拠」でしかないと割り切り、受け入れ判定は controller 自身が回したゲート結果で行う。

**根拠**: 2026-06-26 daytrade の JSONL ログ統一を subagent-driven-development で実施した際、(1) ある実装者が Taskfile の別タスクに残った旧フラグ（`--log-jsonl`）を見落とし、(2) 別の実装者が `__tests__/live/` だけ検証して sibling の `__tests__/smoke/` の失敗と coverage 100%→99.97% 低下を見逃した。いずれも実装者は「N passed」と報告していたが、controller が full `task test` + 横断 `grep` を独立実行して捕捉し fix に回せた。エディタ/harness の LSP 診断も project の lint 設定と乖離・stale なことがあり、authoritative はプロジェクトの lint コマンド側だった。

**適用範囲**: サブエージェントへ実装を委譲する開発全般（subagent-driven-development / executing-plans）。特に「廃止・改名したシンボル/フラグ/引数」を伴う lockstep 変更、テストが複数ディレクトリに分かれる repo、フェーズ間で一時的に壊れる結合作業。

**例外・前提**: full gate が重く毎タスク回せない場合は、せめてフェーズ末に1回は full gate を通す。実装者が広いスコープを実際に走らせた証拠（コマンド+出力）を報告に含めていれば、その分は再実行を省ける。LSP の ✘ は project lint と突き合わせてから扱う（乖離を確認せず無視はしない）。

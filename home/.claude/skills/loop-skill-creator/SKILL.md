---
name: loop-skill-creator
description: user invoke only
summary: 「この作業をループで回したい」という入力から、ループエンジニアリングの1ターン分ワークフローを実行する loopスキルを1枚生成する。環境のcapabilityを発見して最適な部品を選び、独立evaluatorとStop境界を必須で埋め込む。
argument-hint: [回したい作業の説明]
---

# loop-skill-creator

「この作業をループで回したい」という入力から、ループエンジニアリングの **1ターン分のワークフロー** を実行する **loopスキルを1枚** 生成する。

## このスキルの立ち位置（最初に読む）

- ループは生成をほぼ無料にし、**判断(judgment)を希少資源として残す**。だからここで作るのは「賢い生成器」ではなく「判断を保てる枠組み」。
- 作るのは **1ターンのワークフロー本体**（Discovery→Handoff→Verification→Persistence＋Stop）であって、**それをいつ回すか(scheduler)は作らない**。scheduling はスキルの外に置く（責務分解）。
- このスキル自身が **最初の evaluator** として振る舞う。検証と Stop（人間が "no" と言える扉）を欠いたループは生成しない。論文が最も警告する失敗は「自分を褒めるだけの Nodding loop」と「溶接された扉」であり、ループの生成器がそれをスケールで再生産してはならない。

## 前提（ハード依存）

- 執筆エンジンとして **skill-creator** を使う。**skill-creator が無ければここで停止**し、ユーザに導入を促す。中途半端な自作執筆で品質を落とさないため、フォールバックはしない。
- フレームワークの実体は `references/loop-engineering.md` にある。**「6部品」を本文に直書きせず**、必ずこの reference を読み、そこが挙げる moves/parts を反復処理する。部品の数や名前は将来変わりうる前提で書く。

## 実行フロー

### 1. 最小 intent の聴取
ユーザから取るのは 2 つだけにする:
- **回す作業**: 何を毎ターンやりたいか。
- **Stop 境界**: 人間の確認なしに **絶対やらせないこと**（例: マージしない／削除しない／本番に触れない）。これは "builder の頭の中にしかない" 既約入力なので、ここだけは推測しない。

残り（部品選択・採用スキル・evaluator 基準・persistence 先）は自分で提案する。先回りして用意し、ユーザの負担を減らす。

### 2. capability 発見（scheduling 以外）
各部品が **この環境でどう実現できるか** を調べる。**特定の実装が在ると前提しない**（例: Memory を Serena で実現できる環境とできない環境がある）。
- まず自分の文脈にある available skills / MCP / tools を読む。
- OS レベル（worktree=git など）は軽量プローブ（`command -v` 等）で確認する。
- 曖昧な所だけユーザに聞く。

`references/loop-engineering.md` の各部品にある「探すべき候補実装」を手掛かりにする。**scheduling は調べない**（スコープ外）。

### 3. 設計提案（propose-then-confirm）
作業を moves に対応づけ、部品/実装を選び、一括で提案してユーザに確認を取る:
- 採用する既存スキル（**参照 invoke**。中身はコピーしない）
- **evaluator 基準（必須）**: broken 前提・読むより動かす・fresh model で stop 判定。**基準は作業ドメインに適応させる**（コード以外なら CHECK を書き換え、不変条件だけ保つ）（→ reference 参照）
- **Stop 境界（必須）**
- persistence 先（state file / board など、発見した実装）
- **1 ターン内の max-retries**（暴走の輪止め）

### 4. skill-creator で執筆
埋まった設計を **skill-creator の作法**（anatomy / progressive disclosure / writing style）で 1 枚の SKILL.md に落とす。**test/eval/benchmark ループは回さない**（品質ゲートは次のステップが担う）。

出力の雛形は `assets/loop-skill-template.md`。evaluator の表現は capability 発見の結果で出し分ける:
- 環境が agent 定義を持つ → `assets/evaluator-agent-template.md` を別ファイルで同梱
- 持たない → 「fresh subagent をこの基準で起動せよ」と SKILL.md 内に inline

state file が要るなら `assets/state-template.md` を同梱する。

### 5. 構造セルフチェック（eval 代替の品質ゲート）
生成物に次が揃っているか自分で検証する。**揃わなければ生成を拒否し、何が欠けているかを大声で警告する**:
- 独立した **Verification move**（明示基準つき）
- **Stop / human checkpoint** 節
- discovery/review が **参照 invoke** になっているか（ロジックを二重化していないか）
- **完了レポート**（次ステップ）の材料が揃っているか

環境が独立 evaluator を実現できない（例: subagent 不可）場合は、**黙って skip せず**、degraded 構成での続行に **ユーザの明示 opt-in を要求** し、その事実を記録する。検証の暗黙スキップこそ最も危険な失敗だからである。

### 6. 完了レポート（報連相）
生成後、ユーザに必ず報告する:
- このループスキルが **担う範囲**
- **スコープ外＝ユーザが別途やること**: ① scheduling 起動（このスキルをどう回すか）② per-run/daily budget cap ③ capability 不足で degraded/skip した部品＋その時の opt-in
- **scheduler 起動 contract**: このスキルをどう呼べばよいか（`/name` か `claude -- skill <name>` か）、入力と期待する前提

## 生成物の約束（生成ループスキルの形）

- **薄いオーケストレータ**にする。move 別構成、採用スキルは参照 invoke、足りない物だけ同梱。
- **frontmatter は `disable-model-invocation: true`** にする。副作用のあるワークフローなので、会話中に勝手に動いてはならない。scheduler / `/name` / 手動の明示起動は通る。description は内容を表す実文にしてよい（このフラグがあれば自動起動しないため）。
- **既定配置はプロジェクトローカル `.claude/skills/<work>-loop/`**。dotfiles のグローバル SSoT には自動で入れない（生成ループは環境特化で可搬でないため）。グローバル化は後から手動の意図的操作とする。
- 「skill 名 ＝ 親ディレクトリ名」標準を守る。

## やらないこと

- scheduling の設定・選択・配線（スコープ外。レポートで委ねる）。
- 生成後のフレームワーク変化への追従（作成後 drift は関心外）。
- skill-creator 不在時の自作執筆（停止する）。

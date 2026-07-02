---
name: learning
argument-hint: "[記録したい学び / 補足]"
description: >
  Extract lessons that make next time easier. Fire proactively when:
  (1) a reusable insight emerges at a work boundary — a bug workaround found, a gotcha cleared, the right procedure/command/config figured out after trial and error, a tip for avoiding a repeated mistake.
  (2) a session wraps up — review the whole session and extract its lessons.
summary: >
  「次回から楽になる学び」を抽出するスキル。以下の状況で呼び出す:
  (1) 再利用できる知見が出た区切りで proactive に提案する。具体的には、バグの回避策が分かった / ハマりどころを抜けた / 試行錯誤の末に正しい手順やコマンド・設定の使い方が判明した / 同じ失敗を繰り返さないコツに気づいた、といった場面。
  (2) セッションの締めにも proactive に起動し、セッション全体を振り返って学びを抽出する。
---

# Learning

作業の区切り、またはセッション全体を振り返り、次回から楽になる学びを抽出して、その**汎用性**（どこまで通用するか）に応じた置き場へ記録するスキル。

**なぜやるか**: ここに置いた学びは、次に同じ状況へ出会ったとき（自分や他のエージェントが）参照され、調べ直しややり直しの時間を減らす。だから「次に時間を節約できる知見」を、汎用性に応じた正しい置き場へ置く。

このスキルが属する複利エンジニアリング全体（汎用性1軸の思想・置き場・サイクル）の地図は [README.md](./README.md) を参照。

ユーザからの補足（あれば考慮する）: $ARGUMENTS

## プロセス

### 0. セットアップ

複利エンジニアリングのプロジェクト置き場を用意する。**毎回このステップを通る**。

まず存在ゲートと決定論的セットアップをスクリプトに任せる:

```bash
~/.claude/skills/learning/scripts/setup.sh
```

スクリプトは repo-local（`<repo>/.learnings/index.md`・`STRATEGY_SPEC.md`）の有無を判定し、不足分だけをテンプレからコピーする（既存は上書きしない・冪等）。CLAUDE.md には触れない。

出力が `all set` なら、この節はここで終わり。`ACTION NEEDED (model)` が出たら、**その項目だけ**を次の要領で対応する（出るのは今回作成した分のみ）。

- **`[repo]` STRATEGY_SPEC.md の埋め込み** — スクリプトが置いた素の `STRATEGY_SPEC.md` を、**repo の README / CLAUDE.md / docs から自明に分かる範囲（目的・方針・指標）で埋める**。丸投げしない。人の判断が要る箇所だけ `TODO:` で残し、埋めた内容と残した TODO をユーザに報告する。
- **`[repo]` 作業サイクル節の追記** — repo の CLAUDE.md に「作業サイクル」節が無ければ `assets/templates/project/cycle-section.md` の内容をそのまま追記する。この節は `@.learnings/index.md`（backtick で囲まない）の常時ロード指定を含むので、これ1つで index の自動ロードも成立する。**既存 CLAUDE.md の編集はユーザに確認してから行う**。追記時、その repo で使える review / refactor / test 系 skill（例: `self-code-review`, `tdd-refactoring`）を該当ステップに紐づける。該当 skill が無ければ汎用テンプレのまま残す。

### 1. 対象を振り返る

振り返りの対象（今回の作業の区切り、またはセッションの締めならセッション全体）で何をしたかを整理する。

- 実施した主な作業内容
- 変更したファイルや機能
- 直面した課題や解決した問題
- 使用したツールや技術

### 2. 抽象化フェーズ

具体的な作業内容から、汎用的な学びや知見を抽出する。

**原則:**

- 局所最適化にならないよう、システム全体との整合性・バランスを意識する。
- ただし、具体的で細かい内容でも重要なものは例外的に拾う。
- すでに記録済みの内容は重複させない。

**拾う観点の例:** 設計上の判断基準や理由 / 技術選定の背景 / 陥りやすい落とし穴とその回避方法 / パフォーマンス・セキュリティ上の考慮 / 開発効率を上げる手法 / バグの回避策・正しい手順やコマンド・設定の使い方。

### 3. 保存先の判断（蒸留）

抽出した学びごとに、それが**成り立つと確信できる範囲**だけを見て保存先を1つ選ぶ。判定に汎用性以外の要素（surface のしやすさ等）を混ぜない。

| 汎用性 | 保存先 |
| :--- | :--- |
| あらゆる作業で効く普遍的な話 | グローバル CLAUDE.md（実体 `~/.claude/CLAUDE.md`） |
| 特定領域における普遍的な話 | skill（新規作成 or 既存 skill へ追記） |
| プロジェクト固有だが再利用性のある話 | `<repo>/.learnings/`（`index.md` ＋ `<slug>.md`） |

- **新規 skill 化はサブエージェントに委譲する**。skill 作成は手順が多くコンテキスト消費が大きいので、`skill-creator` を使うサブエージェントへ「何を・どんなトリガ（description）で引ける skill にするか」を渡して任せる。
- **同じ学びに再遭遇したら、再記録しない**。それは既存の学びが使用時点に surface していない（＝効いていない）というループの故障。なぜ surface しなかったか（配置ミス／skill の description が弱い／index 要約が悪い 等）を診断し、根本を直す。

### 4. 承認と反映

**AskUserQuestion ツールを使い、メニュー形式で候補を提示する。**

各候補について:

- 候補の内容を簡潔に説明
- 保存先（グローバル CLAUDE.md ／ skill ／ `<repo>/.learnings/`）を提案
- 記録する価値がある理由を明記

ユーザが選択した候補のみを反映する。**グローバル CLAUDE.md への追記と skill の新規作成・追記はグローバル資産の変更なので、必ずこの承認を経てから行う**。

`.learnings/<slug>.md` に置く学びは <learning-entry-format> で書き、`.learnings/index.md` に `<slug>.md — タイトル — 1行要約` を1行だけ追記する（index は短く保つ）。グローバル CLAUDE.md / skill へ置く場合は、その保存先の慣習に従う。

<learning-entry-format>
```markdown
### タイトル

**学び**: 何が効くか / 何を避けるか

**根拠**: いつ・どこで分かったか

**適用範囲**: どんな場面で使えるか

**例外・前提**: 使えない場面・前提条件
```
</learning-entry-format>

### 5. 報告する

今回 記録した学びを、保存先とあわせて一覧でユーザに報告する。

## 重要事項

- このセッション（または今回の区切り）で新たに得られた知見のみを抽出する。既に記録済みの内容は除外する。
- 将来の作業で役立つ情報を優先する。Less is More の原則に則り、簡潔で本質的な内容に絞る（一度に詰め込まず数件まで）。
- 似た学びが2つあれば1つに統合する。
- 後で誤りと分かった学びは消さず、「撤回: 理由」を追記して残す（同じ失敗を繰り返さないため）。

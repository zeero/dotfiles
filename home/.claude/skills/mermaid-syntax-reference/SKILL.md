---
name: mermaid-syntax-reference
description: Official Mermaid diagram syntax reference covering every diagram type (flowchart, sequence, class, state, ER, gantt, git graph, mindmap, and 24 more). Use whenever writing, editing, or debugging any Mermaid diagram, even if the user doesn't say "mermaid" and just describes wanting a flowchart/sequence diagram/ER diagram/etc., or pastes a code block starting with a diagram keyword like flowchart, sequenceDiagram, classDiagram, stateDiagram-v2, erDiagram, gitGraph.
summary: mermaid-jsの全図種（32種）の公式構文リファレンス。references/配下に図種ごとの公式Markdownを格納し、SKILL.mdは対応表とキーワード逆引きに徹する設計。
---

# 📊 Mermaid 構文リファレンス

本スキルは、Mermaid（mermaid-js）が公式にサポートする全ダイアグラム種別の構文リファレンスです。各図種の詳細な構文・オプション・記述例は `references/` 配下の公式Markdownファイルに1図種1ファイルで格納されています。SKILL.md本体は各ファイルへの案内（目次）に徹し、詳細はリファレンスファイルを読んで確認してください。

## 🔍 目次

1. [🎯 使い方](#-使い方)
1. [📂 図種一覧とリファレンスファイル対応表](#-図種一覧とリファレンスファイル対応表)
1. [🧭 図種の選び方に迷ったら](#-図種の選び方に迷ったら)
1. [✍️ 作成・トラブルシューティングの心得](#-作成・トラブルシューティングの心得)

---

## 🎯 使い方

1. ユーザーの依頼（「フローチャートを書きたい」「このmermaidのシーケンス図がエラーになる」等）から対象の図種を特定する。
1. 下表で該当する `references/*.md` を特定し、そのファイルを読み込む。
1. ファイル内の構文・予約語・既知の注意点（例: flowchartの `end` 予約語問題）に厳密に従ってコードを書く／修正する。
1. 表にない図種や、表の説明だけでは判断できない場合も、まず `references/examples.md`（複数図種の実例集）や近い図種のファイルを確認してから判断する。

## 📂 図種一覧とリファレンスファイル対応表

| リファレンスファイル | 図種 | 開始キーワード | 概要 |
|---|---|---|---|
| `references/flowchart.md` | フローチャート | `flowchart` / `graph` | ノードとエッジによる汎用図。分岐・部分グラフ・スタイリングを扱う最頻出の図種 |
| `references/sequenceDiagram.md` | シーケンス図 | `sequenceDiagram` | アクター間のメッセージのやり取りと順序を表現 |
| `references/classDiagram.md` | クラス図 | `classDiagram` | UMLクラス図。継承・関連・メソッド・可視性を表現 |
| `references/stateDiagram.md` | ステート図 | `stateDiagram-v2` | 状態遷移図。複合状態・並行状態・履歴状態を扱う |
| `references/entityRelationshipDiagram.md` | ER図 | `erDiagram` | エンティティと関係、カーディナリティを表現 |
| `references/gantt.md` | ガントチャート | `gantt` | スケジュール・タスクの依存関係・進捗を表現 |
| `references/pie.md` | 円グラフ | `pie` | 割合の可視化 |
| `references/gitgraph.md` | Gitグラフ | `gitGraph` | ブランチ・コミット・マージの履歴を可視化 |
| `references/mindmap.md` | マインドマップ | `mindmap` | 階層的なアイデアの整理 |
| `references/timeline.md` | タイムライン | `timeline` | 時系列イベントの表現 |
| `references/quadrantChart.md` | 象限チャート | `quadrantChart` | 2軸による分類・優先度マトリクス |
| `references/sankey.md` | サンキー図 | `sankey-beta` | フロー量の可視化 |
| `references/xyChart.md` | XYチャート | `xychart-beta` | 棒グラフ・折れ線グラフ |
| `references/block.md` | ブロック図 | `block-beta` | 自由配置のブロックと結線 |
| `references/packet.md` | パケット図 | `packet-beta` | ネットワークパケットのビットフィールド可視化 |
| `references/kanban.md` | かんばんボード | `kanban` | タスクをカラム分けして管理するボード |
| `references/architecture.md` | アーキテクチャ図 | `architecture-beta` | サービス・グループ・エッジによるクラウド構成図向け表現 |
| `references/radar.md` | レーダーチャート | `radar-beta` | 多軸データの比較 |
| `references/treemap.md` | ツリーマップ | `treemap-beta` | 階層データを面積で表現 |
| `references/treeView.md` | ツリービュー | `treeView-beta` | 階層構造をツリー表示 |
| `references/requirementDiagram.md` | 要求図 | `requirementDiagram` | 要件とその関係・トレーサビリティ |
| `references/c4.md` | C4モデル図 | `C4Context` 等 | コンテキスト・コンテナ・コンポーネント図 |
| `references/userJourney.md` | ユーザージャーニー図 | `journey` | ユーザー体験の各段階と満足度を表現 |
| `references/zenuml.md` | ZenUML | `zenuml` | ZenUML記法によるシーケンス図の代替表現 |
| `references/swimlanes.md` | スイムレーン図 | `swimline-beta` | レーン分けされたプロセスフロー |
| `references/wardley.md` | ワードリーマップ | `wardley-beta` | バリューチェーンの進化度を可視化する戦略マップ |
| `references/cynefin.md` | Cynefinフレームワーク図 | `cynefin-beta` | 意思決定領域（Clear/Complicated/Complex/Chaotic）の分類 |
| `references/ishikawa.md` | 特性要因図（フィッシュボーン図） | `ishikawa-beta` | 問題の原因を魚骨状に整理 |
| `references/venn.md` | ベン図 | `venn-beta` | 集合の重なりを表現 |
| `references/eventmodeling.md` | イベントモデリング図 | `eventmodeling` | イベント駆動システムの設計図 |
| `references/railroad.md` | 鉄道図（構文図） | `railroad-ebnf-beta` | EBNF構文をレール状に視覚化 |
| `references/examples.md` | 実例集 | - | 特定の図種の解説ではなく、複数図種を横断した記述例集 |

## 🧭 図種の選び方に迷ったら

- ユーザーが図種名を明言していない場合、依頼内容の性質から対応表の「概要」列を頼りに近い図種を推測し、「〇〇図として書きます」とユーザーに一言添えてから進める。
- 既存のmermaidコードを修正する依頼では、コード冒頭のキーワード（```flowchart` `sequenceDiagram` など。YAML frontmatter `---` がある場合はその直後の行）で対応表を逆引きする。
- 表にないバリエーション（例: 図種名の後ろに `-beta` が付く新しめの構文）に遭遇したら、まず該当ファイルを読み、それでも解決しない場合は `references/examples.md` や公式サイト（https://mermaid.ai/open-source/syntax/）を確認する。

## ✍️ 作成・トラブルシューティングの心得

構文の正しさだけでなく、図としての読みやすさ・保守しやすさも意識する。

- **図種の決定**: ユーザーの依頼内容（表現したい関係性が「順序」なのか「階層」なのか「時系列」なのか等）から最も適した図種を先に決める。ユーザーが図種を指定していても、内容的に別の図種の方が適切な場合は代替案を提案してよい。
- **ノードID・ラベルの命名**: ノードIDは意味のある英数字にし、表示ラベルは日本語で分かりやすく記述する（例: `id A[受注]` であって `id A[A]` にしない）。
- **可読性のためのスタイリング**: 図が複雑になる場合は`classDef`やサブグラフでグルーピングし、色分けや方向指定（`TD`/`LR`等）で視線の流れを整理する。
- **複雑な箇所のコメント**: ノード数や分岐が多く一見して意図が読み取りにくい部分には、mermaidコード内に `%%` コメントで意図を残す。
- **巨大な図の分割提案**: 1つの図にすべてを詰め込むと可読性が落ちる場合、複数の図に分割することを提案する（例: 全体像のフローチャート＋詳細のシーケンス図）。
- **構文エラーのトラブルシューティング**: エラーが出た場合は、まず対応するリファレンスファイルの予約語・既知の落とし穴（例: flowchartの`end`問題、ノード名の先頭文字問題）を確認してから修正する。それでも解決しない場合は`references/examples.md`や近い図種のファイルの記述例と照合する。

Source: https://github.com/mermaid-js/mermaid (develop branch, `packages/mermaid/src/docs/syntax/`) — 取得日 2026-07-24

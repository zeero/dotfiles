# 自前ノート（非公式）

公式 docs スナップショット（`references/`）とは出典が異なる、実運用で得た自前のノウハウの蓄積場所。skill の設定・運用に関する知見が出るたびに、トピック単位の見出しで追記していく。各トピックには根拠（いつ・どこで確認したか）を添える。

## 発火信頼性

### 語の希釈によるno-op化

description内の語（例: "proactively"）が、多数のskill descriptionや基盤インストラクションで共通して使われていると、その語はモデルへの差別化情報を持たなくなり、実際の発火行動を変えないno-opになる。同じ語がリポジトリ内の他skillでも多用されていないか確認し、多用されているなら、そのskill固有の強いleading wordに置き換える。

### スキル発火自体のメタレベルpremature completion

発火条件を満たした場面で、実際にSkillツールを呼ばずに「次にこのskillを使うとよい」という提案（例: 会話末尾のネクストアクション欄への記載）だけで済ませてしまうことがある。これは「提案した」ことを「実行した」ことと錯覚する、発火判断そのものにおけるpremature completionである。descriptionに「呼び出すとは今すぐ実行することを指し、提案欄への記載は発火とみなさない」旨を明記すると、この取り違えを防ぎやすい。

**根拠**: 2026-07-24、dotfilesリポジトリで `learning` skillが「実行されず次アクション提案止まりになりがち」という指摘を受けて診断した際に確認。

## 起動制御

### disable-model-invocation は in-app scheduler からの起動もブロックする

frontmatter `disable-model-invocation: true` の起動可否は次の通り。

- **通る**: 手動 `/name`、headless `claude -p "/name"`（いずれも user invocation 扱い）
- **ブロックされる**: モデルの Skill ツール呼び出し、および in-app scheduler（CronCreate / `/loop` / `/schedule`）からの起動。v2.1.196 以降、scheduled fire は slash command を plain text として渡すためスキルが発動しない

「scheduler から回せるはず」と誤って前提すると、cron 配線後に静かに空振りする。このフラグ付きスキルに定期実行を設計するときは、起動 contract に「in-app scheduler 不可・OS レベルの cron / launchd から `claude -p "/name"` を使う」と明記するか、人間の判断で frontmatter の当該行を外す。

**根拠**: 2026-07-20、claude-code-guide agent 経由で code.claude.com/docs の skills.md / scheduled-tasks.md から確認。Cron タスクから呼び出せなかった実体験とも一致（daytrade プロジェクトの auto-memory から昇格）。

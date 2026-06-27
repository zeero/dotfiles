# worktree で external レビューを頼むときはコミットしてからコミットハッシュで連携する

## 状況

git worktree 上の plan/spec を Codex（`/doc-review-external`）にレビューさせたところ、Codex が冒頭で「現状は main ブランチ・registry は 1 Unit・baseline 合計は 56,895」と、実態（HEAD のブランチ・2 Unit・baseline 127,443.84）と食い違う前提でレビューを始めた。原因は Codex 側の context-mode / serena などのキャッシュ索引が古い別スナップショットを指していたこと。レビュー対象の文書自体は stdin で正しく渡っていたが、Codex が「文書の前提と repo 実態が合うか」を検証する段で stale な索引を見て、存在しないはずの前提不足を Critical 級で複数並べてしまった。

## 結論

**worktree 上のコードや文書を external（codex / claude / gemini など）にレビューさせる前に、対象を必ずコミットし、レビュー依頼にコミットハッシュを明示する。** そのうえで「キャッシュ索引ではなく `git show <hash>` / `git log` / 実ファイルで実態を確認せよ」と指示する。

doc レビューでも code レビューでも同じ。external レビューアは自前の索引・既定 cwd・前回セッションの状態に引きずられて、現在の worktree の HEAD とズレた前提で評価することがある。コミット＋ハッシュ連携は、レビューアが見るべき一点を git の事実に固定する最も安いアンカー。

実例では、コミットして `8fbb729` を渡し「git で実態確認せよ」と添えて再依頼したら、2回目は正しい状態（HEAD・2 Unit・正しい baseline）を確認したうえでレビューし、指摘の質が大きく改善した。stale 前提に基づく1回目の Critical 指摘群は不採用にできた（[[review-ai-hedged-findings-verify-first]] のとおり、external の前提主張も実コードで照合してから採否を決める）。

## 適用の決め手

- external レビューを頼む対象が worktree / feature ブランチ上にある → コミット前にレビューさせない
- 依頼文に「対象 = commit `<hash>`」「索引でなく git/実ファイルで実態確認」を入れる
- レビュー結果が「ブランチ・登録構成・baseline 値などの repo 状態」を前提にしている → その前提が現 HEAD と一致するか自分で git/Read 照合してから採否を決める
- 状態前提に基づく指摘と、文書内部の論理・網羅性に基づく指摘を分け、前者は実態とズレていれば不採用にする

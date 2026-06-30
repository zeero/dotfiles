# state file — テンプレート

> 生成ループスキルの Persistence 出力。会話の外に残るループの記憶。
> 「エージェントは忘れる、リポジトリは忘れない」。次ターンはまずこれを読む。

```markdown
# <work> ループ state（最終更新: <run marker>）

| finding | source | priority | status |
|---------|--------|----------|--------|
| <例: auth test flaky> | <CI #4821> | <high> | <fixing / PR open / inbox / done> |

## 次ターンへの申し送り
- <未完のまま翌ターンが引き継ぐ事項>
```

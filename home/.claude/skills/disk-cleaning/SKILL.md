---
name: disk-cleaning
description: user invoke only
---

### 安全なコマンド
- `xcrun simctl delete unavailable`
- `brew cleanup --prune=all`
- `colima prune`
- `docker system prune`
  - `-af` はつけない方がいいかも？
    - `-a`: どのコンテナからも使われていないイメージも含む
    - `-f`: 確認プロンプトをスキップ


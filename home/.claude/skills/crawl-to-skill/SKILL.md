---
name: crawl-to-skill
description: An orchestration skill that collects references from documentation URLs on the web and chains into skill creation (skill-creator). Always activate it for requests like 「URLからスキルを作って」「このドキュメントを元にスキル化したい」「firecrawlでリファレンスを集めてスキルを作って」.
---

# Crawl-to-Skill Workflow

このスキルは、Web上のドキュメント（公式リファレンス等）を起点に新しいエージェントスキルを作成する際の一連のワークフローを自動化します。`firecrawl` を用いたクリーンなドキュメントのスクレイピングと、`skill-creator` へのシームレスな引き継ぎをオーケストレーションします。作業ディレクトリに不要な一時ファイルを作成しないように注意してください。

## 🎯 実行フロー

### Step 0: 要件の確認
ユーザーから以下の情報を取得します。
- **起点となるURL**: 必須。
- **テーマやキーワード**: オプション。指定がない場合は「公式リファレンス全体の収集」と推定します。

### Step 1: サイトのMap化 (URL抽出)
`firecrawl map` を用いて対象ドキュメントのURLリストを抽出し、一時ディレクトリ（例: `/tmp/crawl_urls.txt`）に保存します。カレントディレクトリにはファイルを作成しないでください。

```bash
# 例
firecrawl map <url> --search "<テーマ>" > /tmp/crawl_urls.txt
```

*注意*: 抽出されたURLリストが膨大な場合は、ユーザーにスクレイピング対象を絞り込むか確認してください。

### Step 2: クリーンなMarkdownの並列Scrape
本スキルに同梱されている汎用スクレイピングスクリプト (`scripts/scrape_parallel.py`) を使用して、抽出したURLリストからクリーンなMarkdownを並列で取得します。カレントディレクトリにスクリプトを生成するのではなく、必ず同梱のスクリプトを使用してください。

```bash
# スクリプトの実行
python ~/.agents/skills/crawl-to-skill/scripts/scrape_parallel.py /tmp/crawl_urls.txt references/
```

- 保存先ディレクトリ引数（上記では `references/`）には、現在作成しようとしているスキルのワークスペース（または作業フォルダ）内の `references/` を指定してください。
- 実行後は、作成した一時ファイル（`/tmp/crawl_urls.txt` など）を削除してクリーンアップしてください。

### Step 3: skill-creator への引き継ぎ
リファレンスの収集が完了したら、以下の手順でスキル作成フローへ移行します。
1. `references/` ディレクトリにMarkdownファイルが正しく保存されたことを確認します。
2. ユーザーに「リファレンスの収集が完了しました。`skill-creator` を起動してスキル作成に進みますか？」と確認を取る、または要件が明確な場合は直ちに `activate_skill` で `skill-creator` を呼び出します。
3. `skill-creator` に対して、「先ほど収集した `references/` 内のドキュメントをベースにして、[ユーザーの目的に沿った] スキルを作成してください」と指示を与え、スキル作成プロセスを開始します。

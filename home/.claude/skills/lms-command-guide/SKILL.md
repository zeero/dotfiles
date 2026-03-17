---
name: lms-command-guide
description: >
  LM Studio の CLI ツール `lms` を使ったローカル LLM 管理を支援するスキル。
  以下のシナリオで必ず使用すること:
  (1) lms コマンドでモデルの一覧表示・ロード・アンロード・チャットをしたい
  (2) LM Studio のローカル API サーバーを起動・停止・管理したい
  (3) ローカルモデルをダウンロード・インポートしたい
  (4) 推論ランタイムを管理・切り替えたい
  (5) LM Studio Hub へのログイン・モデルの公開・クローンをしたい
  (6) lms log stream でリクエスト/レスポンスをモニタリングしたい
  ユーザーが「lms」「LM Studio」「ローカルモデル」「ローカル LLM」などに言及した場合、このスキルを積極的に使用すること。
---

# LM Studio CLI (lms) ガイド

LM Studio が提供する CLI ツール。ローカル LLM のモデル管理・サーバー操作・ランタイム管理をターミナルから行える。

## モデル操作

### モデル一覧・状態確認

```sh
lms ls          # ディスク上のモデル一覧（サイズ・アーキテクチャ表示）
lms ps          # 現在メモリにロード中のモデル一覧
```

### モデルのロード・アンロード

```sh
lms load <model-id>      # モデルをロード（例: lms load qwen/qwen3.5-35b-a3b）
lms unload <model-id>    # モデルをアンロード
lms unload --all         # 全モデルをアンロード
```

ロード済みモデルの identifier は API/SDK から `"<model-id>"` で参照できる。

### チャット

```sh
lms chat                        # ロード済みモデルと対話チャット
lms chat --model <model-id>     # 特定モデルを指定してチャット
```

### モデルの取得・インポート

```sh
# HuggingFace Hub からダウンロード（量子化指定可）
lms get <model-name>
lms get llama-3.1-8b@q4_k_m    # 量子化を "@" で指定
lms get --mlx                   # MLX モデルのみ検索
lms get --gguf                  # GGUF モデルのみ検索
lms get -y <model-name>         # 確認をスキップ（スクリプト向け）

# ローカルファイルからインポート
lms import <file-path>
lms import model.gguf --user-repo myuser/myrepo
lms import model.gguf --copy        # コピー（元ファイルを保持）
lms import model.gguf --symbolic-link  # シンボリックリンク
lms import model.gguf --dry-run     # 実行せず確認のみ
```

## サーバー管理

LM Studio はローカルに OpenAI 互換 API サーバーを建てられる（デフォルト: `http://localhost:1234`）。

```sh
lms server start    # サーバー起動
lms server stop     # サーバー停止
lms server status   # サーバー状態確認
```

### リクエストのログ監視

```sh
lms log stream      # リクエスト/レスポンスをリアルタイム表示（デバッグに有用）
```

## ランタイム管理

```sh
lms runtime ls                  # インストール済みエンジン一覧
lms runtime select              # 使用エンジンの切り替え（対話式）
lms runtime survey              # ハードウェア情報のサーベイ
lms runtime update              # ランタイムを最新版に更新
lms runtime get                 # ランタイムの追加ダウンロード
lms runtime remove              # ランタイムの削除
```

## リモート連携（LM Link）

別デバイスの LM Studio インスタンスと連携できる機能。

```sh
lms link enable                             # LM Link を有効化
lms link disable                            # LM Link を無効化
lms link status                             # LM Link の状態確認
lms link set-device-name <name>             # デバイス名を設定
lms link set-preferred-device <device>      # 優先デバイスを設定
```

## 開発・公開（Beta）

LM Studio Hub へのモデル・プラグインの公開機能。

```sh
lms login           # Hub へのログイン
lms logout          # ログアウト
lms whoami          # 認証状態の確認

lms clone <artifact>    # Hub からアーティファクトをクローン
lms push                # カレントディレクトリのアーティファクトを Hub へアップロード
lms dev                 # プラグイン開発サーバーを起動（カレントディレクトリ）
```

## よくある操作パターン

### モデルをダウンロードしてすぐ使う

```sh
lms get qwen/qwen3.5-35b-a3b
lms load qwen/qwen3.5-35b-a3b
lms chat
```

### API サーバーを起動してリクエストを確認しながら使う

```sh
lms server start
lms log stream &        # バックグラウンドでログを流す
# → curl や SDK でリクエストを送ると、ここにログが表示される
```

### 特定量子化のモデルをダウンロード

```sh
lms get llama-3.1-8b@q4_k_m -y     # 確認なしでダウンロード
```

## モデル ID の調べ方

`lms ls` で表示される識別子がそのまま `lms load` や API の `model` パラメータに使える。

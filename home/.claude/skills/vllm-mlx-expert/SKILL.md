---
name: vllm-mlx-expert
description: "Expert guidance for vllm-mlx — Apple Silicon ネイティブの LLM 推論サーバー。OpenAI / Anthropic 互換 API を提供し、MLX バックエンドで動作する。以下のシナリオで使用する: (1) vllm-mlx サーバーの起動・設定, (2) モデル選択（LLM / VLM / Audio / Embeddings）, (3) OpenAI SDK / Anthropic SDK / Claude Code との連携, (4) MCP Tool Calling の設定, (5) Continuous Batching / KV Cache のパフォーマンスチューニング, (6) Reasoning モデル（Qwen3 / DeepSeek-R1）の設定, (7) vllm-mlx のソースコード変更・デバッグ・開発"
---

# vllm-mlx Expert

Apple Silicon 向けの vLLM ライクな推論サーバー。MLX バックエンドで GPU 加速し、OpenAI / Anthropic 互換 API を提供する。

**GitHub:** https://github.com/waybarrios/vllm-mlx
**ローカルリポジトリ:** `/Users/zeero/dev/vllm-mlx`

## インストール

```bash
git clone https://github.com/waybarrios/vllm-mlx.git
cd vllm-mlx
uv pip install -e .        # uv 推奨

# オプション依存
pip install -e ".[vision]"   # 動画処理
pip install mlx-audio        # TTS/STT
pip install mlx-embeddings   # Embeddings
```

**動作確認:**
```bash
vllm-mlx --help
uname -m  # arm64 であること
```

## サーバー起動

```bash
# 基本
vllm-mlx serve mlx-community/Llama-3.2-3B-Instruct-4bit --port 8000

# Continuous Batching（高スループット・並列リクエスト向け）
vllm-mlx serve mlx-community/Llama-3.2-3B-Instruct-4bit --port 8000 --continuous-batching

# API キー設定
vllm-mlx serve mlx-community/Llama-3.2-3B-Instruct-4bit --port 8000 --api-key your-secret-key

# Reasoning モデル
vllm-mlx serve mlx-community/Qwen3-8B-4bit --reasoning-parser qwen3

# Embeddings 同時起動
vllm-mlx serve mlx-community/Llama-3.2-3B-Instruct-4bit \
  --embedding-model mlx-community/all-MiniLM-L6-v2-4bit
```

## API 利用

### OpenAI SDK

```python
from openai import OpenAI
client = OpenAI(base_url="http://localhost:8000/v1", api_key="not-needed")

response = client.chat.completions.create(
    model="default",
    messages=[{"role": "user", "content": "Hello!"}],
)
```

### Anthropic SDK / Claude Code

```python
from anthropic import Anthropic
client = Anthropic(base_url="http://localhost:8000", api_key="not-needed")

response = client.messages.create(
    model="default",
    max_tokens=256,
    messages=[{"role": "user", "content": "Hello!"}]
)
```

**Claude Code から接続:**
```bash
export ANTHROPIC_BASE_URL=http://localhost:8000
export ANTHROPIC_API_KEY=not-needed
claude
```

## モデルタイプ別ガイド

詳細は `references/models.md` を参照（モデル選択・VLM・Reasoning・Audio・Embeddings）。
サーバー詳細設定・MCP・パフォーマンスは `references/server.md` を参照。

## コードベース構造

```
vllm_mlx/
├── server.py     # FastAPI サーバー（エントリポイント）
├── engine.py     # 推論エンジン抽象レイヤー
├── mllm.py       # マルチモーダル処理
└── models/       # モデル別ハンドラー

docs/
├── getting-started/   # インストール・クイックスタート
├── guides/            # 機能別ガイド
└── reference/         # CLI・設定リファレンス
```

## トラブルシューティング

| 問題 | 対処 |
|------|------|
| MLX not found | `uname -m` が `arm64` か確認 |
| OOM | より小さい量子化モデルに変更（例: 4bit → 3bit）|
| HuggingFace ダウンロード失敗 | `huggingface-cli login` で認証 |
| Gemma 3 VLM エラー | `GEMMA3_SLIDING_WINDOW=8192` 環境変数を設定 |
| MLLM message null エラー | `exclude_none=True` が適用されているか確認（`mllm.py`）|

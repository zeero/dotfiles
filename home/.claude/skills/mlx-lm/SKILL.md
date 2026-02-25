---
name: mlx-lm
description: >
  MLX LM (mlx-lm) を使ったテキスト生成・チャット・HTTP サーバ起動を支援するスキル。
  Apple Silicon 上で LLM を動かす際に使用する。以下のシナリオで利用すること:
  (1) mlx_lm.generate / mlx_lm.chat でテキストを生成・会話する
  (2) Python API で load/generate/stream_generate を使う
  (3) mlx_lm.server で OpenAI 互換 HTTP API サーバを立ち上げる
  (4) mlx_lm.convert でモデルを MLX 形式に変換・量子化する
  (5) mlx-community の HuggingFace モデルを使いたい
---

# MLX LM

Apple Silicon 上で LLM を動かすためのライブラリ。HuggingFace Hub と統合されており、数千のモデルをそのまま利用できる。

## インストール

```sh
pip install mlx-lm
# ファインチューニングも使う場合
pip install "mlx-lm[train]"
```

## CLI コマンド一覧

| コマンド | 用途 |
|---------|------|
| `mlx_lm.generate` | テキスト生成 |
| `mlx_lm.chat` | 対話チャット REPL |
| `mlx_lm.server` | OpenAI 互換 HTTP サーバ起動 |
| `mlx_lm.convert` | モデルを MLX 形式に変換・量子化 |
| `mlx_lm.lora` | LoRA/QLoRA ファインチューニング |
| `mlx_lm.fuse` | アダプタをモデルに統合 |

各コマンドのオプションは `--help` で確認できる。

デフォルトモデル: `mlx-community/Llama-3.2-3B-Instruct-4bit`（`--model` 未指定時）
数千のモデルが [MLX Community](https://huggingface.co/mlx-community) で利用可能。

## テキスト生成

```bash
mlx_lm.generate --model mlx-community/Mistral-7B-Instruct-v0.3-4bit \
    --prompt "Apple Silicon の特長を教えて"
```

### Python API（基本）

```python
from mlx_lm import load, generate

model, tokenizer = load("mlx-community/Mistral-7B-Instruct-v0.3-4bit")
messages = [{"role": "user", "content": "Hello!"}]
prompt = tokenizer.apply_chat_template(messages, add_generation_prompt=True)
text = generate(model, tokenizer, prompt=prompt, verbose=True)
```

### Python API（ストリーミング）

```python
from mlx_lm import load, stream_generate

model, tokenizer = load("mlx-community/Mistral-7B-Instruct-v0.3-4bit")
messages = [{"role": "user", "content": "Hello!"}]
prompt = tokenizer.apply_chat_template(messages, add_generation_prompt=True)

for response in stream_generate(model, tokenizer, prompt, max_tokens=512):
    print(response.text, end="", flush=True)
print()
```

詳細な Python API オプション・サンプリング設定は `references/generate.md` を参照。

## HTTP サーバ

```bash
mlx_lm.server --model mlx-community/Mistral-7B-Instruct-v0.3-4bit
# → localhost:8080 で OpenAI 互換 API が起動
```

```bash
# 動作確認
curl localhost:8080/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{"messages": [{"role": "user", "content": "Say hello!"}], "temperature": 0.7}'
```

サーバの詳細（リクエスト/レスポンスフィールド、エンドポイント一覧）は `references/server.md` を参照。

## モデル変換・量子化

```bash
# HuggingFace モデルを 4bit 量子化して変換
mlx_lm.convert --model mistralai/Mistral-7B-Instruct-v0.3 -q

# HuggingFace にアップロード
mlx_lm.convert \
    --model mistralai/Mistral-7B-Instruct-v0.3 \
    -q \
    --upload-repo mlx-community/my-4bit-mistral
```

## 大規模モデルの注意点

モデルが RAM に対して大きい場合は wired memory 制限を増やすと速くなる（macOS 15+ が必要）:

```bash
sudo sysctl iogpu.wired_limit_mb=N  # N = モデルサイズ(MB)より大きく、RAM より小さい値
```

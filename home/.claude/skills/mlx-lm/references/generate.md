# mlx_lm.generate / Python API リファレンス

## generate 関数の主なパラメータ

```python
from mlx_lm import load, generate

model, tokenizer = load("mlx-community/Mistral-7B-Instruct-v0.3-4bit")
text = generate(
    model,
    tokenizer,
    prompt=prompt,
    max_tokens=256,
    verbose=True,
    # sampler=...         # カスタムサンプラー（省略時はデフォルト greedy）
    # logits_processors=[] # logits 加工のパイプライン
)
```

詳細は `help(generate)` を参照。

## サンプリング

`generate` / `stream_generate` は `sampler` と `logits_processors` を受け付ける。

- **sampler**: `(logits: array) -> array` — バッチ化 logits を受け取りサンプリング済みトークンを返す callable
- **logits_processors**: `[(token_history, logits) -> logits]` のリスト（順番に適用）

標準的な実装は `mlx_lm.sample_utils` で提供されている。

## プロンプトキャッシュ

同じ長いプロンプトを複数クエリで再利用する際に高速化。

### CLI でキャッシュ

```bash
cat prompt.txt | mlx_lm.cache_prompt \
  --model mistralai/Mistral-7B-Instruct-v0.3 \
  --prompt - \
  --prompt-cache-file mistral_prompt.safetensors

mlx_lm.generate \
    --prompt-cache-file mistral_prompt.safetensors \
    --prompt "\nSummarize the above text."
```

キャッシュを使う場合、モデル指定は不要（キャッシュから読み込まれる）。

### Python API でキャッシュ

マルチターン対話や同一コンテキストで複数リクエストを処理する場合に有効。詳細は `examples/chat.py` を参照。

## 長いプロンプトへの対応

```bash
# ローテーティング KV キャッシュ（小さい値=省メモリ/品質低下、大きい値=高品質/高メモリ）
mlx_lm.generate --max-kv-size 4096 --prompt "..."
```

## 信頼できないトークナイザーへの対応

一部モデルはリモートコードの実行が必要:

```bash
mlx_lm.generate --trust-remote-code --model qwen/Qwen-7B --prompt "..."
```

Python API での設定:

```python
model, tokenizer = load(
    "qwen/Qwen-7B",
    tokenizer_config={"eos_token": "<|endoftext|>", "trust_remote_code": True},
)
```

## バッチ生成

複数プロンプトを効率的に並列処理する場合は `examples/batch_generate_response.py` を参照。

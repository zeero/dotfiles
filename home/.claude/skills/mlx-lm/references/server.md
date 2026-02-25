# mlx_lm.server リファレンス

OpenAI Chat API 互換の HTTP API サーバ。開発・検証用途向け（本番環境は非推奨）。

## 起動

```bash
mlx_lm.server --model <path_or_hf_repo> [--host <host>] [--port <port>]
# デフォルト: localhost:8080
```

## エンドポイント

### POST /v1/chat/completions

チャット形式でテキスト生成。

```bash
curl localhost:8080/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{
    "messages": [{"role": "user", "content": "Hello!"}],
    "temperature": 0.7,
    "max_tokens": 256,
    "stream": false
  }'
```

#### リクエストフィールド

| フィールド | 型 | デフォルト | 説明 |
|-----------|-----|-----------|------|
| `messages` | array | 必須 | `[{"role": "user"/"assistant"/"system", "content": "..."}]` |
| `max_tokens` | int | 512 | 最大生成トークン数 |
| `stream` | bool | false | ストリーミングレスポンス（SSE 形式） |
| `temperature` | float | 0.0 | サンプリング温度 |
| `top_p` | float | 1.0 | Nucleus sampling パラメータ |
| `top_k` | int | 0 | Top-k sampling（0=無効） |
| `min_p` | float | 0.0 | Min-p sampling（0=無効） |
| `stop` | string/array | - | 生成停止シーケンス |
| `repetition_penalty` | float | 1.0 | 繰り返しペナルティ |
| `repetition_context_size` | int | 20 | 繰り返しペナルティのコンテキスト幅 |
| `logit_bias` | dict | null | トークン ID → バイアス値 |
| `logprobs` | int | - | 返す上位トークンの log prob 数（1-10） |
| `model` | string | - | リクエストごとにモデルを上書き（ローカルパスは相対パス） |
| `adapters` | string | - | LoRA アダプタのパス（相対パス） |
| `draft_model` | string | - | Speculative decoding 用の小さいモデル（null でアンロード） |
| `num_draft_tokens` | int | 3 | ドラフトモデルが一度に予測するトークン数 |
| `role_mapping` | dict | - | ロールプレフィックスのカスタマイズ |

#### レスポンスフィールド

```json
{
  "id": "chatcmpl-xxx",
  "object": "chat.completion",
  "model": "mlx-community/Mistral-7B-Instruct-v0.3-4bit",
  "created": 1234567890,
  "system_fingerprint": "...",
  "choices": [
    {
      "index": 0,
      "finish_reason": "stop",
      "message": {"role": "assistant", "content": "..."},
      "logprobs": {
        "token_logprobs": [...],
        "tokens": [...],
        "top_logprobs": [...]
      }
    }
  ],
  "usage": {
    "prompt_tokens": 10,
    "completion_tokens": 50,
    "total_tokens": 60
  }
}
```

`finish_reason` は `"stop"` または `"length"` のいずれか。

### GET /v1/models

ローカルに利用可能なモデルの一覧を返す。

```bash
curl localhost:8080/v1/models -H "Content-Type: application/json"
```

レスポンス例:
```json
{
  "data": [
    {"id": "mlx-community/Mistral-7B-Instruct-v0.3-4bit", "created": 1234567890}
  ]
}
```

## ストリーミングの例

```bash
curl localhost:8080/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{
    "messages": [{"role": "user", "content": "Count to 5"}],
    "stream": true
  }'
```

SSE 形式（`data: {...}` 行が順次届く）でレスポンスが返る。

## Python クライアント例（openai ライブラリを流用）

```python
from openai import OpenAI

client = OpenAI(base_url="http://localhost:8080/v1", api_key="not-needed")

response = client.chat.completions.create(
    model="mlx-community/Mistral-7B-Instruct-v0.3-4bit",
    messages=[{"role": "user", "content": "Hello!"}],
    max_tokens=256,
)
print(response.choices[0].message.content)
```

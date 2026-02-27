# サーバー設定・MCP・パフォーマンス

## CLI オプション一覧

```bash
vllm-mlx serve <model-id> [options]

  --port <n>                   ポート番号（デフォルト: 8000）
  --api-key <key>              API キー（未設定時は認証なし）
  --continuous-batching        Continuous Batching 有効化
  --embedding-model <model>    Embeddings モデルを同時起動
  --reasoning-parser <parser>  Reasoning パーサー（qwen3/deepseek_r1/gpt_oss）
  --mcp-config <file>          MCP 設定ファイルパス
  --kv-cache-quantization      KV Cache の量子化
  --enable-mtp                 Multi-Token Prediction（Qwen3-Next 系で~1.4x 高速化）
```

**動作確認コマンド:**
```bash
vllm-mlx --help
vllm-mlx-bench --help
vllm-mlx-chat --help
vllm-mlx-bench --model mlx-community/Llama-3.2-1B-Instruct-4bit --prompts 1
```

## パフォーマンス

### LLM パフォーマンス（M4 Max, 128GB）

| モデル | 速度 | メモリ |
|--------|------|--------|
| Qwen3-0.6B-8bit | 402 tok/s | 0.7 GB |
| Llama-3.2-1B-4bit | 464 tok/s | 0.7 GB |
| Llama-3.2-3B-4bit | 200 tok/s | 1.8 GB |

### Continuous Batching 効果（5並列リクエスト）

| モデル | 単独 | Batched | 倍率 |
|--------|------|---------|------|
| Qwen3-0.6B-8bit | 328 tok/s | 1112 tok/s | **3.4x** |
| Llama-3.2-1B-4bit | 299 tok/s | 613 tok/s | **2.0x** |

Continuous Batching は複数クライアントから同時リクエストが来る場合に有効。

## MCP Tool Calling

### 設定手順

**1. `mcp.json` を作成:**
```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/tmp"]
    }
  }
}
```

**2. MCP 付きで起動:**
```bash
vllm-mlx serve mlx-community/Qwen3-4B-4bit --mcp-config mcp.json
vllm-mlx serve mlx-community/Qwen3-4B-4bit --mcp-config mcp.json --continuous-batching
```

**3. 動作確認:**
```bash
curl http://localhost:8000/v1/mcp/status
curl http://localhost:8000/v1/mcp/tools
```

### MCP エンドポイント

| エンドポイント | メソッド | 説明 |
|---------------|---------|------|
| `/v1/mcp/status` | GET | MCP ステータス確認 |
| `/v1/mcp/tools` | GET | 利用可能ツール一覧 |
| `/v1/mcp/execute` | POST | ツール実行 |

### Tool Calling フロー

```python
import json, httpx
BASE_URL = "http://localhost:8000"

# 1. ツール一覧取得
tools = httpx.get(f"{BASE_URL}/v1/mcp/tools").json()["tools"]

# 2. ツール付きでリクエスト
response = httpx.post(f"{BASE_URL}/v1/chat/completions", json={
    "model": "default",
    "messages": [{"role": "user", "content": "List files in /tmp"}],
    "tools": tools,
    "max_tokens": 1024
})

message = response.json()["choices"][0]["message"]

# 3. ツール呼び出しがある場合
if message.get("tool_calls"):
    tool_call = message["tool_calls"][0]

    # 4. ツール実行
    result = httpx.post(f"{BASE_URL}/v1/mcp/execute", json={
        "server": "filesystem",
        "tool": tool_call["function"]["name"],
        "arguments": json.loads(tool_call["function"]["arguments"])
    }).json()

    # 5. 結果をモデルに返す
    final = httpx.post(f"{BASE_URL}/v1/chat/completions", json={
        "model": "default",
        "messages": [
            {"role": "user", "content": "List files in /tmp"},
            message,
            {"role": "tool", "tool_call_id": tool_call["id"],
             "content": json.dumps(result["result"])}
        ]
    })
    print(final.json()["choices"][0]["message"]["content"])
```

### MCP サーバー設定例

**GitHub:**
```json
{
  "mcpServers": {
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": {"GITHUB_TOKEN": "your-token"}
    }
  }
}
```

**PostgreSQL:**
```json
{
  "mcpServers": {
    "postgres": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-postgres"],
      "env": {"DATABASE_URL": "postgresql://user:pass@localhost/db"}
    }
  }
}
```

## アーキテクチャ

```
vLLM API Layer (OpenAI-compatible)
        │
   MLXPlatform (vLLM platform plugin)
        │
  ┌─────┬────────┬──────────┐
mlx-lm  mlx-vlm  mlx-audio  mlx-embeddings
  └─────┴────────┴──────────┘
        │
       MLX (Apple Metal kernels)
```

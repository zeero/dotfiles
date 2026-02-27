# モデルリファレンス

## 推奨モデル（mlx-community）

### LLM（テキスト）

| モデル | 量子化 | メモリ | 速度（M4 Max） | 用途 |
|--------|--------|--------|----------------|------|
| Llama-3.2-1B-Instruct | 4bit | 0.7 GB | 464 tok/s | 高速・軽量 |
| Llama-3.2-3B-Instruct | 4bit | 1.8 GB | 200 tok/s | バランス |
| Qwen3-0.6B | 8bit | 0.7 GB | 402 tok/s | 超軽量 |
| Qwen3-8B | 4bit | - | - | 中規模 |

```bash
vllm-mlx serve mlx-community/Llama-3.2-3B-Instruct-4bit --port 8000
vllm-mlx serve mlx-community/Llama-3.2-1B-Instruct-4bit --port 8000  # 省メモリ
```

### VLM（Vision-Language）

```bash
# Qwen3-VL（推奨）
vllm-mlx serve mlx-community/Qwen3-VL-4B-Instruct-3bit --port 8000

# Gemma 3
vllm-mlx serve mlx-community/gemma-3-27b-it-4bit --port 8000
# スライディングウィンドウ問題が出る場合:
GEMMA3_SLIDING_WINDOW=8192 vllm-mlx serve mlx-community/gemma-3-27b-it-4bit --port 8000

# LLaVA / その他
vllm-mlx serve mlx-community/llava-hf-llava-1.5-7b-hf-4bit --port 8000
```

**マルチモーダルリクエスト例:**
```python
response = client.chat.completions.create(
    model="default",
    messages=[{
        "role": "user",
        "content": [
            {"type": "text", "text": "What's in this image?"},
            {"type": "image_url", "image_url": {"url": "https://example.com/image.jpg"}}
        ]
    }]
)
```

### Reasoning モデル

| Parser | 対応モデル | 特徴 |
|--------|-----------|------|
| `qwen3` | Qwen3 シリーズ | `<think>` / `</think>` タグ必須 |
| `deepseek_r1` | DeepSeek-R1 | 暗黙の `<think>` タグ対応 |
| `gpt_oss` | GPT-OSS 系 | - |

```bash
vllm-mlx serve mlx-community/Qwen3-8B-4bit --reasoning-parser qwen3
```

```python
response = client.chat.completions.create(
    model="default",
    messages=[{"role": "user", "content": "17 × 23 は?"}]
)
print("思考:", response.choices[0].message.reasoning)
print("回答:", response.choices[0].message.content)
```

### Audio（TTS/STT）

**インストール:**
```bash
pip install mlx-audio
python -m spacy download en_core_web_sm
brew install espeak-ng  # 非英語 TTS に必要
```

**TTS モデル:**

| モデル | 言語 | 特徴 |
|--------|------|------|
| Kokoro | EN/ES/FR/JA/ZH/IT/PT/HI | 82M params、高速 |
| Chatterbox | 15+ 言語 | 声のクローニング対応 |
| VibeVoice | EN | リアルタイム、低レイテンシ |
| VoxCPM | ZH/EN | 高品質中国語/英語 |

**STT パフォーマンス（M4 Max）:**

| モデル | RTF | 用途 |
|--------|-----|------|
| whisper-tiny | 197x | リアルタイム |
| whisper-large-v3-turbo | 55x | 品質/速度バランス |
| whisper-large-v3 | 24x | 最高精度 |

*RTF=100x → 1分の音声を0.6秒で処理*

```bash
python examples/tts_example.py "Hello!" --play
python examples/tts_multilingual.py "Hola mundo" --lang es --play
python examples/tts_multilingual.py --list-models
```

### Embeddings

```bash
# サーバー起動時に同時指定
vllm-mlx serve mlx-community/Llama-3.2-3B-Instruct-4bit \
  --embedding-model mlx-community/all-MiniLM-L6-v2-4bit
```

```python
embeddings = client.embeddings.create(
    model="mlx-community/all-MiniLM-L6-v2-4bit",
    input=["Hello world", "How are you?"]
)
print(f"次元数: {len(embeddings.data[0].embedding)}")
```

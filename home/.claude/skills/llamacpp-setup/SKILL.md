---
name: llamacpp-setup
description: >
  llama.cpp のビルド・サーバ起動・設定を支援するスキル。Mac（Apple Silicon / Intel）での
  Metal GPU 有効化、メモリ軽量化設定、マルチモーダルモデルのセットアップを含む。
  以下のシナリオで必ず使用すること:
  (1) llama.cpp を新規セットアップする
  (2) llama-server を起動・設定する
  (3) Mac で Metal（GPU）加速したい
  (4) メモリ使用量を削減したい（KV キャッシュ量子化・Flash Attention など）
  (5) マルチモーダルモデル（LLaVA / Gemma3 / Qwen-VL など）を使いたい
  (6) MLX で動かしたいと思っている（→ MLX は llama.cpp とは別フレームワーク）
---

# llama.cpp セットアップガイド

> **MLX について**: llama.cpp に MLX バックエンドは存在しない。Mac の GPU 加速には
> **Metal** を使用する（デフォルト有効）。Apple MLX フレームワークを使いたい場合は
> `mlx-lm` スキルを参照。

---

## 1. ビルド

### Mac（推奨：Metal 有効）

Metal はデフォルトで有効。通常のビルドだけで GPU 加速が有効になる。

```bash
git clone https://github.com/ggml-org/llama.cpp
cd llama.cpp
cmake -B build -j$(sysctl -n hw.logicalcpu)
cmake --build build --config Release -j$(sysctl -n hw.logicalcpu)
```

**Metal を無効にする場合**（CPU のみ）:
```bash
cmake -B build -DGGML_METAL=OFF
```

### Metal 動作確認

```bash
# GPU オフロード有効で起動（Metal が使われているか確認）
./build/bin/llama-server -hf ggml-org/gemma-3-4b-it-GGUF --n-gpu-layers all
# ログに "Metal" が表示されれば OK
```

### ビルドを速くするコツ

- ccache インストール: `brew install ccache`
- 並列ビルド: `-j$(sysctl -n hw.logicalcpu)` を必ず付ける

---

## 2. サーバ起動

```bash
# 最小起動（HuggingFace から自動ダウンロード）
./build/bin/llama-server -hf ggml-org/gemma-3-4b-it-GGUF

# ローカルファイルから起動
./build/bin/llama-server -m /path/to/model.gguf --host 0.0.0.0 --port 8080

# GPU レイヤー数を明示（all = 全レイヤーを GPU に）
./build/bin/llama-server -m model.gguf --n-gpu-layers all
```

### 主要オプション早見表

| オプション | 説明 | 例 |
|-----------|------|-----|
| `-m` | モデルファイル | `-m model.gguf` |
| `-hf` | HuggingFace リポジトリ | `-hf ggml-org/gemma-3-4b-it-GGUF` |
| `-c` | コンテキストサイズ | `-c 8192` |
| `-ngl` | GPU にオフロードするレイヤー数 | `-ngl all` |
| `--host` | 待受ホスト | `--host 0.0.0.0` |
| `--port` | ポート番号 | `--port 8080` |
| `--n-parallel` | 並列リクエスト数 | `--n-parallel 4` |

---

## 3. メモリ軽量化設定

### KV キャッシュの量子化（最も効果的）

デフォルトは f16。q8_0 または q4_0 にするとメモリを大幅削減できる。

```bash
# KV キャッシュを q8_0 に（品質ほぼ維持）
llama-server -m model.gguf -ctk q8_0 -ctv q8_0

# さらに削減したい場合（品質が若干低下）
llama-server -m model.gguf -ctk q4_0 -ctv q4_0
```

### Flash Attention

KV キャッシュのメモリ効率を向上させる。Metal / CUDA 環境で有効。

```bash
llama-server -m model.gguf --flash-attn on
```

### GPU レイヤー数の調整

VRAM が足りない場合は GPU レイヤー数を減らす（残りは CPU で処理）。

```bash
# VRAM に収まる範囲でレイヤーを GPU に
llama-server -m model.gguf -ngl 20

# デバイス一覧確認
llama-server --list-devices
```

### mlock / mmap

```bash
# モデルを RAM に固定（スワップ防止）
llama-server -m model.gguf --mlock

# mmap 無効（ロードは遅くなるが pageout が減る）
llama-server -m model.gguf --no-mmap
```

### メモリ削減チェックリスト

1. `-ctk q8_0 -ctv q8_0` で KV キャッシュ量子化
2. `--flash-attn on` で Flash Attention 有効化
3. `-ngl` で GPU レイヤー数を調整（VRAM に合わせる）
4. `-c` でコンテキストサイズを必要最小限に抑える
5. Q4_K_M など低精度量子化モデルを使用

---

## 4. マルチモーダル設定

### 基本的な起動方法

```bash
# HuggingFace から自動（mmproj も自動取得）
llama-server -hf ggml-org/gemma-3-4b-it-GGUF

# ローカルファイル指定（モデルと mmproj を別々に）
llama-server -m model.gguf --mmproj mmproj.gguf

# GPU オフロード無効（mmproj をCPU で処理）
llama-server -hf ggml-org/gemma-3-4b-it-GGUF --no-mmproj-offload
```

### 対応モデル（抜粋）

```bash
# Gemma 3（Vision）
llama-server -hf ggml-org/gemma-3-4b-it-GGUF
llama-server -hf ggml-org/gemma-3-12b-it-GGUF

# Qwen 2.5 VL
llama-server -hf ggml-org/Qwen2.5-VL-7B-Instruct-GGUF

# SmolVLM（軽量）
llama-server -hf ggml-org/SmolVLM-500M-Instruct-GGUF
```

完全なモデルリスト: `docs/multimodal.md` 参照

### OpenAI 互換 API で画像送信

```bash
curl http://localhost:8080/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{
    "model": "llama",
    "messages": [{
      "role": "user",
      "content": [
        {"type": "text", "text": "この画像を説明してください"},
        {"type": "image_url", "image_url": {"url": "data:image/jpeg;base64,..."}}
      ]
    }]
  }'
```

---

## 5. preset ファイルを使った設定管理

繰り返す設定は `~/.config/llama.cpp/presets.ini` に保存できる。

```ini
[mac-default]
n-gpu-layers = all
flash-attn = on
cache-type-k = q8_0
cache-type-v = q8_0
ctx-size = 8192

[multimodal]
n-gpu-layers = all
flash-attn = on
```

```bash
llama-server -m model.gguf --preset mac-default
```

---

## Apple MLX を使う場合

llama.cpp の代わりに Apple MLX を使いたい場合は **mlx-lm スキル**を参照。
MLX は Apple Silicon 専用で、HuggingFace のモデルを直接利用できる。

```bash
# mlx-lm の場合
pip install mlx-lm
mlx_lm.server --model mlx-community/gemma-3-4b-it-4bit --port 8080
```

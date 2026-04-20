---
name: pine-script-v5
description: TradingView Pine Script v5 reference. Use for indicators, strategies, libraries, debugging, TA functions (ta.sma, ta.rsi), alerts, and script implementation.
---

# Pine Script v5 スキル

TradingViewのPine Script v5を使ってインジケーター・ストラテジー・ライブラリを実装するためのガイドです。

## リファレンスファイル一覧

質問や実装内容に応じて、必要なリファレンスファイルだけを読み込んでください。

| ファイル | 内容 | いつ読む |
|---|---|---|
| `references/variables.md` | 組み込み変数 (`close`, `high`, `bar_index`など) | 変数の型・使い方を確認するとき |
| `references/constants.md` | 定数 (`color.red`, `alert.freq_all`など) | 定数値を確認するとき |
| `references/functions-ta.md` | テクニカル分析関数 (`ta.sma`, `ta.rsi`, `ta.crossover`など) | テクニカル指標を使うとき（最頻出） |
| `references/functions-plot.md` | 描画関数 (`plot`, `plotshape`, `hline`, `bgcolor`など) | チャートへの描画方法を確認するとき |
| `references/functions-drawing.md` | 描画オブジェクト (`label.*`, `line.*`, `box.*`, `table.*`など) | ラベル・線・ボックス・テーブルを作るとき |
| `references/functions-data.md` | データ取得 (`request.*`, `ticker.*`, `timeframe.*`, `syminfo.*`, `chart.*`) | 外部データ・他銘柄・上位時間足を取得するとき |
| `references/functions-strategy.md` | ストラテジー関数 (`strategy.*`) | バックテスト・エントリー・エグジットを実装するとき |
| `references/functions-collections.md` | コレクション (`array.*`, `matrix.*`, `map.*`) | 配列・行列・マップを使うとき |
| `references/functions-utils.md` | ユーティリティ関数 (`str.*`, `math.*`, `color.*`, `input.*`, `log.*`など) | 文字列処理・数学関数・入力パラメータを使うとき |
| `references/keywords.md` | キーワード (`if`, `for`, `while`, `var`, `varip`など) | 制御構文や宣言キーワードを確認するとき |
| `references/types.md` | 型システム (`series`, `simple`, `const`, `int`, `float`など) | 型エラーのデバッグ・型の理解をするとき |
| `references/operators.md` | 演算子 (`:=`, `?:`, `[]`など) | 演算子の動作を確認するとき |
| `references/annotations.md` | 注釈 (`//@version`, `//@description`など) | スクリプトのメタデータを設定するとき |

## スクリプトの基本構造

```pine
//@version=5
indicator("スクリプト名", overlay=true)  // または strategy() / library()

// 入力パラメータ
length = input.int(14, "期間", minval=1)

// 計算
ma = ta.sma(close, length)

// 描画
plot(ma, "MA", color.blue)
```

## よく使うパターン

### インジケーター宣言
```pine
indicator("名前", shorttitle="短縮名", overlay=true, max_bars_back=500)
```

### ストラテジー宣言
```pine
strategy("名前", overlay=true, initial_capital=100000,
         default_qty_type=strategy.percent_of_equity, default_qty_value=10)
```

### クロス検知
```pine
fast = ta.ema(close, 12)
slow = ta.ema(close, 26)
crossUp = ta.crossover(fast, slow)   // ゴールデンクロス
crossDn = ta.crossunder(fast, slow)  // デッドクロス
```

### エントリー・エグジット（ストラテジー）
```pine
if ta.crossover(fast, slow)
    strategy.entry("Long", strategy.long)
if ta.crossunder(fast, slow)
    strategy.close("Long")
```

### アラート
```pine
alertcondition(crossUp, "ゴールデンクロス", "EMAゴールデンクロス発生")
// またはスクリプト内でリアルタイムアラート:
if crossUp
    alert("クロス発生: " + str.tostring(close), alert.freq_once_per_bar)
```

### 複数時間足データ
```pine
// request.security で上位足データを取得
htf_close = request.security(syminfo.tickerid, "D", close)
```

## デバッグのコツ

- `label.new()` で値をチャート上に表示するとデバッグしやすい
- `log.info()` でデバッグコンソールに出力できる
- 型エラーが多い場合は `references/types.md` で型の制約を確認

## 実装方針

1. **まず要件を整理**: インジケーター / ストラテジー / ライブラリのどれか
2. **必要なリファレンスを読む**: 使う関数のシグネチャと引数を確認する
3. **動くコードを最初に書く**: 最小限の実装から始め、機能を追加していく
4. **コードブロックで返す**: 必ず ` ```pine ` のコードブロックで返す

---
name: moomoo-api-reference
description: Moomoo API (ex-Futu) Python SDK reference. Use for stock prices, orders, positions, or OpenQuoteContext/OpenTradeContext usage.
---

# Moomoo API Python SDK リファレンス

moomoo証券（旧Futu証券）が提供するローカルゲートウェイ経由のAPIです。OpenDをローカルまたはクラウドで起動し、Python SDKから接続して株価データ取得・注文などを行います。

## 基本情報

| 項目 | 値 |
|---|---|
| Pythonパッケージ | `futu-api` |
| インポート | `from futu import *` |
| デフォルト接続先 | `host='127.0.0.1', port=11111` |
| 公式ドキュメント | https://openapi.moomoo.com/moomoo-api-doc/en/intro/intro.html |

## セットアップ

```bash
pip install futu-api
```

OpenDゲートウェイを起動してからAPIを使用します（→ `references/opend.md`）。

## 基本パターン

```python
from futu import *

# --- Quote API（市場データ） ---
quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
# ... データ取得 ...
quote_ctx.close()

# --- Trade API（注文・ポジション） ---
trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111)
trd_ctx.unlock_trade(password='YOUR_PASSWORD')
# ... 注文操作 ...
trd_ctx.close()
```

## Context 種別

| Context | 用途 |
|---|---|
| `OpenQuoteContext` | 株価・板情報・チャートなど市場データ全般 |
| `OpenSecTradeContext` | 株式・ETF・オプション注文 |
| `OpenFutureTradeContext` | 先物注文 |

## Quote API 主要メソッド一覧

| メソッド | 説明 |
|---|---|
| `get_market_snapshot(code_list)` | 銘柄スナップショット（現在値・出来高等） |
| `get_stock_quote(code_list)` | リアルタイム株価 |
| `get_order_book(code, num=10)` | 板情報（売買注文一覧） |
| `get_rt_ticker(code, num=500)` | 歩み値 |
| `request_history_kline(code, start, end, ktype, autype)` | 過去ローソク足 |
| `get_kl_quota(get_detail=False)` | ローソク足クォータ残量 |
| `subscribe(code_list, subtype_list, subscribe=True)` | リアルタイム配信購読 |
| `query_subscription(is_all_conn=False)` | 現在の購読一覧 |
| `get_static_info(market, sectype, code_list)` | 銘柄基本情報 |
| `get_plates_for_stock(code_list)` | 銘柄が属するセクター |
| `get_plate_list(market, plate_class)` | セクター一覧 |
| `get_plate_stock(market, plate)` | セクター内銘柄 |
| `get_capital_flow(stock_code, period_type)` | 資金フロー |
| `get_capital_distribution(stock_code)` | 資金分布 |
| `get_option_chain(code, start, end, option_cond_filter)` | オプションチェーン |
| `get_future_info(code_list)` | 先物情報 |
| `get_broker_queue(code)` | ブローカーキュー |

## Trade API 主要メソッド一覧

| メソッド | 説明 |
|---|---|
| `get_acc_list()` | 取引アカウント一覧 |
| `unlock_trade(password, is_unlock=True)` | 取引ロック解除 |
| `accinfo_query(trd_env, acc_id, acc_index)` | 口座情報（資産残高） |
| `position_list_query(code, trd_env, acc_id)` | ポジション一覧 |
| `order_list_query(order_id, order_market, status_filter_list)` | 注文一覧（未決済） |
| `history_order_list_query(status_filter_list, code, start, end)` | 注文履歴 |
| `deal_list_query(code, deal_market, trd_env)` | 約定一覧 |
| `place_order(price, qty, code, trd_side, order_type, trd_env)` | 発注 |
| `modify_order(modify_order_op, order_id, qty, price)` | 注文変更・取消 |
| `get_max_trd_qtys(order_type, code, price, trd_env)` | 最大注文数量 |
| `acctradinginfo_query(order_type, code, price)` | 注文可能情報 |

## 主要定数・列挙型

| 型 | 値例 | 説明 |
|---|---|---|
| `TrdMarket` | `US`, `HK`, `CN`, `NONE` | 取引市場 |
| `TrdEnv` | `REAL`, `SIMULATE` | 本番/シミュレーション |
| `TrdSide` | `BUY`, `SELL` | 売買方向 |
| `OrderType` | `NORMAL`, `MARKET`, `STOP`, `STOP_LIMIT` | 注文種別 |
| `KLType` | `K_1M`, `K_5M`, `K_DAY`, `K_WEEK` | ローソク足種別 |
| `SubType` | `QUOTE`, `ORDER_BOOK`, `TICKER`, `K_1M` | 購読種別 |
| `SecurityType` | `STOCK`, `ETF`, `OPTION`, `FUTURE` | 証券種別 |
| `Market` | `HK`, `US`, `SH`, `SZ` | 市場 |
| `AuType` | `QFQ`, `HFQ`, `NONE` | 権利修正種別 |

## 証券コード形式

```
{市場}.{ティッカー}
例: US.AAPL, HK.00700, SH.600519
```

## リファレンスファイル

詳細なAPIドキュメントは以下を参照：

| ファイル | 内容 | 行数 |
|---|---|---|
| `references/quote-api.md` | Quote API 全メソッド詳細（シグネチャ・パラメータ・例） | ~20K行 |
| `references/trade-api.md` | Trade API 全メソッド詳細 | ~9K行 |
| `references/base-api.md` | 基本設定API（接続設定・スレッド・ロギング） | ~4K行 |
| `references/intro.md` | API概要・権限・料金 | ~700行 |
| `references/opend.md` | OpenDゲートウェイ設定 | ~500行 |

## よくある使用パターン

### 株価リアルタイム取得

```python
from futu import *

quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
ret, data = quote_ctx.get_stock_quote(['US.AAPL', 'US.TSLA'])
if ret == RET_OK:
    print(data)
quote_ctx.close()
```

### 発注

```python
from futu import *

trd_ctx = OpenSecTradeContext(filter_trdmarket=TrdMarket.US, host='127.0.0.1', port=11111)
trd_ctx.unlock_trade(password='YOUR_PASSWORD')

ret, data = trd_ctx.place_order(
    price=150.0,
    qty=10,
    code='US.AAPL',
    trd_side=TrdSide.BUY,
    order_type=OrderType.NORMAL,
    trd_env=TrdEnv.SIMULATE  # 本番はTrdEnv.REAL
)
if ret == RET_OK:
    print(data)
trd_ctx.close()
```

### リアルタイム配信

```python
from futu import *

class QuoteHandler(StockQuoteHandlerBase):
    def on_recv_rsp(self, rsp_str):
        ret_code, data = super().on_recv_rsp(rsp_str)
        if ret_code == RET_OK:
            print(data)
        return RET_OK, data

quote_ctx = OpenQuoteContext(host='127.0.0.1', port=11111)
handler = QuoteHandler()
quote_ctx.set_handler(handler)
quote_ctx.subscribe(['US.AAPL'], [SubType.QUOTE])

import time
time.sleep(60)
quote_ctx.close()
```

> **実運用メモ（Basic Quote の bid/ask と data_time、2026-07 検証）**
> - `SubType.QUOTE`（`Qot_UpdateBasicQot` の real-time push / `get_stock_quote` / `StockQuoteHandlerBase`）が返す DataFrame には bid/ask 列が構造的に存在しない（`code, name, data_date, data_time, last_price, open_price, high_price, low_price, prev_close_price, volume, turnover, ...`）。買気配・売気配が必要なら `SubType.ORDER_BOOK`（`get_order_book` / `Qot_UpdateOrderBook`）を別途購読する。
> - `data_time`（および `data_date`）は「最新価格（`last_price`）の更新時刻」であって push 自体のタイムスタンプではない（公式定義 "Time of latest price"、US 市場は US Eastern Time）。protobuf `BasicQot.updateTime` も「最新価格の更新時刻で他フィールドには適用外」と注記。
> - `updateTime` が空文字の push では `data_time` が空になる（SDK の `parse_pb_BasicQot` が `updateTime.split()[1] if len(updateTime) > 0 else ''`）。空 `data_time` を「時間外」と解釈すると、レギュラーセッション中でも時刻付き push と空 push が交互に来て判定がフラッピングし得る点に注意。
>
> 出典: https://openapi.moomoo.com/moomoo-api-doc/en/quote/update-stock-quote.html ・ https://openapi.moomoo.com/moomoo-api-doc/en/quote/base.html

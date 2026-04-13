---
name: kabusapi-reference
description: kabuステーション® API（三菱UFJ eスマート証券）のリファレンススキル。n8n ワークフローで HTTP Request ノードを設定する際や、kabusapi のエンドポイント・パラメータ・エラーコードを調べる際は必ずこのスキルを参照すること。「kabu」「kabusapi」「kabuステーション」「株注文」「日経先物」「現物発注」「板情報」「残高照会」などのキーワードが出たら即座に使う。
---

# kabuステーション® API リファレンス

三菱UFJ eスマート証券（旧 auカブコム証券）が提供するローカル REST API。kabuステーション® を経由して注文・データ取得を行う。

## 基本情報

| 項目 | 値 |
|---|---|
| バージョン | 1.5 |
| ベースURL（本番） | `http://localhost:18080/kabusapi` |
| ベースURL（検証） | `http://localhost:18081/kabusapi` |
| Content-Type | `application/json` |

## 認証フロー

```
POST /token
Body: { "APIPassword": "<パスワード>" }
→ Response: { "Token": "<トークン文字列>" }
```

以降のすべてのリクエストに **`X-API-KEY: <Token>`** ヘッダーを付与する。

トークンは以下のタイミングで無効になる：
- kabuステーションを終了・ログアウト時
- 新しいトークンが発行された時
- 早朝の自動ログアウト時（毎朝強制ログアウトあり）

## エンドポイント一覧

### 認証

| メソッド | パス | 概要 |
|---|---|---|
| POST | `/token` | APIトークン発行 |

### 発注（流量制限: 秒間5件）

| メソッド | パス | 概要 |
|---|---|---|
| POST | `/sendorder` | 株式注文（現物・信用） |
| POST | `/sendorder/future` | 先物注文 |
| POST | `/sendorder/option` | オプション注文 |
| PUT | `/cancelorder` | 注文キャンセル |

### 取引余力

| メソッド | パス | 概要 |
|---|---|---|
| GET | `/wallet/cash` | 現物余力（全体） |
| GET | `/wallet/cash/{symbol}` | 現物余力（銘柄指定） |
| GET | `/wallet/margin` | 信用余力（全体） |
| GET | `/wallet/margin/{symbol}` | 信用余力（銘柄指定） |
| GET | `/wallet/future` | 先物余力（全体） |
| GET | `/wallet/future/{symbol}` | 先物余力（銘柄指定） |
| GET | `/wallet/option` | オプション余力（全体） |
| GET | `/wallet/option/{symbol}` | オプション余力（銘柄指定） |

### 情報取得

| メソッド | パス | 概要 |
|---|---|---|
| GET | `/board/{symbol}` | 板情報・時価情報 |
| GET | `/symbol/{symbol}` | 銘柄情報 |
| GET | `/orders` | 注文一覧 |
| GET | `/positions` | 保有残高 |
| GET | `/ranking` | 詳細ランキング |
| GET | `/exchange/{symbol}` | 為替情報 |
| GET | `/regulations/{symbol}` | 規制情報 |
| GET | `/primaryexchange/{symbol}` | 優先市場 |
| GET | `/apisoftlimit` | APIソフトリミット |
| GET | `/margin/marginpremium/{symbol}` | プレミアム料 |
| GET | `/symbolname/future` | 先物銘柄コード取得 |
| GET | `/symbolname/option` | オプション銘柄コード取得 |
| GET | `/symbolname/minioptionweekly` | ミニオプション銘柄コード取得 |

### 銘柄登録（PUSH配信）

| メソッド | パス | 概要 |
|---|---|---|
| POST | `/register` | PUSH配信銘柄登録（上限50銘柄） |
| POST | `/unregister` | PUSH配信銘柄解除 |
| POST | `/unregister/all` | PUSH配信銘柄全解除 |

## n8n HTTP Request ノード設定パターン

### トークン発行

```
Method: POST
URL: http://localhost:18080/kabusapi/token
Headers: Content-Type: application/json
Body (JSON):
{
  "APIPassword": "{{ $vars.KABU_API_PASSWORD }}"
}
```

レスポンスから `Token` を取り出して次ノードに渡す。

### 認証が必要なエンドポイント（板情報の例）

```
Method: GET
URL: http://localhost:18080/kabusapi/board/{{ $json.symbol }}
Headers:
  Content-Type: application/json
  X-API-KEY: {{ $json.token }}
```

### 株式注文（現物買いの例）

```
Method: POST
URL: http://localhost:18080/kabusapi/sendorder
Headers:
  Content-Type: application/json
  X-API-KEY: {{ $json.token }}
Body (JSON):
{
  "Symbol": "{{ $json.symbol }}",
  "Exchange": 27,
  "SecurityType": 1,
  "Side": "2",
  "CashMargin": 1,
  "DelivType": 2,
  "FundType": "02",
  "AccountType": 4,
  "Qty": {{ $json.qty }},
  "FrontOrderType": 10,
  "Price": 0,
  "ExpireDay": 0
}
```

## 主要なコード定義値

### 市場コード（Exchange）- 株式

| 値 | 説明 |
|---|---|
| 1 | 東証（返済注文のみ） |
| 3 | 名証 |
| 5 | 福証 |
| 6 | 札証 |
| 9 | SOR |
| 27 | 東証+ |

### 売買区分（Side）

| 値 | 説明 |
|---|---|
| 1 | 売 |
| 2 | 買 |

### 信用区分（CashMargin）

| 値 | 説明 |
|---|---|
| 1 | 現物 |
| 2 | 信用新規 |
| 3 | 信用返済 |

### 執行条件（FrontOrderType）- 主要なもの

| 値 | 説明 | Price指定 |
|---|---|---|
| 10 | 成行 | 0 |
| 13 | 寄成（前場） | 0 |
| 14 | 寄成（後場） | 0 |
| 20 | 指値 | 発注金額 |
| 30 | 逆指値 | 0（AfterHitPriceで指定） |

### 受渡区分（DelivType）

| 値 | 説明 |
|---|---|
| 0 | 指定なし（現物売・信用新規） |
| 2 | お預り金 |
| 3 | auマネーコネクト |

### 口座種別（AccountType）

| 値 | 説明 |
|---|---|
| 2 | 一般 |
| 4 | 特定 |
| 12 | 法人 |

## HTTPステータスコード

| コード | 意味 |
|---|---|
| 200 | 成功 |
| 400 | パラメータ不正 |
| 401 | 認証エラー（トークン不正） |
| 403 | アクセス権不正（APIキー不正、口座未開設） |
| 404 | URL不正 |
| 429 | スロットリング制限（秒間5件超過） |
| 500 | サーバ内部エラー |
| 503 | サービス停止中 |

## 詳細リファレンス

詳細なパラメータ定義・エラーコード一覧は以下を参照：

- `references/openapi.yaml` — OpenAPI 3.0仕様（正規ソース）。エンドポイント詳細・パラメータ・レスポンスの完全定義
- `references/errors.md` — エラーコード一覧

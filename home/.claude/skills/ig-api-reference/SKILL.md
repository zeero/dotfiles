---
name: ig-api-reference
description: IG REST Trading API および Streaming API のリファレンススキル。IG APIのエンドポイント・パラメータ・認証・レスポンスを調べる際は必ずこのスキルを参照すること。「IG API」「IG REST API」「CFD取引自動化」「ポジション取得」「注文管理」「マーケットデータ」「IG Streaming」「Lightstreamer」「IG デモ口座」などのキーワードが出たら即座に使う。
---

# IG REST Trading API リファレンス

IG Group が提供するCFD・スプレッドベッティング取引の REST API。

## 基本情報

| 項目 | 値 |
|---|---|
| ライブ ベースURL | `https://api.ig.com/gateway/deal` |
| デモ ベースURL | `https://demo-api.ig.com/gateway/deal` |
| 認証方式 | CST/X-SECURITY-TOKEN（v1/v2）または OAuth Bearer Token（v3） |
| レスポンス形式 | JSON |
| バージョン指定 | リクエストヘッダー `Version: N` |

## 必須リクエストヘッダー

```
X-IG-API-KEY: <APIキー>
Content-Type: application/json
Accept: application/json; charset=UTF-8
```

### セッション認証（v1/v2）
ログイン後に取得したトークンをすべてのリクエストに付与：
```
CST: <client session token>
X-SECURITY-TOKEN: <account security token>
```

### OAuth認証（v3）
```
Authorization: Bearer <access_token>
IG-ACCOUNT-ID: <account_id>
```

> アクセストークンの有効期限は約60秒。リフレッシュトークンで更新可能（有効期限はアクセストークン失効後約10分）。

## エンドポイントカテゴリと参照先

| カテゴリ | 主なエンドポイント | 参照ファイル |
|---|---|---|
| **セッション/認証** | POST/GET/PUT/DELETE `/session` | `references/session.md` |
| **ポジション** | `/positions`, `/positions/otc`, `/confirms/{dealRef}` | `references/positions.md` |
| **注文（ワーキングオーダー）** | `/workingorders`, `/workingorders/otc` | `references/working_orders.md` |
| **マーケットデータ** | `/markets`, `/markets/{epic}`, `/markets?searchTerm=`, `/categories` | `references/markets.md` |
| **価格履歴** | `/prices/{epic}`, 解像度・件数・日付指定 | `references/prices.md` |
| **口座情報** | `/accounts`, `/accounts/preferences` | `references/accounts.md` |
| **ウォッチリスト** | `/watchlists`, `/watchlists/{id}` | `references/watchlists.md` |
| **クライアント心理** | `/clientsentiment`, `/clientsentiment/{marketId}` | `references/client_sentiment.md` |
| **取引履歴** | `/history/activity`, `/history/transactions` | `references/history.md` |
| **コスト・費用** | `/indicative-costs-and-charges/*` | `references/costs.md` |
| **アプリ管理** | `/operations/application` | `references/operations.md` |
| **ガイド・入門** | 認証フロー・取引基礎・注文タイプ | `references/guides.md` |
| **Streaming API** | Lightstreamer経由のリアルタイムデータ | `references/streaming.md` |

## よく使うクイックリファレンス

### ログイン（POST /session v3）
```
POST /session
Version: 3
Body: { "identifier": "...", "password": "..." }
→ oauthToken: { access_token, refresh_token, expires_in }
```

### ポジション一覧取得
```
GET /positions
Version: 2
```

### 新規ポジション作成（OTC）
```
POST /positions/otc
Version: 2
Body: { "epic", "expiry", "direction", "size", "orderType", "currencyCode", "forceOpen", ... }
```

### マーケット検索
```
GET /markets?searchTerm=<keyword>
```

### 価格履歴取得
```
GET /prices/{epic}?resolution=DAY&max=10
GET /prices/{epic}/{resolution}/{startdate}/{enddate}
```

## エラーレスポンス形式

```json
{ "errorCode": "error.xxx.xxx" }
```

HTTP 4xx: クライアントエラー（不正なリクエスト、認証失敗など）
HTTP 5xx: サーバーエラー

## 利用制限

- APIキーは1アカウントにつき1つのみ
- 各APIキーには標準的な使用クォータが適用（FAQ参照）
- デモ環境での動作確認を推奨

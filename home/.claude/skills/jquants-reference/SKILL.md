---
name: jquants-reference
description: J-Quants API（JPX日本取引所グループ）のリファレンススキル。n8n ワークフローで HTTP Request ノードを設定する際や、J-Quants のエンドポイント・パラメータ・レスポンスを調べる際は必ずこのスキルを参照すること。「J-Quants」「株価取得」「財務情報」「上場銘柄」「指数データ」「先物データ」「取引カレンダー」「信用取引」「空売り」などのキーワードが出たら即座に使う。
---

# J-Quants API リファレンス

JPX（日本取引所グループ）が提供する金融データ API（V2）。

## 基本情報

| 項目 | 値 |
|---|---|
| バージョン | V2（現行版） |
| ベースURL | `https://api.jquants.com/v2` |
| 認証ヘッダー | `x-api-key: <APIキー>` |
| レスポンス形式 | JSON（Gzip圧縮済み） |

> V1 旧版は廃止予定。2025/12/22 以降の新規ユーザーは V2 のみ利用可能。

## 認証

ダッシュボードで発行した API キーをヘッダーに付与する（トークン交換は不要）。

```
x-api-key: <ダッシュボードで発行したAPIキー>
```

## エンドポイント一覧

### 株式データ

| パス | 概要 | 最低プラン |
|---|---|---|
| `GET /v2/equities/master` | 上場銘柄一覧 | Free |
| `GET /v2/equities/bars/daily` | 株価四本値（日足） | Free |
| `GET /v2/equities/bars/daily/am` | 前場四本値 | Premium |
| `GET /v2/equities/bars/minute` | 株価分足 | アドオン |
| `GET /v2/equities/trades` | 株価ティック（CSV） | アドオン |
| `GET /v2/equities/investor-types` | 投資部門別情報 | Light |
| `GET /v2/equities/earnings-calendar` | 決算発表予定日 | Free |

### 財務データ

| パス | 概要 | 最低プラン |
|---|---|---|
| `GET /v2/fins/summary` | 財務サマリー | Free |
| `GET /v2/fins/details` | 財務諸表（BS/PL/CF） | Premium |

### 指数・デリバティブ

| パス | 概要 | 最低プラン |
|---|---|---|
| `GET /v2/indices/bars/daily` | 指数四本値（TOPIX等） | Light（TOPIX: Light、その他: Standard） |
| `GET /v2/derivatives/bars/daily/futures` | 先物四本値 | Premium |

### 市場データ

| パス | 概要 | 最低プラン |
|---|---|---|
| `GET /v2/markets/calendar` | 取引カレンダー | Free |
| `GET /v2/markets/margin-interest` | 信用取引週末残高 | Standard |
| `GET /v2/markets/short-ratio` | 業種別空売り比率 | Standard |
| `GET /v2/markets/margin-alert` | 日々公表信用取引残高 | Standard |
| `GET /v2/markets/breakdown` | 売買内訳データ | Premium |

## n8n HTTP Request ノード設定パターン

### 基本認証ヘッダー

```
Headers:
  x-api-key: {{ $vars.JQUANTS_API_KEY }}
```

### 株価四本値（銘柄指定・期間指定）

```
Method: GET
URL: https://api.jquants.com/v2/equities/bars/daily
Headers:
  x-api-key: {{ $vars.JQUANTS_API_KEY }}
Query Parameters:
  code: 7203          # 銘柄コード（トヨタ自動車の例）
  from: 20240101
  to: 20240131
```

### 株価四本値（全銘柄・日付指定）

```
Method: GET
URL: https://api.jquants.com/v2/equities/bars/daily
Headers:
  x-api-key: {{ $vars.JQUANTS_API_KEY }}
Query Parameters:
  date: 20240101      # code と date のいずれか一方が必須
```

### ページネーション対応（pagination_key）

レスポンスに `pagination_key` が含まれる場合は後続データあり。

```
Query Parameters:
  pagination_key: {{ $json.pagination_key }}   # 前回レスポンスの値を引き継ぐ
```

### 財務サマリー（銘柄指定）

```
Method: GET
URL: https://api.jquants.com/v2/fins/summary
Headers:
  x-api-key: {{ $vars.JQUANTS_API_KEY }}
Query Parameters:
  code: 7203
```

### 取引カレンダー

```
Method: GET
URL: https://api.jquants.com/v2/markets/calendar
Headers:
  x-api-key: {{ $vars.JQUANTS_API_KEY }}
Query Parameters:
  holidaydivision: 1   # 1: 休場日のみ、省略: 全日
```

## プラン別レート制限

| プラン | 上限（リクエスト/分） |
|---|---|
| Free | 5 |
| Light | 60 |
| Standard | 120 |
| Premium | 500 |
| アドオン（分足・ティック） | 60（独立） |

レート超過時は HTTP `429 Too Many Requests`。大幅超過で約5分間アクセス遮断あり。

## 主要パラメータ共通仕様

### 日付フォーマット

`YYYYMMDD`（例: `20240101`）または `YYYY-MM-DD`（例: `2024-01-01`）どちらも可。

### 銘柄コード

- 4桁: `7203`（普通株のみ）
- 5桁: `72030`（特定の株式種別指定）

### 調整済み株価

`/v2/equities/bars/daily` の `adjustmentfactor=1`（デフォルト）で分割・併合調整済み。

## HTTPステータスコード

| コード | 意味 |
|---|---|
| 200 | 成功 |
| 400 | パラメータ不正 |
| 401 | 認証エラー（APIキー不正） |
| 403 | アクセス権不正（プラン未対応など） |
| 404 | URL不正 |
| 429 | レートリミット超過 |
| 500 | サーバ内部エラー |

## 詳細リファレンス

各エンドポイントのパラメータ・レスポンス定義は以下を参照：

| ファイル | 内容 |
|---|---|
| `references/eq-bars-daily.md` | 株価四本値（日足）— パラメータ・レスポンス詳細 |
| `references/eq-master.md` | 上場銘柄一覧 |
| `references/fin-summary.md` | 財務サマリー |
| `references/fin-details.md` | 財務諸表（BS/PL/CF） |
| `references/idx-bars-daily.md` | 指数四本値 |
| `references/drv-bars-daily-fut.md` | 先物四本値 |
| `references/mkt-cal.md` | 取引カレンダー |
| `references/mkt-margin-int.md` | 信用取引週末残高 |
| `references/mkt-short-ratio.md` | 業種別空売り比率 |
| `references/mkt-margin-alert.md` | 日々公表信用取引残高 |
| `references/mkt-breakdown.md` | 売買内訳データ |
| `references/eq-investor-types.md` | 投資部門別情報 |
| `references/eq-earnings-cal.md` | 決算発表予定日 |
| `references/eq-bars-minute.md` | 株価分足 |
| `references/data-spec.md` | プラン別API利用可否・データ格納期間 |
| `references/pagination.md` | ページネーション詳細 |
| `references/rate-limits.md` | レートリミット詳細 |
| `references/quickstart.md` | クイックスタートガイド |

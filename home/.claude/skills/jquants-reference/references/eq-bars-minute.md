[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/eq-bars-minute.md) LLM用にコピー

# 株価分足(/equities/bars/minute)

GET /v2/equities/bars/minute

## [APIの概要](https://jpx-jquants.com/ja/spec/eq-bars-minute\#API%E3%81%AE%E6%A6%82%E8%A6%81)

分足の株価データを取得することができます。

1分単位の四本値（始値・高値・安値・終値）、出来高、売買代金のデータを提供します。

### 本APIの留意点

- 東証上場銘柄でない銘柄（地方取引所単独上場銘柄）についてはデータの収録対象外となっております。
- データ取得可能期間は過去2年間です。
- 当APIは取引のティックデータを1分単位で集約したデータを提供しており、その1分間に取引が存在しない時間帯のデータは返却値に含まれません。

## [分足の株価データを取得します](https://jpx-jquants.com/ja/spec/eq-bars-minute\#%E5%88%86%E8%B6%B3%E3%81%AE%E6%A0%AA%E4%BE%A1%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E5%8F%96%E5%BE%97%E3%81%97%E3%81%BE%E3%81%99)

GET`https://api.jquants.com/v2/equities/bars/minute`

データの取得では、銘柄コード（code）または日付（date）の指定が必須となります。

### パラメータ及びレスポンス

データの取得では、銘柄コード（code）または日付（date）の指定が必須となります。

各パラメータの組み合わせとレスポンスの結果については以下のとおりです。

| code | date | from /to | レスポンスの結果 |
| --- | --- | --- | --- |
|  |  |  | 指定された銘柄について全期間分のデータ |
|  |  |  | 指定された銘柄について指定された日付のデータ |
|  |  |  | 指定された銘柄について指定された期間分のデータ |
|  |  |  | 全上場銘柄について指定された日付のデータ |

### Requests

### Headers

x-api-keystringrequired

APIキー

### Query Parameters

**code** または **date** のいずれか一つの指定が必須です。

codestringoptional

銘柄コード（e.g. 27800 or 2780）

4桁の銘柄コードを指定した場合は、普通株式と優先株式等の両方が上場している銘柄においては普通株式のデータのみが取得されます。

datestringoptional

from と to を指定しないとき（e.g. 20210907 or 2021-09-07）

fromstringoptional

fromの指定（e.g. 20210901 or 2021-09-01）

tostringoptional

to の指定（e.g. 20210907 or 2021-09-07）

pagination\_keystringoptional

検索の先頭を指定する文字列

過去の検索で返却された `pagination_key` を設定

### APIコールサンプルコード

### Request

cURLJavaScriptPython

GET

/v2/equities/bars/minute

```
curl -G https://api.jquants.com/v2/equities/bars/minute \
-H "x-api-key: {loading}" \
-d code="86970" \
-d date="20230324"
```

Copy

### Responses

### データ項目概要

Datestring日付（YYYY-MM-DD）

Timestring時刻（HH:mm）

Codestring銘柄コード

Onumber始値

Hnumber高値

Lnumber安値

Cnumber終値

Vonumber出来高

Vanumber売買代金

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "Date": "2023-03-24",\
            "Time": "09:00",\
            "Code": "86970",\
            "O": 2047.0,\
            "H": 2055.0,\
            "L": 2045.0,\
            "C": 2050.0,\
            "Vo": 12500.0,\
            "Va": 25625000.0\
        }\
    ],
    "pagination_key": "value1.value2."
}
```

CopyCopied!
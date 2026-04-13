[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/eq-bars-daily.md) LLM用にコピー

# 株価四本値(/equities/bars/daily)

GET /v2/equities/bars/daily

## [APIの概要](https://jpx-jquants.com/ja/spec/eq-bars-daily\#API%E3%81%AE%E6%A6%82%E8%A6%81)

株価データを取得することができます。

株価は分割・併合を考慮した調整済み株価（小数点第２位四捨五入）と調整前の株価を取得することができます。

### 本APIの留意点

- 取引が存在しない日の銘柄についての四本値、取引高と売買代金は、Nullが収録されています。
- 東証上場銘柄でない銘柄（地方取引所単独上場銘柄）についてはデータの収録対象外となっております。
- 2020/10/1のデータは東京証券取引所の株式売買システムの障害により終日売買停止となった関係で、四本値、取引高と売買代金はNullが収録されています。
- 日通しデータについては全プランで取得できますが、前場/後場別のデータについてはPremiumプランのみ取得可能です。
- 株価調整については株式分割・併合にのみ対応しております。一部コーポレートアクションには対応しておりませんので、ご了承ください。

## [日次の株価データを取得します](https://jpx-jquants.com/ja/spec/eq-bars-daily\#%E6%97%A5%E6%AC%A1%E3%81%AE%E6%A0%AA%E4%BE%A1%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E5%8F%96%E5%BE%97%E3%81%97%E3%81%BE%E3%81%99)

GET`https://api.jquants.com/v2/equities/bars/daily`

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

/v2/equities/bars/daily

```
curl -G https://api.jquants.com/v2/equities/bars/daily \
-H "x-api-key: {loading}" \
-d code="86970" \
-d date="20230324"
```

Copy

### Responses

### データ項目概要

Datestring日付（YYYY-MM-DD）

Codestring銘柄コード

Onumber始値（調整前）

Hnumber高値（調整前）

Lnumber安値（調整前）

Cnumber終値（調整前）

ULstring日通ストップ高フラグ（0：ストップ高以外, 1：ストップ高）

LLstring日通ストップ安フラグ（0：ストップ安以外, 1：ストップ安）

Vonumber取引高（調整前）

Vanumber取引代金

AdjFactornumber調整係数（株式分割1:2の場合、権利落ち日に 0.5 が入る）

AdjOnumber調整済み始値（※1）

AdjHnumber調整済み高値（※1）

AdjLnumber調整済み安値（※1）

AdjCnumber調整済み終値（※1）

AdjVonumber調整済み取引高（※1）

MOnumber前場始値（※2）

MHnumber前場高値（※2）

MLnumber前場安値（※2）

MCnumber前場終値（※2）

MULstring前場ストップ高フラグ（0：ストップ高以外, 1：ストップ高）,（※2）

MLLstring前場ストップ安フラグ（0：ストップ安以外, 1：ストップ安）,（※2）

MVonumber前場売買高（※2）

MVanumber前場取引代金（※2）

MAdjOnumber調整済み前場始値（※1, ※2）

MAdjHnumber調整済み前場高値（※1, ※2）

MAdjLnumber調整済み前場安値（※1, ※2）

MAdjCnumber調整済み前場終値（※1, ※2）

MAdjVonumber調整済み前場売買高（※1, ※2）

AOnumber後場始値（※2）

AHnumber後場高値（※2）

ALnumber後場安値（※2）

ACnumber後場終値（※2）

AULstring後場ストップ高フラグ（0：ストップ高以外, 1：ストップ高）,（※2）

ALLstring後場ストップ安フラグ（0：ストップ安以外, 1：ストップ安）,（※2）

AVonumber後場売買高（※2）

AVanumber後場取引代金（※2）

AAdjOnumber調整済み後場始値（※1, ※2）

AAdjHnumber調整済み後場高値（※1, ※2）

AAdjLnumber調整済み後場安値（※1, ※2）

AAdjCnumber調整済み後場終値（※1, ※2）

AAdjVonumber調整済み後場売買高（※1, ※2）

※1 過去の分割等を考慮した調整済みの項目です

※2 Premiumプランのみ取得可能な項目です

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "Date": "2023-03-24",\
            "Code": "86970",\
            "O": 2047.0,\
            "H": 2069.0,\
            "L": 2035.0,\
            "C": 2045.0,\
            "UL": "0",\
            "LL": "0",\
            "Vo": 2202500.0,\
            "Va": 4507051850.0,\
            "AdjFactor": 1.0,\
            "AdjO": 2047.0,\
            "AdjH": 2069.0,\
            "AdjL": 2035.0,\
            "AdjC": 2045.0,\
            "AdjVo": 2202500.0,\
            "MO": 2047.0,\
            "MH": 2069.0,\
            "ML": 2040.0,\
            "MC": 2045.5,\
            "MUL": "0",\
            "MLL": "0",\
            "MVo": 1121200.0,\
            "MVa": 2297525850.0,\
            "MAdjO": 2047.0,\
            "MAdjH": 2069.0,\
            "MAdjL": 2040.0,\
            "MAdjC": 2045.5,\
            "MAdjVo": 1121200.0,\
            "AO": 2047.0,\
            "AH": 2047.0,\
            "AL": 2035.0,\
            "AC": 2045.0,\
            "AUL": "0",\
            "ALL": "0",\
            "AVo": 1081300.0,\
            "AVa": 2209526000.0,\
            "AAdjO": 2047.0,\
            "AAdjH": 2047.0,\
            "AAdjL": 2035.0,\
            "AAdjC": 2045.0,\
            "AAdjVo": 1081300.0\
        }\
    ],
    "pagination_key": "value1.value2."
}
```

CopyCopied!
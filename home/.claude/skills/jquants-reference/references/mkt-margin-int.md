[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/mkt-margin-int.md) LLM用にコピー

# 信用取引週末残高(/markets/margin-interest)

GET /v2/markets/margin-interest

## [APIの概要](https://jpx-jquants.com/ja/spec/mkt-margin-int\#API%E3%81%AE%E6%A6%82%E8%A6%81)

週末時点での、各銘柄についての信用取引残高（株数）を取得できます。

配信データは下記のページで公表している内容と同一です。

[https://www.jpx.co.jp/markets/statistics-equities/margin/index.html](https://www.jpx.co.jp/markets/statistics-equities/margin/index.html)

### 本APIの留意点

- 当該銘柄のコーポレートアクションが発生した場合も、遡及して株数の調整は行われません。
- 年末年始など、営業日が2日以下の週はデータが提供されません。
- 東証上場銘柄でない銘柄（地方取引所単独上場銘柄）についてはデータの収録対象外となっております。

## [信用取引週末残高を取得します](https://jpx-jquants.com/ja/spec/mkt-margin-int\#%E4%BF%A1%E7%94%A8%E5%8F%96%E5%BC%95%E9%80%B1%E6%9C%AB%E6%AE%8B%E9%AB%98%E3%82%92%E5%8F%96%E5%BE%97%E3%81%97%E3%81%BE%E3%81%99)

GET`https://api.jquants.com/v2/markets/margin-interest`

データの取得では、銘柄コード（code）または公表日（date）の指定が必須となります。

### パラメータ及びレスポンス

データの取得では、銘柄コード（code）または公表日（date）の指定が必須となります。

各パラメータの組み合わせとレスポンスの結果については以下のとおりです。

| code | date | from /to | レスポンスの結果 |
| --- | --- | --- | --- |
|  |  |  | 指定された銘柄について全期間分のデータ |
|  |  |  | 指定された銘柄について指定された公表日のデータ |
|  |  |  | 指定された銘柄について指定された期間分のデータ |
|  |  |  | 全上場銘柄について指定された公表日のデータ |

### Requests

### Headers

x-api-keystringrequired

APIキー

### Query Parameters

**code** または **date** のいずれか一つの指定が必須です。

codestringoptional

銘柄コード（e.g. 27800 or 2780）

4桁の銘柄コードを指定した場合は、普通株式と優先株式等の両方が上場している銘柄においては普通株式のデータのみが取得されます。

fromstringoptional

from の指定（e.g. 20210901 or 2021-09-01）

tostringoptional

to の指定（e.g. 20210907 or 2021-09-07）

datestringoptional

from と to を指定しないときの公表日（e.g. 20210907 or 2021-09-07）

pagination\_keystringoptional

検索の先頭を指定する文字列

過去の検索で返却された `pagination_key` を設定

### APIコールサンプルコード

### Request

cURLJavaScriptPython

GET

/v2/markets/margin-interest

```
curl -G https://api.jquants.com/v2/markets/margin-interest \
-H "x-api-key: {loading}" \
-d code="86970" \
-d date="20230324"
```

Copy

### Responses

### データ項目概要

Datestring申込日付

信用取引残高基準となる時点を表します。（通常は金曜日付）

（YYYY-MM-DD）

Codestring銘柄コード

ShrtVolnumber売合計信用残高

LongVolnumber買合計信用残高

ShrtNegVolnumber

一般信用取引売残高

売合計信用残高のうち、一般信用によるものです。

LongNegVolnumber

一般信用取引買残高

買合計信用残高のうち、一般信用によるものです。

ShrtStdVolnumber

制度信用取引売残高

売合計信用残高のうち、制度信用によるものです。

LongStdVolnumber

制度信用取引買残高

買合計信用残高のうち、制度信用によるものです。

IssTypestring

銘柄区分

1: 信用銘柄、2: 貸借銘柄、3: その他

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "Date": "2023-03-24",\
            "Code": "86970",\
            "ShrtVol": 123456.0,\
            "LongVol": 234567.0,\
            "ShrtNegVol": 11111.0,\
            "LongNegVol": 22222.0,\
            "ShrtStdVol": 33333.0,\
            "LongStdVol": 44444.0,\
            "IssType": "1"\
        }\
    ],
    "pagination_key": "value1.value2."
}
```

CopyCopied!
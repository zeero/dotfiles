[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/mkt-margin-alert.md) LLM用にコピー

# 日々公表信用取引残高(/markets/margin-alert)

GET /v2/markets/margin-alert

## [APIの概要](https://jpx-jquants.com/ja/spec/mkt-margin-alert\#API%E3%81%AE%E6%A6%82%E8%A6%81)

日々公表銘柄に指定された個別銘柄の日々の信用取引残高を取得することができます。

各銘柄についての信用取引残高（株数）を取得できます。

配信データは下記のページで公表している内容と同一です。

[https://www.jpx.co.jp/markets/statistics-equities/margin/index.html](https://www.jpx.co.jp/markets/statistics-equities/margin/index.html)

### 本APIの留意点

- 当該銘柄のコーポレートアクションが発生した場合であっても、遡及して約定株数の調整は行われません。
- 東京証券取引所または日本証券金融が、日次の信用取引残高を公表する必要があると認めた銘柄のみが収録されます。
- 過誤訂正により過去の日々公表信用取引残高データが訂正された場合は、本APIでは以下のとおりデータを提供します。
  - 訂正前と訂正後のデータのいずれも提供します。訂正が生じた場合には、申込日を同一とするレコードが追加されます。公表日が新しいデータが訂正後、公表日が古いデータが訂正前のデータと識別することが可能です。

## [日々公表信用取引残高を取得します](https://jpx-jquants.com/ja/spec/mkt-margin-alert\#%E6%97%A5%E3%80%85%E5%85%AC%E8%A1%A8%E4%BF%A1%E7%94%A8%E5%8F%96%E5%BC%95%E6%AE%8B%E9%AB%98%E3%82%92%E5%8F%96%E5%BE%97%E3%81%97%E3%81%BE%E3%81%99)

GET`https://api.jquants.com/v2/markets/margin-alert`

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

4桁の銘柄コードを指定した場合は、普通株式と優先株式の両方が上場している銘柄においては普通株式のデータのみが取得されます。

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

/v2/markets/margin-alert

```
curl -G https://api.jquants.com/v2/markets/margin-alert \
-H "x-api-key: {loading}" \
-d code="13260" \
-d date="20240208"
```

Copy

### Responses

### データ項目概要

PubDatestring公表日

Codestring銘柄コード

AppDatestring申込日（YYYY-MM-DD）

信用取引残高の基準となる時点を表します。

PubReasonmap

[公表の理由](https://jpx-jquants.com/ja/spec/mkt-margin-alert/publish-reason)

ShrtOutnumber売合計信用残高

ShrtOutChgnumber / string前日比 売合計信用残高（単位：株）

前日に公表されていない銘柄の場合、「-」を出力します。

ShrtOutRationumber / string上場比 売合計信用残高（単位：％） 売合計信用残高 ÷ 上場株数 × 100

ETF の場合、「\*」を出力します。

LongOutnumber買合計信用残高

LongOutChgnumber / string前日比 買合計信用残高（単位：株）

前日に公表されていない銘柄の場合、「-」を出力します。

LongOutRationumber / string上場比 買合計信用残高（単位：％） 買合計信用残高 ÷ 上場株数 × 100

ETF の場合、「\*」を出力します。

SLRationumber取組比率（単位：％） 売合計信用残高 ÷ 買合計信用残高 × 100

ShrtNegOutnumber一般信用取引売残高

売合計信用残高のうち、一般信用によるものです。

ShrtNegOutChgnumber / string前日比 一般信用取引売残高（単位：株）

前日に公表されていない銘柄の場合、「-」を出力します。

ShrtStdOutnumber制度信用取引売残高

売合計信用残高のうち、制度信用によるものです。

ShrtStdOutChgnumber / string前日比 制度信用取引売残高（単位：株）

前日に公表されていない銘柄の場合、「-」を出力します。

LongNegOutnumber一般信用取引買残高

買合計信用残高のうち、一般信用によるものです。

LongNegOutChgnumber / string前日比 一般信用取引買残高（単位：株）

前日に公表されていない銘柄の場合、「-」を出力します。

LongStdOutnumber制度信用取引買残高

買合計信用残高のうち、制度信用によるものです。

LongStdOutChgnumber / string前日比 制度信用取引買残高（単位：株）

前日に公表されていない銘柄の場合、「-」を出力します。

TSEMrgnRegClsstring

[東証信用貸借規制区分](https://jpx-jquants.com/ja/spec/mkt-margin-alert/margin-trading-classification)

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "PubDate": "2024-02-08",\
            "Code": "13260",\
            "AppDate": "2024-02-07",\
            "PubReason":\
                {\
                    "Restricted": "0",\
                    "DailyPublication": "0",\
                    "Monitoring": "0",\
                    "RestrictedByJSF": "0",\
                    "PrecautionByJSF": "1",\
                    "UnclearOrSecOnAlert": "0"\
                },\
            "ShrtOut": 11.0,\
            "ShrtOutChg": 0.0,\
            "ShrtOutRatio": "*",\
            "LongOut": 676.0,\
            "LongOutChg": -20.0,\
            "LongOutRatio": "*",\
            "SLRatio": 1.6,\
            "ShrtNegOut": 0.0,\
            "ShrtNegOutChg": 0.0,\
            "ShrtStdOut": 11.0,\
            "ShrtStdOutChg": 0.0,\
            "LongNegOut": 192.0,\
            "LongNegOutChg": -20.0,\
            "LongStdOut": 484.0,\
            "LongStdOutChg": 0.0,\
            "TSEMrgnRegCls": "001"\
        }\
    ],
    "pagination_key": "value1.value2."
}
```

CopyCopied!
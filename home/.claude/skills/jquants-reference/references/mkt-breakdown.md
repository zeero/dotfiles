[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/mkt-breakdown.md) LLM用にコピー

# 売買内訳データ(/markets/breakdown)

GET /v2/markets/breakdown

## [APIの概要](https://jpx-jquants.com/ja/spec/mkt-breakdown\#API%E3%81%AE%E6%A6%82%E8%A6%81)

東証上場銘柄の東証市場における銘柄別の日次売買代金・売買高（立会内取引に限る）について、信用取引や空売りの利用に関する発注時のフラグ情報を用いて細分化したデータです。

### 本APIの留意点

- 当該銘柄のコーポレートアクションが発生した場合も、遡及して約定株数の調整は行われません。
- 2020/10/1は東京証券取引所の株式売買システムの障害により終日売買停止となった関係で、データが存在しません。

## [銘柄別の日次売買代金・売買高のデータを取得します](https://jpx-jquants.com/ja/spec/mkt-breakdown\#%E9%8A%98%E6%9F%84%E5%88%A5%E3%81%AE%E6%97%A5%E6%AC%A1%E5%A3%B2%E8%B2%B7%E4%BB%A3%E9%87%91%E3%83%BB%E5%A3%B2%E8%B2%B7%E9%AB%98%E3%81%AE%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E5%8F%96%E5%BE%97%E3%81%97%E3%81%BE%E3%81%99)

GET`https://api.jquants.com/v2/markets/breakdown`

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

fromstringoptional

from の指定（e.g. 20210901 or 2021-09-01）

tostringoptional

to の指定（e.g. 20210907 or 2021-09-07）

datestringoptional

from と to を指定しないときの日付（e.g. 20210907 or 2021-09-07）

pagination\_keystringoptional

検索の先頭を指定する文字列

過去の検索で返却された `pagination_key` を設定

### APIコールサンプルコード

### Request

cURLJavaScriptPython

GET

/v2/markets/breakdown

```
curl -G https://api.jquants.com/v2/markets/breakdown \
-H "x-api-key: {loading}" \
-d code="86970" \
-d date="20230324"
```

Copy

### Responses

### データ項目概要

Datestring売買日（YYYY-MM-DD）

Codestring銘柄コード

LongSellVanumber

実売りの約定代金

売りの約定代金の内訳

ShrtNoMrgnVanumber

空売り（信用新規売りを除く）の約定代金

売りの約定代金の内訳

MrgnSellNewVanumber

信用新規売り（新たな信用売りポジションを作るための売り注文）の約定代金

売りの約定代金の内訳

MrgnSellCloseVanumber

信用返済売り（既存の信用買いポジションを閉じるための売り注文）の約定代金

売りの約定代金の内訳

LongBuyVanumber

現物買いの約定代金

買いの約定代金の内訳

MrgnBuyNewVanumber

信用新規買い（新たな信用買いポジションを作るための買い注文）の約定代金

買いの約定代金の内訳

MrgnBuyCloseVanumber

信用返済買い（既存の信用売りポジションを閉じるための買い注文）の約定代金

買いの約定代金の内訳

LongSellVonumber

実売りの約定株数

売りの約定株数の内訳

ShrtNoMrgnVonumber

空売り（信用新規売りを除く）の約定株数

売りの約定株数の内訳

MrgnSellNewVonumber

信用新規売り（新たな信用売りポジションを作るための売り注文）の約定株数

売りの約定株数の内訳

MrgnSellCloseVonumber

信用返済売り（既存の信用買いポジションを閉じるための売り注文）の約定株数

売りの約定株数の内訳

LongBuyVonumber

現物買いの約定株数

買いの約定株数の内訳

MrgnBuyNewVonumber

信用新規買い（新たな信用買いポジションを作るための買い注文）の約定株数

買いの約定株数の内訳

MrgnBuyCloseVonumber

信用返済買い（既存の信用売りポジションを閉じるための買い注文）の約定株数

買いの約定株数の内訳

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "Date": "2015-04-01",\
            "Code": "13010",\
            "LongSellVa": 115164000.0,\
            "ShrtNoMrgnVa": 93561000.0,\
            "MrgnSellNewVa": 6412000.0,\
            "MrgnSellCloseVa": 23009000.0,\
            "LongBuyVa": 185114000.0,\
            "MrgnBuyNewVa": 35568000.0,\
            "MrgnBuyCloseVa": 17464000.0,\
            "LongSellVo": 415000.0,\
            "ShrtNoMrgnVo": 337000.0,\
            "MrgnSellNewVo": 23000.0,\
            "MrgnSellCloseVo": 83000.0,\
            "LongBuyVo": 667000.0,\
            "MrgnBuyNewVo": 128000.0,\
            "MrgnBuyCloseVo": 63000.0\
        }\
    ],
    "pagination_key": "value1.value2."
}
```

CopyCopied!
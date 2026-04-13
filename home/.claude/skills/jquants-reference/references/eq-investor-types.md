[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/eq-investor-types.md) LLM用にコピー

# 投資部門別情報(/equities/investor-types)

GET /v2/equities/investor-types

## [APIの概要](https://jpx-jquants.com/ja/spec/eq-investor-types\#API%E3%81%AE%E6%A6%82%E8%A6%81)

投資部門別売買状況（株式・金額）のデータを取得することができます。

配信データは下記のページで公表している内容と同一です。データの単位は千円です。

[https://www.jpx.co.jp/markets/statistics-equities/investor-type/index.html](https://www.jpx.co.jp/markets/statistics-equities/investor-type/index.html)

### 本APIの留意点

- 2022年4月4日に行われた市場区分見直しに伴い、市場区分に応じた内容となっている統計資料は、見直し後の市場区分に変更して掲載しています。
- 過誤訂正により過去の投資部門別売買状況データが訂正された場合は、本APIでは以下のとおりデータを提供します。
  - 2023年4月3日以前に訂正が公表された過誤訂正：訂正前のデータは提供せず、訂正後のデータのみ提供します。
  - 2023年4月3日以降に訂正が公表された過誤訂正：訂正前と訂正後のデータのいずれも提供します。訂正が生じた場合には、市場名、開始日および終了日を同一とするレコードが追加され、公表日が新しいデータが訂正後、公表日が古いデータが訂正前のデータと識別することが可能です。
- 過誤訂正により過去の投資部門別売買状況データが訂正された場合は、過誤訂正が公表された翌営業日にデータが更新されます。

## [投資部門別売買状況のデータを取得します](https://jpx-jquants.com/ja/spec/eq-investor-types\#%E6%8A%95%E8%B3%87%E9%83%A8%E9%96%80%E5%88%A5%E5%A3%B2%E8%B2%B7%E7%8A%B6%E6%B3%81%E3%81%AE%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E5%8F%96%E5%BE%97%E3%81%97%E3%81%BE%E3%81%99)

GET`https://api.jquants.com/v2/equities/investor-types`

データの取得では、市場（`section`）または公表日の日付（`from` / `to`）が指定できます。

### パラメータ及びレスポンス

データの取得では、セクション（`section`）または日付（`from` / `to`）の指定が可能です。

各パラメータの組み合わせとレスポンスの結果については以下のとおりです。

| section | from /to | レスポンスの結果 |
| --- | --- | --- |
|  |  | 指定したセクションの指定した期間のデータ |
|  |  | 指定したセクションの全期間のデータ |
|  |  | すべてのセクションの指定した期間のデータ |
|  |  | すべてのセクションの全期間のデータ |

### Requests

### Headers

x-api-keystringrequired

APIキー

### Query Parameters

sectionstringoptional

セクション（e.g. TSEPrime）

指定可能な値の一覧は [こちら](https://jpx-jquants.com/ja/spec/eq-investor-types/section) をご確認ください。

fromstringoptional

fromの指定（e.g. 20210901 or 2021-09-01）

tostringoptional

toの指定（e.g. 20210907 or 2021-09-07）

pagination\_keystringoptional

検索の先頭を指定する文字列

過去の検索で返却された `pagination_key` を設定

### APIコールサンプルコード

### Request

cURLJavaScriptPython

GET

/v2/equities/investor-types

```
curl -G https://api.jquants.com/v2/equities/investor-types \
-H "x-api-key: {loading}" \
-d section="TSEPrime" \
-d from="20230324" \
-d to="20230403"
```

Copy

### Responses

### データ項目概要

PubDatestring公表日（YYYY-MM-DD）

StDatestring開始日（YYYY-MM-DD）

EnDatestring終了日（YYYY-MM-DD）

Sectionstring

市場名（ [市場名](https://jpx-jquants.com/ja/spec/eq-investor-types/section) を参照）

PropSellnumber自己計\_売

PropBuynumber自己計\_買

PropTotnumber自己計\_合計

PropBalnumber自己計\_差引

BrkSellnumber委託計\_売

BrkBuynumber委託計\_買

BrkTotnumber委託計\_合計

BrkBalnumber委託計\_差引

TotSellnumber総計\_売

TotBuynumber総計\_買

TotTotnumber総計\_合計

TotBalnumber総計\_差引

IndSellnumber個人\_売

IndBuynumber個人\_買

IndTotnumber個人\_合計

IndBalnumber個人\_差引

FrgnSellnumber海外投資家\_売

FrgnBuynumber海外投資家\_買

FrgnTotnumber海外投資家\_合計

FrgnBalnumber海外投資家\_差引

SecCoSellnumber証券会社\_売

SecCoBuynumber証券会社\_買

SecCoTotnumber証券会社\_合計

SecCoBalnumber証券会社\_差引

InvTrSellnumber投資信託\_売

InvTrBuynumber投資信託\_買

InvTrTotnumber投資信託\_合計

InvTrBalnumber投資信託\_差引

BusCoSellnumber事業法人\_売

BusCoBuynumber事業法人\_買

BusCoTotnumber事業法人\_合計

BusCoBalnumber事業法人\_差引

OthCoSellnumberその他法人\_売

OthCoBuynumberその他法人\_買

OthCoTotnumberその他法人\_合計

OthCoBalnumberその他法人\_差引

InsCoSellnumber生保・損保\_売

InsCoBuynumber生保・損保\_買

InsCoTotnumber生保・損保\_合計

InsCoBalnumber生保・損保\_差引

BankSellnumber都銀・地銀等\_売

BankBuynumber都銀・地銀等\_買

BankTotnumber都銀・地銀等\_合計

BankBalnumber都銀・地銀等\_差引

TrstBnkSellnumber信託銀行\_売

TrstBnkBuynumber信託銀行\_買

TrstBnkTotnumber信託銀行\_合計

TrstBnkBalnumber信託銀行\_差引

OthFinSellnumberその他金融機関\_売

OthFinBuynumberその他金融機関\_買

OthFinTotnumberその他金融機関\_合計

OthFinBalnumberその他金融機関\_差引

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "PubDate": "2017-01-13",\
            "StDate": "2017-01-04",\
            "EnDate": "2017-01-06",\
            "Section": "TSE1st",\
            "PropSell": 1311271004,\
            "PropBuy": 1453326508,\
            "PropTot": 2764597512,\
            "PropBal": 142055504,\
            "BrkSell": 7165529005,\
            "BrkBuy": 7030019854,\
            "BrkTot": 14195548859,\
            "BrkBal": -135509151,\
            "TotSell": 8476800009,\
            "TotBuy": 8483346362,\
            "TotTot": 16960146371,\
            "TotBal": 6546353,\
            "IndSell": 1401711615,\
            "IndBuy": 1161801155,\
            "IndTot": 2563512770,\
            "IndBal": -239910460,\
            "FrgnSell": 5094891735,\
            "FrgnBuy": 5317151774,\
            "FrgnTot": 10412043509,\
            "FrgnBal": 222260039,\
            "SecCoSell": 76381455,\
            "SecCoBuy": 61700100,\
            "SecCoTot": 138081555,\
            "SecCoBal": -14681355,\
            "InvTrSell": 168705109,\
            "InvTrBuy": 124389642,\
            "InvTrTot": 293094751,\
            "InvTrBal": -44315467,\
            "BusCoSell": 71217959,\
            "BusCoBuy": 63526641,\
            "BusCoTot": 134744600,\
            "BusCoBal": -7691318,\
            "OthCoSell": 10745152,\
            "OthCoBuy": 15687836,\
            "OthCoTot": 26432988,\
            "OthCoBal": 4942684,\
            "InsCoSell": 15926202,\
            "InsCoBuy": 9831555,\
            "InsCoTot": 25757757,\
            "InsCoBal": -6094647,\
            "BankSell": 10606789,\
            "BankBuy": 8843871,\
            "BankTot": 19450660,\
            "BankBal": -1762918,\
            "TrstBnkSell": 292932297,\
            "TrstBnkBuy": 245322795,\
            "TrstBnkTot": 538255092,\
            "TrstBnkBal": -47609502,\
            "OthFinSell": 22410692,\
            "OthFinBuy": 21764485,\
            "OthFinTot": 44175177,\
            "OthFinBal": -646207\
        }\
    ],
    "pagination_key": "value1.value2."
}
```

CopyCopied!
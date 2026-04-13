[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/mkt-short-ratio.md) LLM用にコピー

# 業種別空売り比率(/markets/short-ratio)

GET /v2/markets/short-ratio

## [APIの概要](https://jpx-jquants.com/ja/spec/mkt-short-ratio\#API%E3%81%AE%E6%A6%82%E8%A6%81)

日々の業種（セクター）別の空売りの売買代金を取得できます。

配信データは下記のページで公表している内容と同様です。

[https://www.jpx.co.jp/markets/statistics-equities/short-selling/index.html](https://www.jpx.co.jp/markets/statistics-equities/short-selling/index.html)

Webページでの公表値は百万円単位に丸められておりますが、APIでは円単位のデータとなります。

### 本APIの留意点

- 取引高が存在しない（売買されていない）日の日付（date）を指定した場合は、値は空です。
- 2020/10/1は東京証券取引所の株式売買システムの障害により終日売買停止となった関係で、データが存在しません。

## [日々の業種（セクター）別の空売りの売買代金を取得します](https://jpx-jquants.com/ja/spec/mkt-short-ratio\#%E6%97%A5%E3%80%85%E3%81%AE%E6%A5%AD%E7%A8%AE(%E3%82%BB%E3%82%AF%E3%82%BF%E3%83%BC)%E5%88%A5%E3%81%AE%E7%A9%BA%E5%A3%B2%E3%82%8A%E3%81%AE%E5%A3%B2%E8%B2%B7%E4%BB%A3%E9%87%91%E3%82%92%E5%8F%96%E5%BE%97%E3%81%97%E3%81%BE%E3%81%99)

GET`https://api.jquants.com/v2/markets/short-ratio`

データの取得では、33業種コード（s33）または日付（date）の指定が必須となります。

### パラメータ及びレスポンス

データの取得では、日付（date）または33業種コード（s33）の指定が必須となります。

各パラメータの組み合わせとレスポンスの結果については以下のとおりです。

| s33 | date | from/to | レスポンスの結果 |
| --- | --- | --- | --- |
|  |  |  | 全業種コードについて指定された日付のデータ |
|  |  |  | 指定された業種コードについて、全期間分のデータ |
|  |  |  | 指定された業種コードについて指定された期間分のデータ |
|  |  |  | 指定された業種コードについて指定された日付のデータ |

### Requests

### Headers

x-api-keystringrequiredAPIキー

### Query Parameters

**s33** または **date** のいずれか一つの指定が必須です。

s33stringoptional

33業種コード（e.g. 0050 or 50）

fromstringoptional

fromの指定（e.g. 20210901 or 2021-09-01）

tostringoptional

toの指定（e.g. 20210907 or 2021-09-07）

datestringoptional

\*fromとtoを指定しないとき（e.g. 20210907 or 2021-09-07）

pagination\_keystringoptional

検索の先頭を指定する文字列

過去の検索で返却された `pagination_key` を設定

### APIコールサンプルコード

### Request

cURLJavaScriptPython

GET

/v2/markets/short-ratio

```
curl -G https://api.jquants.com/v2/markets/short-ratio \
-H "x-api-key: {loading}" \
-d s33="0050" \
-d date="2022-10-25"
```

Copy

### Responses

### データ項目概要

Datestring日付（YYYY-MM-DD）

S33string

33業種コード（ [33業種コード及び業種名](https://jpx-jquants.com/ja/spec/eq-master/sector33code) を参照）

SellExShortVanumber実注文の売買代金

ShrtWithResVanumber価格規制有りの空売り売買代金

ShrtNoResVanumber価格規制無しの空売り売買代金

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "Date": "2022-10-25",\
            "S33": "0050",\
            "SellExShortVa": 1333126400.0,\
            "ShrtWithResVa": 787355200.0,\
            "ShrtNoResVa": 149084300.0\
        }\
    ],
    "pagination_key": "value1.value2."
}
```

CopyCopied!
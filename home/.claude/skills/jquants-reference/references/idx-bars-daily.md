[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/idx-bars-daily.md) LLM用にコピー

# 指数四本値(/indices/bars/daily)

GET /v2/indices/bars/daily

## [APIの概要](https://jpx-jquants.com/ja/spec/idx-bars-daily\#API%E3%81%AE%E6%A6%82%E8%A6%81)

各種指数の四本値データを取得することができます。

現在配信している指数につきましては、 [こちらのページ](https://jpx-jquants.com/ja/spec/idx-bars-daily/indexcodes) を参照ください。

### 本APIの留意点

- 2022年4月の東証市場区分再編によりマザーズ市場は廃止されていますが、一定のルールに基づき東証マザーズ指数の構成銘柄の入替を行い、2023年11月6日より指数名称を「東証グロース市場250指数」に変更されています。詳細は [こちら](https://www.jpx.co.jp/news/6030/20230428-01.html) をご参照ください。
- 2020年10月1日のデータは東京証券取引所の株式売買システムの障害により終日売買停止となった関係で、四本値は前営業日（2020年10月1日）の終値が収録されています。
- 一部の指数についてはPremiumプランのみ取得可能です。
- 一部の指数については、終値のみを提供します。

## [日次の指数四本値データを取得します](https://jpx-jquants.com/ja/spec/idx-bars-daily\#%E6%97%A5%E6%AC%A1%E3%81%AE%E6%8C%87%E6%95%B0%E5%9B%9B%E6%9C%AC%E5%80%A4%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E5%8F%96%E5%BE%97%E3%81%97%E3%81%BE%E3%81%99)

GET`https://api.jquants.com/v2/indices/bars/daily`

データの取得では、指数コード（code）または日付（date）の指定が必須となります。

### パラメータ及びレスポンス

データの取得する際には、指数コード（code）または日付（date）の指定が必須となります。

各パラメータの組み合わせとレスポンスの結果については以下のとおりです。

| code | date | from /to | レスポンスの結果 |
| --- | --- | --- | --- |
|  |  |  | 指定された銘柄について全期間分のデータ |
|  |  |  | 指定された銘柄について指定された日付のデータ |
|  |  |  | 指定された銘柄について指定された期間分のデータ |
|  |  |  | 配信している指数全てについて指定された日付のデータ |

### Requests

### Headers

x-api-keystringrequired

APIキー

### Query Parameters

**code** または **date** のいずれか一つの指定が必須です。

codestringoptional

指数コード（e.g. 0000 or 0028）

配信対象の指数コードについては [配信対象指数コード](https://jpx-jquants.com/ja/spec/idx-bars-daily/indexcodes) を参照してください。

datestringoptional

from と to を指定しないとき（e.g. 20210907 or 2021-09-07）

fromstringoptional

from の指定（e.g. 20210901 or 2021-09-01）

tostringoptional

to の指定（e.g. 20210907 or 2021-09-07）

pagination\_keystringoptional

検索の先頭を指定する文字列

過去の検索で返却された `pagination_key` を設定

### APIコールサンプルコード

### Request

cURLJavaScriptPython

GET

/v2/indices/bars/daily

```
curl -G https://api.jquants.com/v2/indices/bars/daily \
-H "x-api-key: {loading}" \
-d code="0028" \
-d date="20231201"
```

Copy

### Responses

### データ項目概要

Datestring日付（YYYY-MM-DD）

Codestring

指数コード

配信対象の指数コードは [こちらのページ](https://jpx-jquants.com/ja/spec/idx-bars-daily/indexcodes) を参照ください。

Onumber始値（※）

Hnumber高値（※）

Lnumber安値（※）

Cnumber終値

※ 終値のみ提供の指数についてはNullが設定されます。

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "Date": "2023-12-01",\
            "Code": "0028",\
            "O": 1199.18,\
            "H": 1202.58,\
            "L": 1195.01,\
            "C": 1200.17\
        }\
    ],
    "pagination_key": "value1.value2."
}
```

CopyCopied!
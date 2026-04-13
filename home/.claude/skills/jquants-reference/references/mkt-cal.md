[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/mkt-cal.md) LLM用にコピー

# 取引カレンダー(/markets/calendar)

GET /v2/markets/calendar

## [APIの概要](https://jpx-jquants.com/ja/spec/mkt-cal\#API%E3%81%AE%E6%A6%82%E8%A6%81)

東証およびOSEにおける営業日、休業日、ならびにOSEにおける祝日取引の有無の情報を取得できます。

配信データは以下のページで公表している内容と同様です。

- 休業日一覧: [https://www.jpx.co.jp/corporate/about-jpx/calendar/index.html](https://www.jpx.co.jp/corporate/about-jpx/calendar/index.html)
- 祝日取引実施日: [https://www.jpx.co.jp/derivatives/rules/holidaytrading/index.html](https://www.jpx.co.jp/derivatives/rules/holidaytrading/index.html)

### 本APIの留意点

- 原則として、毎年3月末頃をめどに翌年1年間の営業日および祝日取引実施日（予定）を更新します。

## [営業日のデータを取得します](https://jpx-jquants.com/ja/spec/mkt-cal\#%E5%96%B6%E6%A5%AD%E6%97%A5%E3%81%AE%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E5%8F%96%E5%BE%97%E3%81%97%E3%81%BE%E3%81%99)

GET`https://api.jquants.com/v2/markets/calendar`

データの取得では、休日区分（hol\_div）または日付（from/to）の指定が可能です。

### パラメータ及びレスポンス

データの取得では、休日区分（hol\_div）または日付（from/to）の指定が可能です。

各パラメータの組み合わせとレスポンスの結果については以下のとおりです。

| hol\_div | from /to | レスポンスの結果 |
| --- | --- | --- |
|  |  | 指定された休日区分について全期間分のデータ |
|  |  | 指定された休日区分について指定された期間分のデータ |
|  |  | 指定された期間分のデータ |
|  |  | 全期間分のデータ |

### Requests

### Headers

x-api-keystringrequired

APIキー

### Query Parameters

hol\_divstringoptional

休日区分

指定可能な値の一覧は [こちら](https://jpx-jquants.com/ja/spec/mkt-cal/holiday-division) をご確認ください。

fromstringoptional

from の指定（e.g. 20210901 or 2021-09-01）

tostringoptional

to の指定（e.g. 20210907 or 2021-09-07）

### APIコールサンプルコード

### Request

cURLJavaScriptPython

GET

/v2/markets/calendar

```
curl -G https://api.jquants.com/v2/markets/calendar \
-H "x-api-key: {loading}" \
-d hol_div="1" \
-d from="20220101" \
-d to="20221231"
```

Copy

### Responses

### データ項目概要

Datestring日付（YYYY-MM-DD）

HolDivstring

休日区分

[休日区分](https://jpx-jquants.com/ja/spec/mkt-cal/holiday-division) を参照

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "Date": "2015-04-01",\
            "HolDiv": "1"\
        }\
    ]
}
```

CopyCopied!
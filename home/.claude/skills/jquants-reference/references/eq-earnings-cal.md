[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/eq-earnings-cal.md) LLM用にコピー

# 決算発表予定日(/equities/earnings-calendar)

GET /v2/equities/earnings-calendar

## [APIの概要](https://jpx-jquants.com/ja/spec/eq-earnings-cal\#API%E3%81%AE%E6%A6%82%E8%A6%81)

3月期・9月期決算の会社の決算発表予定日を取得できます。（その他の決算期の会社は今後対応予定です）

## [本APIの留意点](https://jpx-jquants.com/ja/spec/eq-earnings-cal\#%E6%9C%ACAPI%E3%81%AE%E7%95%99%E6%84%8F%E7%82%B9)

- 下記のサイトで、3月期・９月期決算会社分に更新があった場合のみ19時ごろに更新されます。３月期・９月期決算会社についての更新がなかった場合は、最終更新日時点のデータを提供します。

[https://www.jpx.co.jp/listing/event-schedules/financial-announcement/index.html](https://www.jpx.co.jp/listing/event-schedules/financial-announcement/index.html)
- 本APIは翌営業日に決算発表が行われる銘柄に関する情報を返します。
- 本APIから得られたデータにおいてDateの項目が翌営業日付であるレコードが存在しない場合は、3月期・9月期決算会社における翌営業日の開示予定はないことを意味します。
- REITのデータは含まれません。

## [決算発表予定日の銘柄コード、年度、 四半期等の照会をします。](https://jpx-jquants.com/ja/spec/eq-earnings-cal\#%E6%B1%BA%E7%AE%97%E7%99%BA%E8%A1%A8%E4%BA%88%E5%AE%9A%E6%97%A5%E3%81%AE%E9%8A%98%E6%9F%84%E3%82%B3%E3%83%BC%E3%83%89%E3%80%81%E5%B9%B4%E5%BA%A6%E3%80%81-%E5%9B%9B%E5%8D%8A%E6%9C%9F%E7%AD%89%E3%81%AE%E7%85%A7%E4%BC%9A%E3%82%92%E3%81%97%E3%81%BE%E3%81%99%E3%80%82)

GET`https://api.jquants.com/v2/equities/earnings-calendar`

### Requests

### Headers

x-api-keystringrequired

APIキー

### Query Parameters

pagination\_keystringoptional

検索の先頭を指定する文字列

過去の検索で返却された `pagination_key` を設定

### APIコールサンプルコード

### Request

cURLJavaScriptPython

GET

/v2/equities/earnings-calendar

```
curl -G https://api.jquants.com/v2/equities/earnings-calendar \
-H "x-api-key: {loading}"
```

Copy

### Responses

### データ項目概要

Datestring

日付（YYYY-MM-DD）

決算発表予定日が未定の場合、空文字("")となります。

Codestring銘柄コード

CoNamestring会社名

FYstring決算期末

SectorNmstring業種名

FQstring決算種別

Sectionstring市場区分

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "Date": "2022-02-14",\
            "Code": "43760",\
            "CoName": "くふうカンパニー",\
            "FY": "9月30日",\
            "SectorNm": "情報・通信業",\
            "FQ": "第１四半期",\
            "Section": "マザーズ"\
        }\
    ],
    "pagination_key": "value1.value2."
}
```

CopyCopied!
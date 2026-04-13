[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/drv-bars-daily-fut.md) LLM用にコピー

# 先物四本値(/derivatives/bars/daily/futures)

GET /v2/derivatives/bars/daily/futures

## [APIの概要](https://jpx-jquants.com/ja/spec/drv-bars-daily-fut\#API%E3%81%AE%E6%A6%82%E8%A6%81)

先物に関する、四本値や清算値段、理論価格に関する情報を取得することができます。

また、本APIで取得可能なデータについては
[先物商品区分コード一覧](https://jpx-jquants.com/ja/spec/drv-bars-daily-fut/derivative-product-category) を参照ください。

## [本APIの留意点](https://jpx-jquants.com/ja/spec/drv-bars-daily-fut\#%E6%9C%ACAPI%E3%81%AE%E7%95%99%E6%84%8F%E7%82%B9)

- **銘柄コードについて**  - 先物・オプション取引識別コードの付番規則については [証券コード関係の関係資料等](https://www.jpx.co.jp/sicc/securities-code/01.html) を参照してください。
- **取引セッションについて**  - 2011年2月10日以前は、ナイトセッション、前場、後場で構成されています。
  - この期間の前場データは収録されず、後場データが日中場データとして収録されます。なお、日通しデータについては、全立会を含めたデータとなります。
  - 2011年2月14日以降は、ナイトセッション、日中場で構成されています。
- **祝日取引について**  - 祝日取引の取引日については、祝日取引実施日直前の平日に開始するナイト・セッション（祝日前営業日）及び祝日取引実施日直後の平日（祝日翌営業日）のデイ・セッションと同一の取引日として扱います。
- **レスポンスのキー項目について**  - 緊急取引証拠金が発動した場合は、同一の取引日・銘柄に対して清算価格算出時と緊急取引証拠金算出時のデータが発生します。そのため、Date、Codeに加えてEmMrgnTrgDiv（EmergencyMarginTriggerDivision）を組み合わせることでデータを一意に識別することが可能です。

## [日次の先物四本値データ取得](https://jpx-jquants.com/ja/spec/drv-bars-daily-fut\#%E6%97%A5%E6%AC%A1%E3%81%AE%E5%85%88%E7%89%A9%E5%9B%9B%E6%9C%AC%E5%80%A4%E3%83%87%E3%83%BC%E3%82%BF%E5%8F%96%E5%BE%97)

GET`https://api.jquants.com/v2/derivatives/bars/daily/futures`

データの取得では、日付（date）の指定が必須となります。

### Requests

### Headers

x-api-keystringrequired

APIキー

### Query Parameters

**date** の指定が必須です。

categorystringoptional

商品区分の指定

datestringrequired

date の指定（e.g. 20210901 or 2021-09-01）

contract\_flagstringoptional

中心限月フラグの指定

pagination\_keystringoptional

検索の先頭を指定する文字列

過去の検索で返却された `pagination_key` を設定

### APIコールサンプルコード

### Request

cURLJavaScriptPython

GET

/v2/derivatives/bars/daily/futures

```
curl -G https://api.jquants.com/v2/derivatives/bars/daily/futures \
-H "x-api-key: {loading}" \
-d date="20230324"
```

Copy

### Responses

### データ項目概要

Codestring銘柄コード

ProdCatstring先物商品区分

Datestring

取引日（YYYY-MM-DD）

Onumber日通し始値

Hnumber日通し高値

Lnumber日通し安値

Cnumber日通し終値

MOnumber / string

前場始値

前後場取引対象銘柄でない場合、空文字を設定。

MHnumber / string

前場高値

前後場取引対象銘柄でない場合、空文字を設定。

MLnumber / string

前場安値

前後場取引対象銘柄でない場合、空文字を設定。

MCnumber / string

前場終値

前後場取引対象銘柄でない場合、空文字を設定。

EOnumber / string

ナイト・セッション始値

取引開始日初日の銘柄はナイト・セッションが存在しないため、空文字を設定。

EHnumber / string

ナイト・セッション高値

取引開始日初日の銘柄はナイト・セッションが存在しないため、空文字を設定。

ELnumber / string

ナイト・セッション安値

取引開始日初日の銘柄はナイト・セッションが存在しないため、空文字を設定。

ECnumber / string

ナイト・セッション終値

取引開始日初日の銘柄はナイト・セッションが存在しないため、空文字を設定。

AOnumber日中始値

AHnumber日中高値

ALnumber日中安値

ACnumber日中終値

Vonumber取引高

OInumber建玉

Vanumber取引代金

CMstring

限月（YYYY-MM）

VoOAnumber

立会内取引高（※1）

EmMrgnTrgDivstring

緊急取引証拠金発動区分

001: 緊急取引証拠金発動時、002: 清算価格算出時。

"001" は2016年7月19日以降に緊急取引証拠金発動した場合のみ収録。

LTDstring

取引最終年月日（YYYY-MM-DD）（※1）

SQDstring

SQ日（YYYY-MM-DD）（※1）

Settlenumber

清算値段（※1）

CCMFlagstring

中心限月フラグ（1:中心限月、0:その他）（※1）

※1 2016年7月19日以降のみ提供。

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "Code": "169090005",\
            "ProdCat": "TOPIXF",\
            "Date": "2024-07-23",\
            "O": 2825.5,\
            "H": 2853.0,\
            "L": 2825.5,\
            "C": 2829.0,\
            "MO": "",\
            "MH": "",\
            "ML": "",\
            "MC": "",\
            "EO": 2825.5,\
            "EH": 2850.0,\
            "EL": 2825.5,\
            "EC": 2845.0,\
            "AO": 2850.5,\
            "AH": 2853.0,\
            "AL": 2826.0,\
            "AC": 2829.0,\
            "Vo": 42910.0,\
            "OI": 479812.0,\
            "Va": 1217918971856.0,\
            "CM": "2024-09",\
            "VoOA": 40405.0,\
            "EmMrgnTrgDiv": "002",\
            "LTD": "2024-09-12",\
            "SQD": "2024-09-13",\
            "Settle": 2829.0,\
            "CCMFlag": "1"\
        }\
    ],
    "pagination_key": "value1.value2."
}
```

CopyCopied!
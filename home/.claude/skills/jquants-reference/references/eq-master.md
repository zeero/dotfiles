[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/eq-master.md) LLM用にコピー

# 上場銘柄一覧(/equities/master)

GET /v2/equities/master

## [APIの概要](https://jpx-jquants.com/ja/spec/eq-master\#API%E3%81%AE%E6%A6%82%E8%A6%81)

過去時点での銘柄情報、当日の銘柄情報および翌営業日時点の銘柄情報が取得可能です。

ただし、翌営業日時点の銘柄情報については17 時半以降に取得可能となります。

### 本APIの留意点

- 過去日付の指定について、Premiumプランでデータ提供開始日（2008年5月7日）より過去日付を指定した場合であっても、2008年5月7日時点の銘柄情報を返却します。
- 指定された日付が休業日の場合は、指定日の翌営業日の銘柄情報を返却します。

2022年4月の東証市場区分再編により、日本銀行（銘柄コード83010）および信金中央金庫（銘柄コード84210）については、制度上所属する市場区分が存在しなくなりましたが、J-Quants では市場区分をスタンダードとして返却します。

## [日次の銘柄情報を取得します](https://jpx-jquants.com/ja/spec/eq-master\#%E6%97%A5%E6%AC%A1%E3%81%AE%E9%8A%98%E6%9F%84%E6%83%85%E5%A0%B1%E3%82%92%E5%8F%96%E5%BE%97%E3%81%97%E3%81%BE%E3%81%99)

GET`https://api.jquants.com/v2/equities/master`

データの取得では、銘柄コード（code）または日付（date）の指定が可能です。

各パラメータの組み合わせとレスポンスの結果については以下のとおりです。

| code | date | レスポンスの結果 |
| --- | --- | --- |
|  |  | APIを実行した日付時点における全銘柄情報一覧（※1） |
|  |  | APIを実行した日付時点における指定された銘柄情報（※1） |
|  |  | 指定日付時点における全銘柄情報の一覧（※2） |
|  |  | 指定日付時点における指定された銘柄情報（※2） |

※1 休業日において日付を指定せずにクエリした場合、直近の翌営業日における銘柄情報一覧を返却します。

※2 未来日付の指定について、Light プラン以上では翌営業日時点のデータが取得可能です。翌営業日より先の未来日付を指定した場合であっても、翌営業日時点の銘柄情報を返却します。

### Requests

### Headers

x-api-keystringrequired

APIキー

### Query Parameters

codestringoptional

銘柄コード（e.g. 27890 or 2789）

4桁の銘柄コードを指定した場合は、普通株式と優先株式の両方が上場している銘柄においては普通株式のデータのみが取得されます。

datestringoptional

基準となる日付の指定（e.g. 20210907 or 2021-09-07）

### APIコールサンプルコード

### Request

cURLJavaScriptPython

GET

/v2/equities/master

```
curl -G https://api.jquants.com/v2/equities/master \
-H "x-api-key: {loading}" \
-d code="86970" \
-d date="2022-11-11"
```

Copy

### Responses

### データ項目概要

Datestring情報適用年月日（YYYY-MM-DD）

Codestring銘柄コード

CoNamestring会社名

CoNameEnstring会社名（英語）

S17string

17業種コード（ [17業種コード及び業種名](https://jpx-jquants.com/ja/spec/eq-master/sector17code) を参照）

S17Nmstring

17業種コード名（ [17業種コード及び業種名](https://jpx-jquants.com/ja/spec/eq-master/sector17code) を参照）

S33string

33業種コード（ [33業種コード及び業種名](https://jpx-jquants.com/ja/spec/eq-master/sector33code) を参照）

S33Nmstring

33業種コード名（ [33業種コード及び業種名](https://jpx-jquants.com/ja/spec/eq-master/sector33code) を参照）

ScaleCatstring規模コード

Mktstring

市場区分コード（ [市場区分コード及び市場区分](https://jpx-jquants.com/ja/spec/eq-master/marketcode) を参照）

MktNmstring

市場区分名（ [市場区分コード及び市場区分](https://jpx-jquants.com/ja/spec/eq-master/marketcode) を参照）

Mrgnstring貸借信用区分（1: 信用 / 2: 貸借 / 3: その他）

MrgnNmstring貸借信用区分名

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "Date": "2022-11-11",\
            "Code": "86970",\
            "CoName": "日本取引所グループ",\
            "CoNameEn": "Japan Exchange Group,Inc.",\
            "S17": "16",\
            "S17Nm": "金融（除く銀行）",\
            "S33": "7200",\
            "S33Nm": "その他金融業",\
            "ScaleCat": "TOPIX Large70",\
            "Mkt": "0111",\
            "MktNm": "プライム",\
            "Mrgn": "1",\
            "MrgnNm": "信用"\
        }\
    ]
}
```

CopyCopied!
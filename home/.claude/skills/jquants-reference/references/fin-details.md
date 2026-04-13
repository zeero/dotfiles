[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/fin-details.md) LLM用にコピー

# 財務諸表(BS/PL/CF)(/fins/details)

GET /v2/fins/details

## [APIの概要](https://jpx-jquants.com/ja/spec/fin-details\#API%E3%81%AE%E6%A6%82%E8%A6%81)

上場企業の四半期毎の財務情報における、貸借対照表、損益計算書、キャッシュ・フロー計算書に記載の項目を取得することができます。

## [本APIの留意点](https://jpx-jquants.com/ja/spec/fin-details\#%E6%9C%ACAPI%E3%81%AE%E7%95%99%E6%84%8F%E7%82%B9)

- **FinancialStatement（財務諸表の各種項目）について**  - EDINET XBRLタクソノミ本体（label情報）を用いてコンテンツを作成しています。
  - FinancialStatementに含まれる冗長ラベル（英語）については、下記サイトよりご確認ください。

    [https://disclosure2dl.edinet-fsa.go.jp/guide/static/disclosure/WZEK0110.html](https://disclosure2dl.edinet-fsa.go.jp/guide/static/disclosure/WZEK0110.html)


    年度別に公表されているEDINETタクソノミページに、「勘定科目リスト」（会計基準：日本基準）及び「国際会計基準タクソノミ要素リスト」（会計基準：IFRS） が掲載されています。会計基準別に以下のとおりデータを提供しています。
    - 会計基準が日本基準の場合、「勘定科目リスト」の各シートのE列「冗長ラベル（英語）」をキーとし、その値とセットで提供しています。
    - 会計基準がIFRSの場合、「国際会計基準タクソノミ要素リスト」の各シートのD列「冗長ラベル（英語）」をキーとし、その値とセットで提供しています。
- **提出者別タクソノミについて**  - EDINETタクソノミには存在しない提出者別タクソノミで定義される企業独自の項目は、本APIの提供対象外となります。

- 三井海洋開発（銘柄コード62690）は、2022年2月以降の決算短信の連結財務諸表及び連結財務諸表注記を米ドルにより表示されています。そのため、本サービスの当該銘柄の対象の財務諸表情報についても米ドルでの提供となります。

## [四半期の財務諸表情報を取得することができます](https://jpx-jquants.com/ja/spec/fin-details\#%E5%9B%9B%E5%8D%8A%E6%9C%9F%E3%81%AE%E8%B2%A1%E5%8B%99%E8%AB%B8%E8%A1%A8%E6%83%85%E5%A0%B1%E3%82%92%E5%8F%96%E5%BE%97%E3%81%99%E3%82%8B%E3%81%93%E3%81%A8%E3%81%8C%E3%81%A7%E3%81%8D%E3%81%BE%E3%81%99)

GET`https://api.jquants.com/v2/fins/details`

リクエストパラメータに code（銘柄コード）または date（開示日）を入力する必要があります。

### Requests

### Headers

x-api-keystringrequired

APIキー

### Query Parameters

**code** または **date** のいずれか一つの指定が必須です。

codestringoptional

銘柄コード（e.g. 86970 or 8697）

4桁もしくは5桁の銘柄コード

datestringoptional

開示日付の指定（e.g. 2022-01-05 or 20220105）

pagination\_keystringoptional

検索の先頭を指定する文字列

過去の検索で返却された `pagination_key` を設定

### APIコールサンプルコード

### Request

cURLJavaScriptPython

GET

/v2/fins/details

```
curl -G https://api.jquants.com/v2/fins/details \
-H "x-api-key: {loading}" \
-d code="86970" \
-d date="20230130"
```

Copy

### Responses

### データ項目概要

DiscDatestring開示日

DiscTimestring開示時刻

Codestring銘柄コード（5桁）

DiscNostring

開示番号

APIから出力されるjsonは開示番号で昇順に並んでいます。

DocTypestring

開示書類種別

[開示書類種別一覧](https://jpx-jquants.com/ja/spec/fin-summary/typeofdocument)

FSobject

財務諸表の各種項目

冗長ラベル（英語）をキーとし、その値（財務諸表の値）をバリューとして格納したデータです。

XBRLタグと紐づく冗長ラベル（英語）とその値が収録されます。

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "DiscDate": "2020-04-30",\
            "DiscTime": "12:00:00",\
            "Code": "86970",\
            "DiscNo": "20200429402226",\
            "DocType": "FYFinancialStatements_Consolidated_IFRS",\
            "FS": {\
                "EDINET code, DEI": "E03814",\
                "Security code, DEI": "86970",\
                "Filer name in Japanese, DEI": "株式会社日本取引所グループ",\
                "Filer name in English, DEI": "Japan Exchange Group, Inc.",\
                "Document type, DEI": "通期第３号参考様式　[IFRS]（連結）",\
                "Accounting standards, DEI": "IFRS",\
                "Whether consolidated financial statements are prepared, DEI": "true",\
                "Industry code when consolidated financial statements are prepared in accordance with industry specific regulations, DEI": "CTE",\
                "Industry code when financial statements are prepared in accordance with industry specific regulations, DEI": "CTE",\
                "Current fiscal year start date, DEI": "2019-04-01",\
                "Current period end date, DEI": "2020-03-31",\
                "Type of current period, DEI": "FY",\
                "Current fiscal year end date, DEI": "2020-03-31",\
                "Previous fiscal year start date, DEI": "2018-04-01",\
                "Comparative period end date, DEI": "2019-03-31",\
                "Previous fiscal year end date, DEI": "2019-03-31",\
                "Amendment flag, DEI": "false",\
                "Report amendment flag, DEI": "false",\
                "XBRL amendment flag, DEI": "false",\
                "Cash and cash equivalents (IFRS)": "71883000000",\
                "Trade and other receivables - CA (IFRS)": "16686000000",\
                "Income taxes receivable - CA (IFRS)": "5922000000",\
                "Other financial assets - CA (IFRS)": "117400000000",\
                "Other current assets - CA (IFRS)": "1837000000",\
                "Current assets (IFRS)": "67093263000000",\
                "Property, plant and equipment (IFRS)": "14798000000",\
                "Goodwill (IFRS)": "67374000000",\
                "Intangible assets (IFRS)": "35045000000",\
                "Retirement benefit asset - NCA (IFRS)": "5642000000",\
                "Investments accounted for using equity method (IFRS)": "14703000000",\
                "Other financial assets - NCA (IFRS)": "18156000000",\
                "Other non-current assets - NCA (IFRS)": "6049000000",\
                "Deferred tax assets (IFRS)": "3321000000",\
                "Non-current assets (IFRS)": "193039000000",\
                "Assets (IFRS)": "67286302000000",\
                "Trade and other payables - CL (IFRS)": "6643000000",\
                "Bonds and borrowings - CL (IFRS)": "32500000000",\
                "Income taxes payable - CL (IFRS)": "10289000000",\
                "Other current liabilities - CL (IFRS)": "10062000000",\
                "Current liabilities (IFRS)": "66947278000000",\
                "Bonds and borrowings - NCL (IFRS)": "19953000000",\
                "Retirement benefit liability - NCL (IFRS)": "8866000000",\
                "Other non-current liabilities - NCL (IFRS)": "2162000000",\
                "Deferred tax liabilities (IFRS)": "2665000000",\
                "Non-current liabilities (IFRS)": "33648000000",\
                "Liabilities (IFRS)": "66980926000000",\
                "Share capital (IFRS)": "11500000000",\
                "Capital surplus (IFRS)": "39716000000",\
                "Treasury shares (IFRS)": "-1548000000",\
                "Other components of equity (IFRS)": "5602000000",\
                "Retained earnings (IFRS)": "242958000000",\
                "Equity attributable to owners of parent (IFRS)": "298228000000",\
                "Non-controlling interests (IFRS)": "7146000000",\
                "Equity (IFRS)": "305375000000",\
                "Liabilities and equity (IFRS)": "67286302000000",\
                "Number of submission, DEI": "1",\
                "Profit (loss) before tax from continuing operations (IFRS)": "69095000000.0",\
                "Depreciation and amortization - OpeCF (IFRS)": "16499000000",\
                "Finance income - OpeCF (IFRS)": "-665000000",\
                "Finance costs - OpeCF (IFRS)": "96000000",\
                "Share of loss (profit) of investments accounted for using equity method - OpeCF (IFRS)": "-2457000000",\
                "Decrease (increase) in trade and other receivables - OpeCF (IFRS)": "-5246000000",\
                "Increase (decrease) in trade and other payables - OpeCF (IFRS)": "420000000",\
                "Decrease (increase) in retirement benefit asset - OpeCF (IFRS)": "230000000",\
                "Increase (decrease) in retirement benefit liability - OpeCF (IFRS)": "12000000",\
                "Other, Changes in working capital - OpeCF (IFRS)": "-424000000",\
                "Subtotal - OpeCF (IFRS)": "77560000000",\
                "Interest and dividends received - OpeCF (IFRS)": "899000000",\
                "Interest paid - OpeCF (IFRS)": "-96000000",\
                "Income taxes refund (paid) - OpeCF (IFRS)": "-21482000000",\
                "Net cash provided by (used in) operating activities (IFRS)": "56881000000",\
                "Payments into time deposits - InvCF (IFRS)": "-117400000000",\
                "Proceeds from withdrawal of time deposits - InvCF (IFRS)": "113100000000",\
                "Purchase of property, plant and equipment - InvCF (IFRS)": "-1199000000",\
                "Purchase of intangible assets - InvCF (IFRS)": "-12379000000",\
                "Proceeds from sale of investment securities - InvCF (IFRS)": "11585000000",\
                "Payments for acquisition of subsidiaries - InvCF (IFRS)": "-3165000000",\
                "Other - InvCF (IFRS)": "23000000",\
                "Net cash provided by (used in) investing activities (IFRS)": "-9434000000",\
                "Repayments of lease liabilities - FinCF (IFRS)": "-3125000000",\
                "Dividends paid - FinCF (IFRS)": "-35935000000",\
                "Purchase of treasury shares - FinCF (IFRS)": "-350000000",\
                "Net cash provided by (used in) financing activities (IFRS)": "-39411000000",\
                "Net increase (decrease) in cash and cash equivalents before effect of exchange rate changes (IFRS)": "8035000000",\
                "Effect of exchange rate changes on cash and cash equivalents (IFRS)": "-43000000",\
                "Other income (IFRS)": "975000000.0",\
                "Revenue - 2 (IFRS)": "124663000000.0",\
                "Operating expenses (IFRS)": "58532000000.0",\
                "Other expenses (IFRS)": "54000000.0",\
                "Share of profit (loss) of investments accounted for using equity method (IFRS)": "2457000000.0",\
                "Operating profit (loss) (IFRS)": "68533000000.0",\
                "Finance income (IFRS)": "665000000.0",\
                "Finance costs (IFRS)": "103000000.0",\
                "Income tax expense (IFRS)": "20781000000.0",\
                "Profit (loss) (IFRS)": "48314000000.0",\
                "Profit (loss) attributable to owners of parent (IFRS)": "47609000000.0",\
                "Profit (loss) attributable to non-controlling interests (IFRS)": "705000000.0",\
                "Basic earnings (loss) per share (IFRS)": "88.91"\
            }\
        }\
    ],
    "pagination_key": "value1.value2."
}
```

CopyCopied!
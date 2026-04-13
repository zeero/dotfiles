[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/data-spec.md) LLM用にコピー

# 契約ごとに利用可能なAPIとデータ格納期間

## [プラン別API利用可否・データ格納期間](https://jpx-jquants.com/ja/spec/data-spec\#%E3%83%97%E3%83%A9%E3%83%B3%E5%88%A5API%E5%88%A9%E7%94%A8%E5%8F%AF%E5%90%A6%E3%83%BB%E3%83%87%E3%83%BC%E3%82%BF%E6%A0%BC%E7%B4%8D%E6%9C%9F%E9%96%93)

| 取得データ | 取得方法 | Free | Light | Standard | Premium | データ格納期間 |
| --- | --- | --- | --- | --- | --- | --- |
| 上場銘柄一覧 | [API](https://jpx-jquants.com/spec/eq-master) / [CSV](https://jpx-jquants.com/dashboard/downloads/exchange-master?filter=equities/master)\* | 12週間前〜<br>2年12週間前まで | 5年前まで | 10年前まで | 20年前まで | 2008/5/7〜 |
| 株価四本値 | [API](https://jpx-jquants.com/spec/eq-bars-daily) / [CSV](https://jpx-jquants.com/dashboard/downloads/price-data/stocks?filter=equities/bars/daily)\* | 12週間前〜<br>2年12週間前まで | 5年前まで | 10年前まで | 20年前まで | 2008/5/7〜 |
| 財務情報 | [API](https://jpx-jquants.com/spec/fin-summary) / [CSV](https://jpx-jquants.com/dashboard/downloads/company-data/financial-statements?filter=fins/summary)\* | 12週間前〜<br>2年12週間前まで | 5年前まで | 10年前まで | 20年前まで | 2008/7/7〜 |
| 決算発表予定日 | [API](https://jpx-jquants.com/spec/eq-earnings-cal) | 取得可能 | 取得可能 | 取得可能 | 取得可能 | 直近データのみ |
| 取引カレンダー | [API](https://jpx-jquants.com/spec/mkt-cal) / [CSV](https://jpx-jquants.com/dashboard/downloads/exchange-master?filter=markets/calendar) | 12週間前〜<br>2年12週間前まで | 翌年末〜5年前まで | 翌年末〜10年前まで | 翌年末〜20年前まで | 翌年末〜2008/1/1 |
| 投資部門別情報 | [API](https://jpx-jquants.com/spec/eq-investor-types) / [CSV](https://jpx-jquants.com/dashboard/downloads/reference-data?filter=equities/investor-types) | - | 5年前まで | 10年前まで | 20年前まで | 2008/1/16〜 |
| TOPIX四本値 | [API](https://jpx-jquants.com/spec/idx-bars-daily-topix) / [CSV](https://jpx-jquants.com/dashboard/downloads/price-data/indices?filter=indices/bars/daily/topix) | - | 5年前まで | 10年前まで | 20年前まで | 2008/5/7〜 |
| 指数四本値 | [API](https://jpx-jquants.com/spec/idx-bars-daily) / [CSV](https://jpx-jquants.com/dashboard/downloads/price-data/indices?filter=indices/bars/daily) | - | - | 10年前まで | 20年前まで | 2008/5/7〜 |
| 日経225オプション四本値 | [API](https://jpx-jquants.com/spec/drv-bars-daily-opt-225) / [CSV](https://jpx-jquants.com/dashboard/downloads/price-data/options?filter=derivatives/bars/daily/options/225) | - | - | 10年前まで | 20年前まで | 2008/5/7〜 |
| 先物四本値 | [API](https://jpx-jquants.com/spec/drv-bars-daily-fut) / [CSV](https://jpx-jquants.com/dashboard/downloads/price-data/futures) | - | - | - | 20年前まで | 2008/5/7〜 |
| オプション四本値 | [API](https://jpx-jquants.com/spec/drv-bars-daily-opt) / [CSV](https://jpx-jquants.com/dashboard/downloads/price-data/options?filter=derivatives/bars/daily/options) | - | - | - | 20年前まで | 2008/5/7〜 |
| 信用取引週末残高 | [API](https://jpx-jquants.com/spec/mkt-margin-int) / [CSV](https://jpx-jquants.com/dashboard/downloads/reference-data?filter=markets/margin-interest) | - | - | 10年前まで | 20年前まで | 2012/2/10〜 |
| 業種別空売り比率 | [API](https://jpx-jquants.com/spec/mkt-short-ratio) / [CSV](https://jpx-jquants.com/dashboard/downloads/reference-data?filter=markets/short-ratio) | - | - | 10年前まで | 20年前まで | 2008/11/5〜 |
| 空売り残高報告 | [API](https://jpx-jquants.com/spec/mkt-short-sale) / [CSV](https://jpx-jquants.com/dashboard/downloads/reference-data?filter=markets/short-sale-report) | - | - | 10年前まで | 20年前まで | 2013/11/7〜 |
| 日々公表信用取引残高 | [API](https://jpx-jquants.com/spec/mkt-margin-alert) / [CSV](https://jpx-jquants.com/dashboard/downloads/reference-data?filter=markets/margin-alert) | - | - | 10年前まで | 20年前まで | 2008/5/8〜 |
| 売買内訳データ | [API](https://jpx-jquants.com/spec/mkt-breakdown) / [CSV](https://jpx-jquants.com/dashboard/downloads/reference-data?filter=markets/breakdown) | - | - | - | 20年前まで | 2015/4/1〜 |
| 前場四本値 | [API](https://jpx-jquants.com/spec/eq-bars-daily-am) | - | - | - | 取得可能 | 直近データのみ |
| 配当金情報 | [API](https://jpx-jquants.com/spec/fin-dividend) / [CSV](https://jpx-jquants.com/dashboard/downloads/company-data/dividends) | - | - | - | 20年前まで | 2013/2/20〜 |
| 財務諸表(BS/PL/CF) | [API](https://jpx-jquants.com/spec/fin-details) / [CSV](https://jpx-jquants.com/dashboard/downloads/company-data/financial-statements?filter=fins/details) | - | - | - | 20年前まで | 2009/1/13〜 |

\\* FreeプランではCSV形式でのデータ取得はできません（取引カレンダーを除く）。APIでのみ取得可能です。（有料プランの方はCSV形式での取得も可能です。）

### データ期間

![各プランごとの取得可能なデータ期間のイメージ図](https://jpx-jquants.com/plan-limit-period.svg)

## [アドオン別API利用可否・データ格納期間](https://jpx-jquants.com/ja/spec/data-spec\#%E3%82%A2%E3%83%89%E3%82%AA%E3%83%B3%E5%88%A5API%E5%88%A9%E7%94%A8%E5%8F%AF%E5%90%A6%E3%83%BB%E3%83%87%E3%83%BC%E3%82%BF%E6%A0%BC%E7%B4%8D%E6%9C%9F%E9%96%93)

| アドオン | 取得データ | 取得方法 | データ格納期間 |
| --- | --- | --- | --- |
| 株価 分足・ティック | 株価分足 | [API](https://jpx-jquants.com/spec/eq-bars-minute) / [CSV](https://jpx-jquants.com/dashboard/downloads/price-data/stocks?filter=equities/bars/minute) | 2年前まで |
| 株価ティック | [CSV](https://jpx-jquants.com/dashboard/downloads/price-data/stocks?filter=equities/trades) | 2年前まで |
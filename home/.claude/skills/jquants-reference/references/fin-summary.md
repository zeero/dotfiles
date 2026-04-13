[language-markdown-outlineMarkdownを表示](https://jpx-jquants.com/ja/spec/fin-summary.md) LLM用にコピー

# 財務情報(/fins/summary)

GET /v2/fins/summary

## [APIの概要](https://jpx-jquants.com/ja/spec/fin-summary\#API%E3%81%AE%E6%A6%82%E8%A6%81)

財務情報の開示日・銘柄コードを指定して、決算短信などの財務情報サマリーを取得できます。

銘柄コード（code）または日付（date）のいずれか一方、もしくは両方の指定が必要です。

## [本APIの留意点](https://jpx-jquants.com/ja/spec/fin-summary\#%E6%9C%ACAPI%E3%81%AE%E7%95%99%E6%84%8F%E7%82%B9)

- **会計基準について：** APIから出力される各項目名は日本基準（JGAAP）の開示項目が基準となっています。そのため、IFRSや米国基準（USGAAP）の開示データにおいては、経常利益の概念がありませんので、データが空欄となっています。

- **四半期開示見直し対応に伴うAPI項目の追加について：**
  - 四半期開示見直し対応において、決算短信サマリー様式の記載事項が以下のとおり変更されます。
    - **変更前：** 重要な⼦会社の異動（連結範囲の変更を伴う特定⼦会社の異動）
    - **変更後：** 連結範囲の重要な変更
  - この対応に伴い、2024/7/22より本APIのレスポンス項目に"SignificantChangesInTheScopeOfConsolidation"（期中における連結範囲の重要な変更）を追加いたします。
  - 詳細は、データ項目概要欄をご覧ください。

## [財務情報データを取得します](https://jpx-jquants.com/ja/spec/fin-summary\#%E8%B2%A1%E5%8B%99%E6%83%85%E5%A0%B1%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E5%8F%96%E5%BE%97%E3%81%97%E3%81%BE%E3%81%99)

GET`https://api.jquants.com/v2/fins/summary`

銘柄コード（code）または日付（date）の指定が必須となります。

### パラメータ及びレスポンス

銘柄コード（code）または日付（date）の指定が必須となります。

各パラメータの組み合わせとレスポンスの結果については以下のとおりです。

| code | date | レスポンスの結果 |
| --- | --- | --- |
|  |  | 指定された銘柄について全期間分の財務情報データ |
|  |  | 指定された銘柄について指定された日付の財務情報データ |
|  |  | 全上場銘柄について指定された日付の財務情報データ |

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

/v2/fins/summary

```
curl -G https://api.jquants.com/v2/fins/summary \
-H "x-api-key: {loading}" \
-d code="86970" \
-d date="2024-10-25"
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

CurPerTypestring

当会計期間の種類

\[1Q, 2Q, 3Q, 4Q, 5Q, FY\]

CurPerStstring当会計期間開始日

CurPerEnstring当会計期間終了日

CurFYStstring当事業年度開始日

CurFYEnstring当事業年度終了日

NxtFYStstring

翌事業年度開始日

開示レコードに翌事業年度の開示情報がない場合空欄になります。

NxtFYEnstring

翌事業年度終了日

開示レコードに翌事業年度の開示情報がない場合空欄になります。

Salesnumber売上高

OPnumber営業利益

OdPnumber経常利益

NPnumber当期純利益

EPSnumber一株あたり当期純利益

DEPSnumber潜在株式調整後一株あたり当期純利益

TAnumber総資産

Eqnumber純資産

EqARnumber自己資本比率

BPSnumber一株あたり純資産

CFOnumber営業活動によるキャッシュ・フロー

CFInumber投資活動によるキャッシュ・フロー

CFFnumber財務活動によるキャッシュ・フロー

CashEqnumber現金及び現金同等物期末残高

Div1Qnumber一株あたり配当実績\_第1四半期末

Div2Qnumber一株あたり配当実績\_第2四半期末

Div3Qnumber一株あたり配当実績\_第3四半期末

DivFYnumber一株あたり配当実績\_期末

DivAnnnumber一株あたり配当実績\_合計

DivUnitnumber1口当たり分配金

DivTotalAnnnumber配当金総額

PayoutRatioAnnnumber配当性向

FDiv1Qnumber一株あたり配当予想\_第1四半期末

FDiv2Qnumber一株あたり配当予想\_第2四半期末

FDiv3Qnumber一株あたり配当予想\_第3四半期末

FDivFYnumber一株あたり配当予想\_期末

FDivAnnnumber一株あたり配当予想\_合計

FDivUnitnumber1口当たり予想分配金

FDivTotalAnnnumber予想配当金総額

FPayoutRatioAnnnumber予想配当性向

NxFDiv1Qnumber一株あたり配当予想\_翌事業年度第1四半期末

NxFDiv2Qnumber一株あたり配当予想\_翌事業年度第2四半期末

NxFDiv3Qnumber一株あたり配当予想\_翌事業年度第3四半期末

NxFDivFYnumber一株あたり配当予想\_翌事業年度期末

NxFDivAnnnumber一株あたり配当予想\_翌事業年度合計

NxFDivUnitnumber1口当たり翌事業年度予想分配金

NxFPayoutRatioAnnnumber翌事業年度予想配当性向

FSales2Qnumber売上高\_予想\_第2四半期末

FOP2Qnumber営業利益\_予想\_第2四半期末

FOdP2Qnumber経常利益\_予想\_第2四半期末

FNP2Qnumber当期純利益\_予想\_第2四半期末

FEPS2Qnumber一株あたり当期純利益\_予想\_第2四半期末

NxFSales2Qnumber

売上高\_予想\_翌事業年度第2四半期末

NxFOP2Qnumber

営業利益\_予想\_翌事業年度第2四半期末

NxFOdP2Qnumber

経常利益\_予想\_翌事業年度第2四半期末

NxFNp2Qnumber

当期純利益\_予想\_翌事業年度第2四半期末

NxFEPS2Qnumber

一株あたり当期純利益\_予想\_翌事業年度第2四半期末

FSalesnumber売上高\_予想\_期末

FOPnumber営業利益\_予想\_期末

FOdPnumber経常利益\_予想\_期末

FNPnumber当期純利益\_予想\_期末

FEPSnumber一株あたり当期純利益\_予想\_期末

NxFSalesnumber売上高\_予想\_翌事業年度期末

NxFOPnumber営業利益\_予想\_翌事業年度期末

NxFOdPnumber経常利益\_予想\_翌事業年度期末

NxFNpnumber当期純利益\_予想\_翌事業年度期末

NxFEPSnumber

一株あたり当期純利益\_予想\_翌事業年度期末

MatChgSubstring期中における重要な子会社の異動

SigChgInCstring

期中における連結範囲の重要な変更

\*指定されたdateが2024-07-21以前のレスポンスは、当該項目には値が収録されません。

ChgByASRevstring

会計基準等の改正に伴う会計方針の変更

ChgNoASRevstring

会計基準等の改正に伴う変更以外の会計方針の変更

ChgAcEststring会計上の見積りの変更

RetroRststring修正再表示

ShOutFYnumber期末発行済株式数

TrShFYnumber期末自己株式数

AvgShnumber期中平均株式数

NCSalesnumber売上高\_非連結

NCOPnumber営業利益\_非連結

NCOdPnumber経常利益\_非連結

NCNPnumber当期純利益\_非連結

NCEPSnumber一株あたり当期純利益\_非連結

NCTAnumber総資産\_非連結

NCEqnumber純資産\_非連結

NCEqARnumber自己資本比率\_非連結

NCBPSnumber一株あたり純資産\_非連結

FNCSales2Qnumber

売上高\_予想\_第2四半期末\_非連結

FNCOP2Qnumber

営業利益\_予想\_第2四半期末\_非連結

FNCOdP2Qnumber

経常利益\_予想\_第2四半期末\_非連結

FNCNP2Qnumber

当期純利益\_予想\_第2四半期末\_非連結

FNCEPS2Qnumber

一株あたり当期純利益\_予想\_第2四半期末\_非連結

NxFNCSales2Qnumber

売上高\_予想\_翌事業年度第2四半期末\_非連結

NxFNCOP2Qnumber

営業利益\_予想\_翌事業年度第2四半期末\_非連結

NxFNCOdP2Qnumber

経常利益\_予想\_翌事業年度第2四半期末\_非連結

NxFNCNP2Qnumber

当期純利益\_予想\_翌事業年度第2四半期末\_非連結

NxFNCEPS2Qnumber

一株あたり当期純利益\_予想\_翌事業年度第2四半期末\_非連結

FNCSalesnumber売上高\_予想\_期末\_非連結

FNCOPnumber営業利益\_予想\_期末\_非連結

FNCOdPnumber経常利益\_予想\_期末\_非連結

FNCNPnumber当期純利益\_予想\_期末\_非連結

FNCEPSnumber

一株あたり当期純利益\_予想\_期末\_非連結

NxFNCSalesnumber

売上高\_予想\_翌事業年度期末\_非連結

NxFNCOPnumber

営業利益\_予想\_翌事業年度期末\_非連結

NxFNCOdPnumber

経常利益\_予想\_翌事業年度期末\_非連結

NxFNCNPnumber

当期純利益\_予想\_翌事業年度期末\_非連結

NxFNCEPSnumber

一株あたり当期純利益\_予想\_翌事業年度期末\_非連結

### レスポンスサンプル

```bash
{
    "data": [\
        {\
            "DiscDate": "2023-01-30",\
            "DiscTime": "12:00:00",\
            "Code": "86970",\
            "DiscNo": "20230127594871",\
            "DocType": "3QFinancialStatements_Consolidated_IFRS",\
            "CurPerType": "3Q",\
            "CurPerSt": "2022-04-01",\
            "CurPerEn": "2022-12-31",\
            "CurFYSt": "2022-04-01",\
            "CurFYEn": "2023-03-31",\
            "NxtFYSt": "",\
            "NxtFYEn": "",\
            "Sales": "100529000000",\
            "OP": "51765000000",\
            "OdP": "",\
            "NP": "35175000000",\
            "EPS": "66.76",\
            "DEPS": "",\
            "TA": "79205861000000",\
            "Eq": "320021000000",\
            "EqAR": "0.004",\
            "BPS": "",\
            "CFO": "",\
            "CFI": "",\
            "CFF": "",\
            "CashEq": "91135000000",\
            "Div1Q": "",\
            "Div2Q": "26.0",\
            "Div3Q": "",\
            "DivFY": "",\
            "DivAnn": "",\
            "DivUnit": "",\
            "DivTotalAnn": "",\
            "PayoutRatioAnn": "",\
            "FDiv1Q": "",\
            "FDiv2Q": "",\
            "FDiv3Q": "",\
            "FDivFY": "36.0",\
            "FDivAnn": "62.0",\
            "FDivUnit": "",\
            "FDivTotalAnn": "",\
            "FPayoutRatioAnn": "",\
            "NxFDiv1Q": "",\
            "NxFDiv2Q": "",\
            "NxFDiv3Q": "",\
            "NxFDivFY": "",\
            "NxFDivAnn": "",\
            "NxFDivUnit": "",\
            "NxFPayoutRatioAnn": "",\
            "FSales2Q": "",\
            "FOP2Q": "",\
            "FOdP2Q": "",\
            "FNP2Q": "",\
            "FEPS2Q": "",\
            "NxFSales2Q": "",\
            "NxFOP2Q": "",\
            "NxFOdP2Q": "",\
            "NxFNp2Q": "",\
            "NxFEPS2Q": "",\
            "FSales": "132500000000",\
            "FOP": "65500000000",\
            "FOdP": "",\
            "FNP": "45000000000",\
            "FEPS": "85.42",\
            "NxFSales": "",\
            "NxFOP": "",\
            "NxFOdP": "",\
            "NxFNp": "",\
            "NxFEPS": "",\
            "MatChgSub": "false",\
            "SigChgInC": "",\
            "ChgByASRev": "false",\
            "ChgNoASRev": "false",\
            "ChgAcEst": "true",\
            "RetroRst": "",\
            "ShOutFY": "528578441",\
            "TrShFY": "1861043",\
            "AvgSh": "526874759",\
            "NCSales": "",\
            "NCOP": "",\
            "NCOdP": "",\
            "NCNP": "",\
            "NCEPS": "",\
            "NCTA": "",\
            "NCEq": "",\
            "NCEqAR": "",\
            "NCBPS": "",\
            "FNCSales2Q": "",\
            "FNCOP2Q": "",\
            "FNCOdP2Q": "",\
            "FNCNP2Q": "",\
            "FNCEPS2Q": "",\
            "NxFNCSales2Q": "",\
            "NxFNCOP2Q": "",\
            "NxFNCOdP2Q": "",\
            "NxFNCNP2Q": "",\
            "NxFNCEPS2Q": "",\
            "FNCSales": "",\
            "FNCOP": "",\
            "FNCOdP": "",\
            "FNCNP": "",\
            "FNCEPS": "",\
            "NxFNCSales": "",\
            "NxFNCOP": "",\
            "NxFNCOdP": "",\
            "NxFNCNP": "",\
            "NxFNCEPS": ""\
        }\
    ],
    "pagination_key": "value1.value2."
}
```

CopyCopied!
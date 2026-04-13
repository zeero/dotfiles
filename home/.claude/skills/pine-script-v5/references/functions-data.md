### chart.point.copy()

指定した `id` で、 [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクトのコピーを作成します。

構文

```
chart.point.copy(id) → chart.point
```

引数

id (chart.point) [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクト。

### chart.point.from\_index()

x 座標として `index`、y 座標として `price` を伴う　[chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクトを返します。

構文

```
chart.point.from_index(index, price) → chart.point
```

引数

index (series int) ポイントの x 座標、バーインデックスの値として示されます。

price (series int/float) ポイントの y 座標。

備考

この関数から返される [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) インスタンスの `time` フィールドの値は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) であり、`xloc.bar_time` に設定された `xloc` 値を伴うオブジェクトが描画されることになります。

### chart.point.from\_time()

x 座標として `time`、y 座標として `price` を伴う　[chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクトを返します。

構文

```
chart.point.from_time(time, price) → chart.point
```

引数

time (series int) ポイントの x 座標、ミリ秒単位におけるUNIX時間の値として示されます。

price (series int/float) ポイントの y 座標。

備考

この関数から返される [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) インスタンスの `index` フィールドの値は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) であり、`xloc.bar_index` に設定された `xloc` 値を伴うオブジェクトが描画されることになります。

### chart.point.new()

指定された `time`、`index`、`price` とともに新しい [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクトを作成します。

構文

```
chart.point.new(time, index, price) → chart.point
```

引数

time (series int) ポイントの x 座標、ミリ秒単位におけるUNIX時間の値として示されます。

index (series int) ポイントの x 座標、バーインデックスの値として示されます。

price (series int/float) ポイントの y 座標。

備考

描画オブジェクトが x 座標として使用するポイントとして、`time` フィールドと `index` フィールドのどちらを用いるかは、描画を返す関数呼び出しで使用された `xloc` 型に依存します。

この関数は、`time` と `index` の値が同一のバーを参照しているかどうかについて検証を行わないことに注意するのが重要です。

こちらもご覧ください

[polyline.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_polyline.new)

### chart.point.now()

y 座標として `price` を伴う [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクトを返します。

構文

```
chart.point.now(price) → chart.point
```

引数

price (series int/float) ポイントの y 座標。オプションです。デフォルトは [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) です。

備考

この関数から返される [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) インスタンスは、その`index` と実行対象のバー上の `time` フィールドに値を記録します。`xloc` タイプであれば、どの描画オブジェクトにも使用可能です。

### request.currency\_rate()

引数 `from` の通貨を引数 `to` の通貨へと変換する際に使用されるレートの値を与えます。

構文

```
request.currency_rate(from, to, ignore_invalid_currency) → series float
```

引数

from (series string) 変換前の値を表している通貨です。可能な値は、 [ISO4217形式の通貨コード](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) での3文字の文字列（例．"USD"）、または、 [syminfo.currency](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.currency) や [currency.USD](https://jp.tradingview.com/pine-script-reference/v5/#const_currency.USD) といった通貨コードを返すビルトイン変数の一つです。

to (series string) 変換後の値となる通貨です。可能な値は、 [ISO4217形式の通貨コード](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) での3文字の文字列（例．"USD"）、または、 [syminfo.currency](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.currency) や [currency.USD](https://jp.tradingview.com/pine-script-reference/v5/#const_currency.USD) といった通貨コードを返すビルトイン変数の一つです。

ignore\_invalid\_currency (series bool) 2つの通貨間で変換レートを計算できない場合の関数の動作を指定します。 [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合、スクリプトは停止し、ランタイムエラーを返します。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、関数は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返し、実行は継続されます。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("Close in British Pounds")
rate = request.currency_rate(syminfo.currency, "GBP")
plot(close * rate)
```

備考

`from` と `to` の引数が等しければ、この関数は1を返します。この変数/関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性があることにご注意ください。

### request.dividends()

指定したシンボルの配当データをリクエストします。

構文

```
request.dividends(ticker, field, gaps, lookahead, ignore_invalid_symbol, currency) → series float
```

引数

ticker (series string) シンボル。シンボルはプレフィックス付きで渡す必要があることにご注意ください。例．"AAPL" の代わりに "NASDAQ:AAPL"。 [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) を使うとエラーになります。代わりに [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) を使用してください。

field (series string) 入力文字列。利用できる値は [dividends.net](https://jp.tradingview.com/pine-script-reference/v5/#const_dividends.net)、 [dividends.gross](https://jp.tradingview.com/pine-script-reference/v5/#const_dividends.gross) です。デフォルトは [dividends.gross](https://jp.tradingview.com/pine-script-reference/v5/#const_dividends.gross) です。

gaps (simple barmerge\_gaps) リクエストされたデータのマージ方法（要求されたデータは自動的にメイン系列のOHLCデータとマージされます）。可能な値は [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on)、 [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) です。 [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on) \- リクエストされたデータは、ギャップ ( [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) 値) ありでマージされます。 [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) -リクエストされたデータは、ギャップなしで連続してマージされ、すべてのギャップは以前の最も近い既存の値で埋められます。デフォルト値は [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) です。

lookahead (simple barmerge\_lookahead) リクエストされたデータ位置のマージ方法。可能な値は [barmerge.lookahead\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_on)、 [barmerge.lookahead\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_off) です。デフォルト値はバージョン3から [barmerge.lookahead\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_off) です。2つのパラメーターの動作はリアルタイム時には同じで、過去データでのみ異なる点にご注意下さい。

ignore\_invalid\_symbol (input bool) オプションのパラメーター。指定したシンボルが見つからなかった場合の関数の動作を決定します: false の場合、スクリプトは停止し、ランタイムエラーを返します。true の場合、関数は na を返し、実行は継続されます。デフォルトは false です。

currency (series string) シンボルの通貨での配当値（例． [dividends.gross](https://jp.tradingview.com/pine-script-reference/v5/#const_dividends.gross)）を変換する通貨。使用される変換レートは、（計算が行われるバーを基準とした）前日のFX\_IDCペアの日足のレートに基づきます。オプション引数で、デフォルトは [syminfo.currency](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.currency) です。可能な値は、 [ISO4217形式の通貨コード](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) での3文字の文字列（例．"USD"）、または currency.\* 名前空間の定数 (例． [currency.USD](https://jp.tradingview.com/pine-script-reference/v5/#const_currency.USD)）です。

例

```
//@version=5
indicator("request.dividends")
s1 = request.dividends("NASDAQ:BELFA")
plot(s1)
s2 = request.dividends("NASDAQ:BELFA", dividends.net, gaps=barmerge.gaps_on, lookahead=barmerge.lookahead_on)
plot(s2)
```

リターン

リクエストされた系列、または指定したシンボルの配当データが無い場合には n/a。

こちらもご覧ください

[request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings) [request.splits](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.splits) [request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid)

### request.earnings()

指定したシンボルの収益データをリクエストします。

構文

```
request.earnings(ticker, field, gaps, lookahead, ignore_invalid_symbol, currency) → series float
```

引数

ticker (series string) シンボル。シンボルはプレフィックス付きで渡す必要があることにご注意ください。例．"AAPL" の代わりに "NASDAQ:AAPL"。 [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) を使うとエラーになります。代わりに [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) を使用してください。

field (series string) 入力文字列。利用できる値は: [earnings.actual](https://jp.tradingview.com/pine-script-reference/v5/#const_earnings.actual)、 [earnings.estimate](https://jp.tradingview.com/pine-script-reference/v5/#const_earnings.estimate)、 [earnings.standardized](https://jp.tradingview.com/pine-script-reference/v5/#const_earnings.standardized) です。デフォルトは [earnings.actual](https://jp.tradingview.com/pine-script-reference/v5/#const_earnings.actual) です。

gaps (simple barmerge\_gaps) リクエストされたデータのマージ方法（要求されたデータは自動的にメイン系列のOHLCデータとマージされます）。可能な値は [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on)、 [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) です。 [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on) \- リクエストされたデータは、ギャップ ( [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) 値) ありでマージされます。 [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) -リクエストされたデータは、ギャップなしで連続してマージされ、すべてのギャップは以前の最も近い既存の値で埋められます。デフォルト値は [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) です。

lookahead (simple barmerge\_lookahead) リクエストされたデータ位置のマージ方法。可能な値は [barmerge.lookahead\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_on)、 [barmerge.lookahead\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_off) です。デフォルト値はバージョン3から [barmerge.lookahead\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_off) です。2つのパラメーターの動作はリアルタイム時には同じで、過去データでのみ異なる点にご注意下さい。

ignore\_invalid\_symbol (input bool) オプションのパラメーター。指定したシンボルが見つからなかった場合の関数の動作を決定します: false の場合、スクリプトは停止し、ランタイムエラーを返します。true の場合、関数は na を返し、実行は継続されます。デフォルトは false です。

currency (series string) シンボルの通貨での決算値（例． [earnings.actual](https://jp.tradingview.com/pine-script-reference/v5/#const_earnings.actual)）を変換する通貨。使用される変換レートは、（計算が行われるバーを基準とした）前日のFX\_IDCペアの日足のレートに基づきます。オプション引数で、デフォルトは [syminfo.currency](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.currency) です。可能な値は、 [ISO4217形式の通貨コード](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) での3文字の文字列（例．"USD"）、または currency.\* 名前空間の定数 (例． [currency.USD](https://jp.tradingview.com/pine-script-reference/v5/#const_currency.USD)）です。

例

```
//@version=5
indicator("request.earnings")
s1 = request.earnings("NASDAQ:BELFA")
plot(s1)
s2 = request.earnings("NASDAQ:BELFA", earnings.actual, gaps=barmerge.gaps_on, lookahead=barmerge.lookahead_on)
plot(s2)
```

リターン

リクエストされた系列、または指定したシンボルの収益データが無い場合には n/a。

こちらもご覧ください

[request.dividends](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.dividends) [request.splits](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.splits) [request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid)

### request.economic()

シンボルの経済データをリクエストします。経済データには、国の経済状態 (GDPやインフレ率など) や特定の産業 (鉄鋼生産量やICUベッド数など) の情報が含まれます。

構文

```
request.economic(country_code, field, gaps, ignore_invalid_symbol) → series float
```

引数

country\_code (series string) 経済データをリクエストする国 (例: "US") または地域 (例: "EU") のコードです。 [ヘルプセンターの記事](https://www.tradingview.com/chart/?solution=43000665359) に、国とコードの一覧があります。国ごとにどの情報が利用できるかは、指標によって異なります。 [各指標のヘルプセンターの記事](https://www.tradingview.com/support/folders/43000581956-list-of-available-economic-indicators/) に、どの指標がどの国で利用できるかの情報があります。

field (series string) リクエストする経済指標のコード (例: "GDP")。 [ヘルプセンターの記事](https://www.tradingview.com/chart/?solution=43000665359) に指標とコードの一覧があります。

gaps (simple barmerge\_gaps) 返された値がチャートのバーにどのようにマージされるかを指定します。可能な値は [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off), [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on) です。 [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on) では、関数の中で値が最初に利用可能になった時にのみ、値が現在のチャートのバーに現れ、そうでなければ、 [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) が返されます（したがって「ギャップ」が生じます）。 [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) では、 [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) 値を避け、ギャップとなる部分は、返された最新の既存の値で埋められます。オプションの引数。デフォルトは [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) です。

ignore\_invalid\_symbol (input bool) 指定したシンボルが見つからない場合の関数の動作を決定します: [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合、スクリプトは停止してランタイムエラーを返します。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、 [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返して実行は継続されます。オプションの引数でデフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("US GDP")
e = request.economic("US", "GDP")
plot(e)
```

リターン

リクエストされた系列。

備考

経済データも通常のシンボルと同様にチャートからアクセスすることができます。取引所名に "ECONOMIC"、ティッカーに `{country_code}{field}` を指定してください。例えば米国のGDPデータは "ECONOMIC:USGDP" となります。

こちらもご覧ください

[request.financial](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.financial) [request.quandl](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.quandl)

### request.financial()

シンボルの財務系列をリクエストします。

構文

```
request.financial(symbol, financial_id, period, gaps, ignore_invalid_symbol, currency) → series float
```

引数

symbol (series string) シンボル。シンボルはプレフィックス付きで (例: "AAPL" ではなく "NASDAQ:AAPL" として) 渡す必要があります。

financial\_id (series string) 財務識別子。利用可能なIDの一覧は [ヘルプセンター](https://www.tradingview.com/?solution=43000564727) で確認できます。

period (series string) 決算発表の期間。可能な値は "TTM", "FY", "FQ", "FH", "D" です。

gaps (simple barmerge\_gaps) リクエストされたデータのマージ方法（要求されたデータは自動的にメイン系列 (OHLCデータ) とマージされます）。可能な値は [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on)、 [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) です。 [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on) \- リクエストされたデータはギャップ ( [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) 値) ありでマージされます。 [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) \- リクエストされたデータはギャップなしで連続してマージされ、すべてのギャップは以前の最も近い既存の値で埋められます。デフォルト値は [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) です。

ignore\_invalid\_symbol (input bool) オプションのパラメーター。指定したシンボルが見つからなかった場合の関数の動作を決定します: false の場合、スクリプトは停止し、ランタイムエラーを返します。true の場合、関数は na を返し、実行は継続されます。デフォルトは false です。

currency (series string) シンボルの財務指標（純利益など）を変換する通貨。使用される変換レートは、（計算が行われるバーを基準とした）前日のFX\_IDCペアの日足のレートに基づきます。オプション引数で、デフォルトは [syminfo.currency](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.currency) です。可能な値は、 [ISO4217形式の通貨コード](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) での3文字の文字列（例．"USD"）、または currency.\* 名前空間の定数 (例． [currency.USD](https://jp.tradingview.com/pine-script-reference/v5/#const_currency.USD)）です。

例

```
//@version=5
indicator("request.financial")
f = request.financial("NASDAQ:MSFT", "ACCOUNTS_PAYABLE", "FY")
plot(f)
```

リターン

リクエストされた系列。

こちらもご覧ください

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid)

### request.quandl()

[Nasdaq Data Link](https://data.nasdaq.com/) (旧Quandl) のシンボルのデータをリクエストします。

構文

```
request.quandl(ticker, gaps, index, ignore_invalid_symbol) → series float
```

引数

ticker (series string) シンボル。時系列とQuandlのデータフィードの名称は、スラッシュで区切る必要があります。例: "CFTC/SB\_FO\_ALL"。

gaps (simple barmerge\_gaps) リクエストされたデータのマージ方法（要求されたデータは自動的にメイン系列 (OHLCデータ) とマージされます）。可能な値は [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on)、 [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) です。 [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on) \- リクエストされたデータはギャップ ( [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) 値) ありでマージされます。 [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) \- リクエストされたデータはギャップなしで連続してマージされ、すべてのギャップは以前の最も近い既存の値で埋められます。デフォルト値は [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) です。

index (series int) Quandlの時系列カラムのインデックス。

ignore\_invalid\_symbol (input bool) オプションのパラメーター。指定したシンボルが見つからなかった場合の関数の動作を決定します: false の場合、スクリプトは停止し、ランタイムエラーを返します。true の場合、関数は na を返し、実行は継続されます。デフォルトは false です。

例

```
//@version=5
indicator("request.quandl")
f = request.quandl("CFTC/SB_FO_ALL", barmerge.gaps_off, 0)
plot(f)
```

リターン

リクエストされた系列。

こちらもご覧ください

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid)

### request.security()

指定したコンテキスト（シンボルと時間足）から式の結果をリクエストします。

構文

```
request.security(symbol, timeframe, expression, gaps, lookahead, ignore_invalid_symbol, currency, calc_bars_count) → series <type>
```

引数

symbol (series string) リクエストされたデータのシンボルまたはティッカー識別子。チャートのシンボルを使ってデータをリクエストするには、空の文字列または [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) を使用します。追加の修飾子 (時間外セッション、配当調整、平均足や練行足などの非標準のチャートタイプなど) を使ってデータを取得するには、`ticker.*` の名前空間の関数を使用して、リクエスト用にカスタムのティッカーIDを作成します。

timeframe (series string) リクエストされたデータの時間足。チャートの時間足または [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) で指定された`timeframe` からのデータをリクエストするには、空の文字列または [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) を使用します。別の時間足からのデータをリクエストするには、有効な時間足の文字列を指定してください。時間足の文字列指定については、 [こちら](https://www.tradingview.com/pine-script-docs/concepts/timeframes/#timeframe-string-specifications) をご参照ください。

expression (variable, function, object, array, matrix, or map of series int/float/bool/string/color/enum, or a tuple of these) リクエストされたコンテキストから計算して返す式。 [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) のようなビルトイン変数、ユーザー定義変数、`ta.change(close) / (high - low)` のような式、Pine Script®の描画を使用しない関数呼び出し、 [オブジェクト](https://www.tradingview.com/pine-script-docs/language/objects/)、 [コレクション](https://www.tradingview.com/pine-script-docs/language/type-system/#collections) または式のタプルを受け取ることができます。

gaps (simple barmerge\_gaps) 返された値がチャートのバーにどのようにマージされるかを指定します。可能な値は [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on), [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) です。 [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on) では、関数の中で値が最初に利用可能になった時にのみ、値が現在のチャートのバーに現れ、そうでなければ、 [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) が返されます（したがって「ギャップ」が生じます）。 [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) では、 [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) 値を避け、ギャップとなる部分は、返された最新の既存の値で埋められます。オプションの引数。デフォルトは [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) です。

lookahead (simple barmerge\_lookahead) 過去バーにおいてのみ、経過する前の時間足のデータを返します。可能な値は、 [barmerge.lookahead\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_on)、 [barmerge.lookahead\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_off) です。リアルタイムの値には影響しません。オプションの引数です。Pine Script® v3からデフォルトは [barmerge.lookahead\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_off) となっています。 v1 および v2 では、デフォルトは [barmerge.lookahead\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_on) です。注意: [barmerge.lookahead\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_on) を `close[1]` のように `expression` 引数をオフセットせずにチャートよりも上位の時間足で使用すると、現在のコンテキストで実際の値が判明する前に `close` の価格を返すため、スクリプトで将来リークが発生する可能性があります。ユーザーマニュアルの [リペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/#future-leak-with-request-security) のページの説明にもあるように、誤解を招く結果が生じることになります。

ignore\_invalid\_symbol (input bool) 指定したシンボルが見つからなかった場合の関数の動作を決定します。 [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合、スクリプトは停止してランタイムエラーが発生します。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、関数は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返して実行が継続されます。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

currency (series string) 通貨単位で示される値（ [open](https://jp.tradingview.com/pine-script-reference/v5/#var_open)、 [high](https://jp.tradingview.com/pine-script-reference/v5/#var_high)、 [low](https://jp.tradingview.com/pine-script-reference/v5/#var_low)、 [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) など）や、こうした値を使った式を変換する通貨です。使用される変換レートは（計算が行われるバーを基準とした）前日のFX\_IDCペアの日足のレートに基づきます。可能な値は、 [ISO4217形式の通貨コード](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) での3文字の文字列（例．"USD"）、または currency.\* 名前空間の定数 (例． [currency.USD](https://jp.tradingview.com/pine-script-reference/v5/#const_currency.USD)）です。`200` のようなリテラル値は変換されないことに注意しましょう。オプションの引数です。デフォルトは [syminfo.currency](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.currency) です。

calc\_bars\_count (simple int) 指定した場合、関数はシンボルの直近の履歴から指定した数のデータだけをリクエストして、あたかも利用可能なデータがこの数しか存在しないかのように `expression` を計算します。これで計算速度が改善されるケースもあります。オプションです。デフォルトは100,000で、これはTradingViewのノンプロフェッショナルプラン全てで上限となる数値です。

例

```
//@version=5
indicator("Simple `request.security()` calls")
// Returns 1D close of the current symbol.
dailyClose = request.security(syminfo.tickerid, "1D", close)
plot(dailyClose)

// Returns the close of "AAPL" from the same timeframe as currently open on the chart.
aaplClose = request.security("AAPL", timeframe.period, close)
plot(aaplClose)
```

例

```
//@version=5
indicator("Advanced `request.security()` calls")
// This calculates a 10-period moving average on the active chart.
sma = ta.sma(close, 10)
// This sends the `sma` calculation for execution in the context of the "AAPL" symbol at a "240" (4 hours) timeframe.
aaplSma = request.security("AAPL", "240", sma)
plot(aaplSma)

// To avoid differences on historical and realtime bars, you can use this technique, which only returns a value from the higher timeframe on the bar after it completes:
indexHighTF = barstate.isrealtime ? 1 : 0
indexCurrTF = barstate.isrealtime ? 0 : 1
nonRepaintingClose = request.security(syminfo.tickerid, "1D", close[indexHighTF])[indexCurrTF]
plot(nonRepaintingClose, "Non-repainting close")

// Returns the 1H close of "AAPL", extended session included. The value is dividend-adjusted.
extendedTicker = ticker.modify("NASDAQ:AAPL", session = session.extended, adjustment = adjustment.dividends)
aaplExtAdj = request.security(extendedTicker, "60", close)
plot(aaplExtAdj)

// Returns the result of a user-defined function.
// The `max` variable is mutable, but we can pass it to `request.security()` because it is wrapped in a function.
allTimeHigh(source) =>
    var max = source
    max := math.max(max, source)
allTimeHigh1D = request.security(syminfo.tickerid, "1D", allTimeHigh(high))

// By using a tuple `expression`, we obtain several values with only one `request.security()` call.
[open1D, high1D, low1D, close1D, ema1D] = request.security(syminfo.tickerid, "1D", [open, high, low, close, ta.ema(close, 10)])
plotcandle(open1D, high1D, low1D, close1D)
plot(ema1D)

// Returns an array containing the OHLC values of the chart's symbol from the 1D timeframe.
ohlcArray = request.security(syminfo.tickerid, "1D", array.from(open, high, low, close))
plotcandle(array.get(ohlcArray, 0), array.get(ohlcArray, 1), array.get(ohlcArray, 2), array.get(ohlcArray, 3))
```

リターン

`expression` で定義された結果です。

備考

この関数を使用するスクリプトは過去バーとリアルタイムバーで異なる計算をする場合があり、 [リペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性があります。

1つのスクリプトに含めることが可能な一意の `request.*()` 関数呼び出しは40回までです。呼び出しが一意である条件は、同じ引数で同じ関数を呼び出さない場合に限ります。

`request.*()` 関数を2回呼び出すとき、同一のコンテキストで同一の式を異なる `calc_bars_count` の値で評価すると、2回目の呼び出しでも1回目と同じ本数の過去バーがリクエストされます。たとえば、スクリプトが `request.security("AAPL", "", close, calc_bars_count = 5)` を呼び出してから、``` after it calls ``request.security("AAPL", "", close, calc_bars_count = 3)``` を呼び出した場合、2回目の呼び出しでも3本ではなく5本のバーでの過去データが使用されます。

`request.()` によって呼び出されたシンボルは、正確な指定がない場合、つまり、`symbol` の引数が空文字列または [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) の場合に「継承」されます。同様に、`timeframe` の引数が空文字列または [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) の場合、`request.()` によって呼び出された時間足が継承されます。これらの値は通常、スクリプトが実行されているチャートから取得されます。ただし、`request.*()` 関数Aが `request.*()` 関数Bの式の中から呼び出された場合、関数Bの値が関数Aに継承されます。詳細については [こちら](https://www.tradingview.com/pine-script-docs/concepts/other-timeframes-and-data/#nested-requests) をご参照ください。

こちらもご覧ください

[syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) [request.security\_lower\_tf](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security_lower_tf) [request.dividends](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.dividends) [request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings) [request.splits](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.splits) [request.financial](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.financial) [request.quandl](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.quandl)

### request.security\_lower\_tf()

指定したシンボルからチャートの時間足以下の時間足で式の結果をリクエストします。これは、チャートのバー内部を構成する下位時間足の各バーの要素を1つずつ含む [array](https://jp.tradingview.com/pine-script-reference/v5/#type_array) を返します。たとえば、5分足のチャート上で `timeframe` の引数に "1" を指定してデータをリクエストすると、通常、1分足の各バーの `expression` の値を表す5つの要素を持った配列が返されます。

構文

```
request.security_lower_tf(symbol, timeframe, expression, ignore_invalid_symbol, currency, ignore_invalid_timeframe, calc_bars_count) → array<type>
```

引数

symbol (series string) リクエストされたデータのシンボルまたはティッカー識別子。チャートのシンボルを使ってデータをリクエストするには、空の文字列または [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) を使用します。追加の修飾子 (時間外セッション、配当調整、平均足や練行足などの非標準のチャートタイプなど) を使ってデータを取得するには、`ticker.*` の名前空間の関数を使用して、リクエスト用にカスタムのティッカーIDを作成します。

timeframe (series string) リクエストされたデータの時間足。チャートの時間足または [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) で指定された`timeframe` からのデータをリクエストするには、空の文字列または [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) を使用します。別の時間足からのデータをリクエストするには、有効な時間足の文字列を指定してください。時間足の文字列指定については、 [こちら](https://www.tradingview.com/pine-script-docs/concepts/timeframes/#timeframe-string-specifications) をご参照ください。

expression (variable, object or function of series int/float/bool/string/color/enum, or a tuple of these) リクエストされたコンテキストから計算して返す式。 [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) のようなビルトイン変数、ユーザー定義変数、`ta.change(close) / (high - low)` のような式、Pine Script®の描画を使用しない関数呼び出し、 [オブジェクト](https://www.tradingview.com/pine-script-docs/language/objects/)、または式のタプルを受け取ることができます。ただし、 [コレクション](https://www.tradingview.com/pine-script-docs/language/type-system/#collections) については、オブジェクトのフィールド内でない限り使用することはできません。

ignore\_invalid\_symbol (series bool) 指定したシンボルが見つからなかった場合の関数の動作を決定します。 [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合、スクリプトは停止してランタイムエラーが発生します。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、関数は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返して実行が継続されます。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

currency (series string) 通貨単位で示される値（ [open](https://jp.tradingview.com/pine-script-reference/v5/#var_open)、 [high](https://jp.tradingview.com/pine-script-reference/v5/#var_high)、 [low](https://jp.tradingview.com/pine-script-reference/v5/#var_low)、 [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) など）や、こうした値を使った式を変換する通貨です。使用される変換レートは（計算が行われるバーを基準とした）前日のFX\_IDCペアの日足のレートに基づきます。可能な値は、 [ISO4217形式の通貨コード](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) での3文字の文字列（例．"USD"）、または currency.\* 名前空間の定数 (例． [currency.USD](https://jp.tradingview.com/pine-script-reference/v5/#const_currency.USD)）です。`200` のようなリテラル値は変換されないことに注意しましょう。オプションの引数です。デフォルトは [syminfo.currency](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.currency) です。

ignore\_invalid\_timeframe (series bool) 関数の呼び出しで使用された `timeframe` よりもチャートの時間足が小さい場合の関数の動作を決定します。 [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合、スクリプトは停止してランタイムエラーが発生します。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、関数は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返して実行が継続されます。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

calc\_bars\_count (simple int) 指定した場合、関数はシンボルの直近の履歴から指定した数のデータだけをリクエストして、あたかも利用可能なデータがこの数しか存在しないかのように `expression` を計算します。これで計算速度が改善されるケースもあります。オプションです。デフォルトは100,000で、これはTradingViewのノンプロフェッショナルプラン全てで上限となる数値です。

例

```
//@version=5
indicator("`request.security_lower_tf()` Example", overlay = true)

// If the current chart timeframe is set to 120 minutes, then the `arrayClose` array will contain two 'close' values from the 60 minute timeframe for each bar.
arrClose = request.security_lower_tf(syminfo.tickerid, "60", close)

if bar_index == last_bar_index - 1
    label.new(bar_index, high, str.tostring(arrClose))
```

リターン

`expression` により指定された型の配列、あるいはそのタプル。

備考

この関数を使用するスクリプトは過去バーとリアルタイムバーで異なる計算をする場合があり、 [リペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性があります。

この関数でスプレッド (例: "AAPL+MSFT\*TSLA") を使用した場合、常に信頼性の高いデータが返されるとは限らないのでご注意ください。

1つのスクリプトに含めることが可能な一意の `request.*()` 関数呼び出しは40回までです。呼び出しが一意である条件は、同じ引数で同じ関数を呼び出さない場合に限ります。

`request.*()` 関数を2回呼び出すとき、同一のコンテキストで同一の式を異なる `calc_bars_count` の値で評価すると、2回目の呼び出しでも1回目と同じ本数の過去バーがリクエストされます。たとえば、スクリプトが `request.security("AAPL", "", close, calc_bars_count = 5)` を呼び出してから、``` after it calls ``request.security("AAPL", "", close, calc_bars_count = 3)``` を呼び出した場合、2回目の呼び出しでも3本ではなく5本のバーでの過去データが使用されます。

`request.()` によって呼び出されたシンボルは、正確な指定がない場合、つまり、`symbol` の引数が空文字列または [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) の場合に「継承」されます。同様に、`timeframe` の引数が空文字列または [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) の場合、`request.()` によって呼び出された時間足が継承されます。これらの値は通常、スクリプトが実行されているチャートから取得されます。ただし、`request.*()` 関数Aが `request.*()` 関数Bの式の中から呼び出された場合、関数Bの値が関数Aに継承されます。詳細については [こちら](https://www.tradingview.com/pine-script-docs/concepts/other-timeframes-and-data/#nested-requests) をご参照ください。

こちらもご覧ください

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) [request.dividends](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.dividends) [request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings) [request.splits](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.splits) [request.financial](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.financial) [request.quandl](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.quandl)

### request.seed()

ユーザー管理のGitHubリポジトリにデータをリクエストして、それを1つの系列として返します。新しくデータを追加する方法については [here](https://github.com/tradingview-eod/pine-seeds-docs) に詳しいチュートリアルがあります。

構文

```
request.seed(source, symbol, expression, ignore_invalid_symbol, calc_bars_count) → series <type>
```

引数

source (series string) GitHubリポジトリの名前です。

symbol (series string) データを含むGitHubリポジトリのファイル名です。拡張子 ".csv " を含めてはいけません。

expression (<arg\_expr\_type>) リクエストされたシンボルのコンテキストから計算されて返される式です。可能な式は: [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) のようなビルトイン変数、`ta.sma(close, 100)` のような式、スクリプト内で事前に計算した不変のユーザー定義変数、Pine Script®の描画を使用しない関数の呼び出し、配列、行列、タプルのいずれかです。可変変数は、式で使用される関数本体で囲まれていなければ使用できません。

ignore\_invalid\_symbol (input bool) 指定したシンボルが見つからなかった場合の関数の動作を決定します。 [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合、スクリプトは停止してランタイムエラーが発生します。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、関数は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返して実行が継続されます。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

calc\_bars\_count (simple int) 指定した場合、関数はシンボルの直近の履歴から指定した数のデータだけをリクエストして、あたかも利用可能なデータがこの数しか存在しないかのように `expression` を計算します。これで計算速度が改善されるケースもあります。オプションです。デフォルトは100,000で、これはTradingViewのノンプロフェッショナルプラン全てで上限となる数値です。

例

```
//@version=5
indicator("BTC Development Activity")

[devAct, devActSMA] = request.seed("seed_crypto_santiment", "BTC_DEV_ACTIVITY", [close, ta.sma(close, 10)])

plot(devAct, "BTC Development Activity")
plot(devActSMA, "BTC Development Activity SMA10", color = color.yellow)
```

リターン

リクエストされた系列もしくは系列のタプルです。配列／行列のIDを含む場合もあります。

### request.splits()

指定したシンボルの株式分割データをリクエストします。

構文

```
request.splits(ticker, field, gaps, lookahead, ignore_invalid_symbol) → series float
```

引数

ticker (series string) シンボル。シンボルはプレフィックス付きで渡す必要があることにご注意ください。例．"AAPL" の代わりに "NASDAQ:AAPL"。 [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) を使うとエラーになります。代わりに [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) を使用してください。

field (series string) 入力文字列。可能な値は [splits.denominator](https://jp.tradingview.com/pine-script-reference/v5/#const_splits.denominator)、 [splits.numerator](https://jp.tradingview.com/pine-script-reference/v5/#const_splits.numerator) です。

gaps (simple barmerge\_gaps) リクエストされたデータのマージ方法（要求されたデータは自動的にメイン系列のOHLCデータとマージされます）。可能な値は [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on)、 [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) です。 [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on) \- リクエストされたデータは、ギャップ ( [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) 値) ありでマージされます。 [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) -リクエストされたデータは、ギャップなしで連続してマージされ、すべてのギャップは以前の最も近い既存の値で埋められます。デフォルト値は [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off) です。

lookahead (simple barmerge\_lookahead) リクエストされたデータ位置のマージ方法。可能な値は [barmerge.lookahead\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_on)、 [barmerge.lookahead\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_off) です。デフォルト値はバージョン3から [barmerge.lookahead\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_off) です。2つのパラメーターの動作はリアルタイム時には同じで、過去データでのみ異なる点にご注意下さい。

ignore\_invalid\_symbol (input bool) オプションのパラメーター。指定したシンボルが見つからなかった場合の関数の動作を決定します: false の場合、スクリプトは停止し、ランタイムエラーを返します。true の場合、関数は na を返し、実行は継続されます。デフォルトは false です。

例

```
//@version=5
indicator("request.splits")
s1 = request.splits("NASDAQ:BELFA", splits.denominator)
plot(s1)
s2 = request.splits("NASDAQ:BELFA", splits.denominator, gaps=barmerge.gaps_on, lookahead=barmerge.lookahead_on)
plot(s2)
```

リターン

リクエストされた系列、または指定したシンボルの分割データが無い場合には n/a。

こちらもご覧ください

[request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings) [request.dividends](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.dividends) [request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid)

### syminfo.prefix()

2個の多重定義

`symbol`の取引所のプレフィックスを返します。例. "NASDAQ"。

構文と多重定義

[```\\
syminfo.prefix(symbol) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_syminfo.prefix-0) [```\\
syminfo.prefix(symbol) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_syminfo.prefix-1)

引数

symbol (simple string) シンボル。シンボルはプレフィックス付きで (例: "AAPL" ではなく "NASDAQ:AAPL" として) 渡す必要があります。

例

```
//@version=5
indicator("syminfo.prefix fun", overlay=true)
i_sym = input.symbol("NASDAQ:AAPL")
pref = syminfo.prefix(i_sym)
tick = syminfo.ticker(i_sym)
t = ticker.new(pref, tick, session.extended)
s = request.security(t, "1D", close)
plot(s)
```

リターン

`symbol`の取引所のプレフィックスを返します。例. "NASDAQ"。

備考

この関数の結果は、 [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new)/ [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) および [request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) で使用できます。

こちらもご覧ください

[syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [syminfo.prefix](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.prefix) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#fun_syminfo.ticker) [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new)

### syminfo.ticker()

2個の多重定義

`symbol`の名前を取引所のプレフィックスなしで返します。例. "AAPL"。

構文と多重定義

[```\\
syminfo.ticker(symbol) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_syminfo.ticker-0) [```\\
syminfo.ticker(symbol) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_syminfo.ticker-1)

引数

symbol (simple string) シンボル。シンボルはプレフィックス付きで (例: "AAPL" ではなく "NASDAQ:AAPL" として) 渡す必要があります。

例

```
//@version=5
indicator("syminfo.ticker fun", overlay=true)
i_sym = input.symbol("NASDAQ:AAPL")
pref = syminfo.prefix(i_sym)
tick = syminfo.ticker(i_sym)
t = ticker.new(pref, tick, session.extended)
s = request.security(t, "1D", close)
plot(s)
```

リターン

`symbol`の名前を取引所のプレフィックスなしで返します。例. "AAPL"。

備考

この関数の結果は、 [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new)/ [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) および [request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) で使用できます。

こちらもご覧ください

[syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [syminfo.prefix](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.prefix) [syminfo.prefix](https://jp.tradingview.com/pine-script-reference/v5/#fun_syminfo.prefix) [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new)

### ticker.heikinashi()

平均足の値を要求するティッカー識別子を作成します。

構文

```
ticker.heikinashi(symbol) → simple string
```

引数

symbol (simple string) シンボルティッカー識別子。

例

```
//@version=5
indicator("ticker.heikinashi", overlay=true)
heikinashi_close = request.security(ticker.heikinashi(syminfo.tickerid), timeframe.period, close)

heikinashi_aapl_60_close = request.security(ticker.heikinashi("AAPL"), "60", close)
plot(heikinashi_close)
plot(heikinashi_aapl_60_close)
```

リターン

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) 関数に渡すことができるティッカーIDの文字列。

こちらもご覧ください

[syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [ticker.renko](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.renko) [ticker.linebreak](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.linebreak) [ticker.kagi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.kagi) [ticker.pointfigure](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.pointfigure)

### ticker.inherit()

関数の呼び出しで渡されたティッカー識別子から、継承された追加パラメータを使って指定された `symbol` のティッカー識別子を構築します。また、スクリプトは `from_tickerid` が持つ修飾子と同一のものを使用してシンボルのデータを要求できます。時間外セッション、配当調整、通貨変換、非標準チャートタイプ、限月調整、終値決済などが含まれます。

構文

```
ticker.inherit(from_tickerid, symbol) → simple string
```

引数

from\_tickerid (simple string) 修飾子の継承元となるティッカー識別子。

symbol (simple string) 新しいティッカー識別子の構築対象となるシンボル。

例

```
//@version=5
indicator("ticker.inherit")

//@variable A "NASDAQ:AAPL" ticker ID with Extender Hours enabled.
tickerExtHours = ticker.new("NASDAQ", "AAPL", session.extended)
//@variable A Heikin Ashi ticker ID for "NASDAQ:AAPL" with Extended Hours enabled.
HAtickerExtHours = ticker.heikinashi(tickerExtHours)
//@variable The "NASDAQ:MSFT" symbol with no modifiers.
testSymbol = "NASDAQ:MSFT"
//@variable A ticker ID for "NASDAQ:MSFT" with inherited Heikin Ashi and Extended Hours modifiers.
testSymbolHAtickerExtHours = ticker.inherit(HAtickerExtHours, testSymbol)

//@variable The `close` price requested using "NASDAQ:MSFT" with inherited modifiers.
secData = request.security(testSymbolHAtickerExtHours, "60", close, ignore_invalid_symbol = true)
//@variable The `close` price requested using "NASDAQ:MSFT" without modifiers.
compareData = request.security(testSymbol, "60", close, ignore_invalid_symbol = true)

plot(secData, color = color.green)
plot(compareData)
```

備考

構築されたティッカー識別子がシンボルに適用されない修飾子を継承している場合 （たとえば、`from_tickerid` では時間外取引が有効になっているが、`symbol` にそうしたオプションがない場合）、識別子を使用してデータを要求する際にスクリプトはその修飾子を無視します。

### ticker.kagi()

カギ足の値を要求するティッカー識別子を作成します。

構文

```
ticker.kagi(symbol, reversal) → simple string
```

引数

symbol (simple string) シンボルティッカー識別子。

reversal (simple int/float) 転換量（絶対価格値）。

例

```
//@version=5
indicator("ticker.kagi", overlay=true)
kagi_tickerid = ticker.kagi(syminfo.tickerid, 3)
kagi_close = request.security(kagi_tickerid, timeframe.period, close)
plot(kagi_close)
```

リターン

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) 関数に渡すことができるティッカーIDの文字列。

こちらもご覧ください

[syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [ticker.heikinashi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.heikinashi) [ticker.renko](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.renko) [ticker.linebreak](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.linebreak) [ticker.pointfigure](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.pointfigure)

### ticker.linebreak()

新値足の値を要求するティッカー識別子を作成します。

構文

```
ticker.linebreak(symbol, number_of_lines) → simple string
```

引数

symbol (simple string) シンボルティッカー識別子。

number\_of\_lines (simple int) ライン (足) の数。

例

```
//@version=5
indicator("ticker.linebreak", overlay=true)
linebreak_tickerid = ticker.linebreak(syminfo.tickerid, 3)
linebreak_close = request.security(linebreak_tickerid, timeframe.period, close)
plot(linebreak_close)
```

リターン

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) 関数に渡すことができるティッカーIDの文字列。

こちらもご覧ください

[syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [ticker.heikinashi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.heikinashi) [ticker.renko](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.renko) [ticker.kagi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.kagi) [ticker.pointfigure](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.pointfigure)

### ticker.modify()

スクリプトの追加データをリクエストするティッカー識別子を作成します。

構文

```
ticker.modify(tickerid, session, adjustment, backadjustment, settlement_as_close) → simple string
```

引数

tickerid (simple string) 'BATS:MSFT' , 'NASDAQ:MSFT' などの取引所のプレフィックスがついたシンボル名、または [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) 関数によるセッションと調整を含むティッカー識別子を指定します。

session (simple string) セッションのタイプ。オプションです。利用できる値は: [session.regular](https://jp.tradingview.com/pine-script-reference/v5/#const_session.regular), [session.extended](https://jp.tradingview.com/pine-script-reference/v5/#const_session.extended) です。現在のチャートのセッションタイプは [syminfo.session](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.session) です。セッションが指定されていない場合は、 [syminfo.session](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.session) が使用されます。

adjustment (simple string) 調整の種類。オプション引数。可能な値は [adjustment.none](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.none), [adjustment.splits](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.splits), [adjustment.dividends](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.dividends) です。調整が指定されていない場合は、デフォルトの調整値が用いられます（銘柄により異なります）。

backadjustment (simple backadjustment) 先物つなぎ足の過去データについて限月調整するかどうかを指定します。この設定が影響するのは、チャート上で上記の選択が可能なシンボルに限られます。オプションです。デフォルトは [backadjustment.inherit](https://jp.tradingview.com/pine-script-reference/v5/#var_backadjustment.inherit) で、この場合、変更されたティッカーIDはパラメーター `tickerid` に渡されたティッカーIDの設定を継承することになります。もし、`tickerid` にこの設定についての指定がなければ、シンボルのデフォルトの設定を継承します。可能な値は [backadjustment.inherit](https://jp.tradingview.com/pine-script-reference/v5/#var_backadjustment.inherit)、 [backadjustment.on](https://jp.tradingview.com/pine-script-reference/v5/#var_backadjustment.on)、 [backadjustment.off](https://jp.tradingview.com/pine-script-reference/v5/#var_backadjustment.off) です。

settlement\_as\_close (simple settlement) 先物シンボルの [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) の値の表示を、「日足」以上の時間足で実際の終値にするか清算価格にするかを指定します。この設定が影響するのは、チャート上で上記の選択が可能なシンボルに限られます。オプションです。デフォルトは [settlement\_as\_close.inherit](https://jp.tradingview.com/pine-script-reference/v5/#var_settlement_as_close.inherit) で、変更されたティッカーIDはパラメーター `tickerid` に渡されたティッカーIDの設定を継承することになります。もし、`tickerid` にこの設定についての指定がなければ、シンボルのデフォルトの設定を継承します。可能な値は [settlement\_as\_close.inherit](https://jp.tradingview.com/pine-script-reference/v5/#var_settlement_as_close.inherit)、 [settlement\_as\_close.on](https://jp.tradingview.com/pine-script-reference/v5/#var_settlement_as_close.on)、 [settlement\_as\_close.off](https://jp.tradingview.com/pine-script-reference/v5/#var_settlement_as_close.off) です。

例

```
//@version=5
indicator("ticker_modify", overlay=true)
t1 = ticker.new(syminfo.prefix, syminfo.ticker, session.regular, adjustment.splits)
c1 = request.security(t1, "D", close)
t2 = ticker.modify(t1, session.extended)
c2 = request.security(t2, "2D", close)
plot(c1)
plot(c2)
```

リターン

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) 関数に渡すことができるティッカーIDの文字列。

こちらもご覧ください

[syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [syminfo.session](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.session) [session.extended](https://jp.tradingview.com/pine-script-reference/v5/#const_session.extended) [session.regular](https://jp.tradingview.com/pine-script-reference/v5/#const_session.regular) [ticker.heikinashi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.heikinashi) [adjustment.none](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.none) [adjustment.splits](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.splits) [adjustment.dividends](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.dividends) [backadjustment.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_backadjustment.inherit) [backadjustment.on](https://jp.tradingview.com/pine-script-reference/v5/#const_backadjustment.on) [backadjustment.off](https://jp.tradingview.com/pine-script-reference/v5/#const_backadjustment.off) [settlement\_as\_close.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_settlement_as_close.inherit) [settlement\_as\_close.on](https://jp.tradingview.com/pine-script-reference/v5/#const_settlement_as_close.on) [settlement\_as\_close.off](https://jp.tradingview.com/pine-script-reference/v5/#const_settlement_as_close.off)

### ticker.new()

スクリプトの追加データをリクエストするティッカー識別子を作成します。

構文

```
ticker.new(prefix, ticker, session, adjustment, backadjustment, settlement_as_close) → simple string
```

引数

prefix (simple string) 取引所のプレフィックス。例えば: 'BATS'、'NYSE'、'NASDAQ'。メイン系列の取引所のプレフィックスは [syminfo.prefix](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.prefix) です。

ticker (simple string) ティッカー名。例えば、'AAPL'、'MSFT'、'EURUSD'。 メイン系列のティッカー名は [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) です。

session (simple string) セッションのタイプ。オプションです。利用できる値は: [session.regular](https://jp.tradingview.com/pine-script-reference/v5/#const_session.regular), [session.extended](https://jp.tradingview.com/pine-script-reference/v5/#const_session.extended) です。現在のチャートのセッションタイプは [syminfo.session](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.session) です。セッションが指定されていない場合は、 [syminfo.session](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.session) が使用されます。

adjustment (simple string) 調整の種類。オプション引数。可能な値は [adjustment.none](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.none), [adjustment.splits](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.splits), [adjustment.dividends](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.dividends) です。調整が指定されていない場合は、デフォルトの調整値が用いられます（銘柄により異なります）。

backadjustment (simple backadjustment) 先物つなぎ足の過去データについて限月調整するかどうかを指定します。この設定が影響するのは、チャート上で上記の選択が可能なシンボルに限られます。オプションです。デフォルトは [backadjustment.inherit](https://jp.tradingview.com/pine-script-reference/v5/#var_backadjustment.inherit) で、この場合、新しいティッカーIDがそのシンボルのデフォルトの設定を継承することになります。可能な値は [backadjustment.inherit](https://jp.tradingview.com/pine-script-reference/v5/#var_backadjustment.inherit)、 [backadjustment.on](https://jp.tradingview.com/pine-script-reference/v5/#var_backadjustment.on)、 [backadjustment.off](https://jp.tradingview.com/pine-script-reference/v5/#var_backadjustment.off) です。

settlement\_as\_close (simple settlement) 先物シンボルの [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) の値の表示を、「日足」以上の時間足で実際の終値にするか清算価格にするかを指定します。この設定が影響するのは、チャート上で上記の選択が可能なシンボルに限られます。オプションです。デフォルトは [settlement\_as\_close.inherit](https://jp.tradingview.com/pine-script-reference/v5/#var_settlement_as_close.inherit) で、この場合、新しいティッカーIDがそのシンボルのデフォルトの設定を継承することになります。可能な値は [settlement\_as\_close.inherit](https://jp.tradingview.com/pine-script-reference/v5/#var_settlement_as_close.inherit)、 [settlement\_as\_close.on](https://jp.tradingview.com/pine-script-reference/v5/#var_settlement_as_close.on)、 [settlement\_as\_close.off](https://jp.tradingview.com/pine-script-reference/v5/#var_settlement_as_close.off) です。

例

```
//@version=5
indicator("ticker.new", overlay=true)
t = ticker.new(syminfo.prefix, syminfo.ticker, session.regular, adjustment.splits)
t2 = ticker.heikinashi(t)
c = request.security(t2, timeframe.period, low, barmerge.gaps_on)
plot(c, style=plot.style_linebr)
```

リターン

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) 関数に渡すことができるティッカーIDの文字列。

備考

関数 [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) の戻り値を [ticker.heikinashi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.heikinashi), [ticker.renko](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.renko), [ticker.linebreak](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.linebreak), [ticker.kagi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.kagi), [ticker.pointfigure](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.pointfigure) の引数入力に使用することが可能です。

こちらもご覧ください

[syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [syminfo.session](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.session) [session.extended](https://jp.tradingview.com/pine-script-reference/v5/#const_session.extended) [session.regular](https://jp.tradingview.com/pine-script-reference/v5/#const_session.regular) [ticker.heikinashi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.heikinashi) [adjustment.none](https://jp.tradingview.com/pine-script-reference/v5/#var_adjustment.none) [adjustment.splits](https://jp.tradingview.com/pine-script-reference/v5/#var_adjustment.splits) [adjustment.dividends](https://jp.tradingview.com/pine-script-reference/v5/#var_adjustment.dividends) [backadjustment.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_backadjustment.inherit) [backadjustment.on](https://jp.tradingview.com/pine-script-reference/v5/#const_backadjustment.on) [backadjustment.off](https://jp.tradingview.com/pine-script-reference/v5/#const_backadjustment.off) [settlement\_as\_close.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_settlement_as_close.inherit) [settlement\_as\_close.on](https://jp.tradingview.com/pine-script-reference/v5/#const_settlement_as_close.on) [settlement\_as\_close.off](https://jp.tradingview.com/pine-script-reference/v5/#const_settlement_as_close.off)

### ticker.pointfigure()

ポイント＆フィギュアの値を要求するティッカー識別子を作成します。

構文

```
ticker.pointfigure(symbol, source, style, param, reversal) → simple string
```

引数

symbol (simple string) シンボルティッカー識別子。

source (simple string) ポイント＆フィギュアを計算するソース。可能な値は 'hl', 'close' です。

style (simple string) ボックスサイズの計算方法: 'ATR'、'Traditional'。

param (simple int/float) `style` が 'ATR' の場合はATRの期間で、`style` が 'Traditional' の場合にはボックスサイズです。

reversal (simple int) 転換数。

例

```
//@version=5
indicator("ticker.pointfigure", overlay=true)
pnf_tickerid = ticker.pointfigure(syminfo.tickerid, "hl", "Traditional", 1, 3)
pnf_close = request.security(pnf_tickerid, timeframe.period, close)
plot(pnf_close)
```

リターン

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) 関数に渡すことができるティッカーIDの文字列。

こちらもご覧ください

[syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [ticker.heikinashi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.heikinashi) [ticker.renko](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.renko) [ticker.linebreak](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.linebreak) [ticker.kagi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.kagi)

### ticker.renko()

練行足の値を要求するティッカー識別子を作成します。

構文

```
ticker.renko(symbol, style, param, request_wicks, source) → simple string
```

引数

symbol (simple string) シンボルティッカー識別子。

style (simple string) ボックスサイズの計算方法: 'ATR'、'Traditional'。

param (simple int/float) `style` が 'ATR' の場合はATRの期間で、`style` が 'Traditional' の場合にはボックスサイズです。

request\_wicks (simple bool) 練行足のレンガに対してヒゲの値を返すかどうかを指定します。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、この関数で形成されるティッカーを使用するシンボルから [high](https://jp.tradingview.com/pine-script-reference/v5/#var_high) および [low](https://jp.tradingview.com/pine-script-reference/v5/#var_low) の値が要求されると、これらの値が存在する場合にはヒゲの値が含まれます。 [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合、 [high](https://jp.tradingview.com/pine-script-reference/v5/#var_high) と [low](https://jp.tradingview.com/pine-script-reference/v5/#var_low) は常に [open](https://jp.tradingview.com/pine-script-reference/v5/#var_open) または [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) のどちらかと等しくなります。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。練行足のヒゲがどのように計算されるかについての詳細は、 [ヘルプセンター](https://www.tradingview.com/support/solutions/43000481040-what-do-renko-wicks-mean/) の記事をご参照ください。

source (simple string) レンガの計算に使用するソース。オプションです。可能な値は"Close"と"OHLC"です。デフォルトは "Close"です。

例

```
//@version=5
indicator("ticker.renko", overlay=true)
renko_tickerid = ticker.renko(syminfo.tickerid, "ATR", 10)
renko_close = request.security(renko_tickerid, timeframe.period, close)
plot(renko_close)
```

例

```
//@version=5
indicator("Renko candles", overlay=false)
renko_tickerid = ticker.renko(syminfo.tickerid, "ATR", 10)
[renko_open, renko_high, renko_low, renko_close] = request.security(renko_tickerid, timeframe.period, [open, high, low, close])
plotcandle(renko_open, renko_high, renko_low, renko_close, color = renko_close > renko_open ? color.green : color.red)
```

リターン

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) 関数に渡すことができるティッカーIDの文字列。

こちらもご覧ください

[syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [ticker.heikinashi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.heikinashi) [ticker.linebreak](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.linebreak) [ticker.kagi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.kagi) [ticker.pointfigure](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.pointfigure)

### ticker.standard()

標準のチャートからデータを要求するためのティッカーを作成します。このデータは時間外セッション、配当調整、通貨変換、平均足や練行足といった非標準チャートタイプの計算など、様々な修飾子の影響を受けていないものになります。特に、非標準チャート上でスクリプトが実行されている場合、これによって標準チャートの値の取得が可能になります。

構文

```
ticker.standard(symbol) → simple string
```

引数

symbol (simple string) 標準の形式に変換されたティッカー識別子。オプションです。デフォルトは [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) です。

例

```
//@version=5
indicator("ticker.standard", overlay = true)
// This script should be run on a non-standard chart such as HA, Renko...

// Requests data from the chart type the script is running on.
chartTypeValue = request.security(syminfo.tickerid, "1D", close)

// Request data from the standard chart type, regardless of the chart type the script is running on.
standardChartValue = request.security(ticker.standard(syminfo.tickerid), "1D", close)

// This will not use a standard ticker ID because the `symbol` argument contains only the ticker — not the prefix (exchange).
standardChartValue2 = request.security(ticker.standard(syminfo.ticker), "1D", close)

plot(chartTypeValue)
plot(standardChartValue, color = color.green)
```

リターン

標準チャートのティッカーを "prefix:ticker" 形式で表した文字列です。引数 `symbol` がプレフィックスとティッカー情報を含んでいない場合、この関数は与えられた引数をそのまま返します。

こちらもご覧ください

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security)

### timeframe.change()

指定された `timeframe` の切り替わりを表示します。

構文

```
timeframe.change(timeframe) → series bool
```

引数

timeframe (series string) [ユーザーマニュアルの時間足文字列の仕様](https://www.tradingview.com/pine-script-docs/concepts/timeframes/#timeframe-string-specifications) に従ってフォーマットされた文字列です。

例

```
//@version=5
// Run this script on an intraday chart.
indicator("New day started", overlay = true)
// Highlights the first bar of the new day.
isNewDay = timeframe.change("1D")
bgcolor(isNewDay ? color.new(color.green, 80) : na)
```

リターン

新しい `timeframe` の最初のバーで [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を、それ以外の場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。

### timeframe.from\_seconds()

2個の多重定義

秒数を有効な時間足の文字列に変換します。

構文と多重定義

[```\\
timeframe.from_seconds(seconds) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_timeframe.from_seconds-0) [```\\
timeframe.from_seconds(seconds) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_timeframe.from_seconds-1)

引数

seconds (simple int) 時間足での秒数。

例

```
//@version=5
indicator("HTF Close", "", true)
int chartTf = timeframe.in_seconds()
string tfTimes5 = timeframe.from_seconds(chartTf * 5)
float htfClose = request.security(syminfo.tickerid, tfTimes5, close)
plot(htfClose)
```

リターン

[timeframe string specifications](https://www.tradingview.com/pine-script-docs/concepts/timeframes/#timeframe-string-specifications) に準拠した時間足の文字列。

備考

指定の秒数に対して有効な時間足が存在しない場合、有効な時間足として次に大きいものが返されます。したがって、1秒以下であれば "1S"、2～5秒であれば "5S"、604,799秒 (7日より1秒小さい) であれば "1S" が返されます。

秒数がちょうど有効な時間足を複数指す場合、基本単位の大きいものが使用されます。したがって、604,800秒 (7日) であれば "7D" ではなく "1W" が返されます。

31,622,400 (366日) を超える値であれば、すべて "12M" が返されます。

こちらもご覧ください

[timeframe.in\_seconds](https://jp.tradingview.com/pine-script-reference/v5/#fun_timeframe.in_seconds) [request.security](https://jp.tradingview.com/pine-script-reference/v5/#var_request.security) [request.security\_lower\_tf](https://jp.tradingview.com/pine-script-reference/v5/#var_request.security_lower_tf)

### timeframe.in\_seconds()

2個の多重定義

時間足の文字列を秒数に変換します。

構文と多重定義

[```\\
timeframe.in_seconds(timeframe) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_timeframe.in_seconds-0) [```\\
timeframe.in_seconds(timeframe) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_timeframe.in_seconds-1)

引数

timeframe (simple string) [timeframe string specifications](https://www.tradingview.com/pine-script-docs/concepts/timeframes/#timeframe-string-specifications) のフォーマットによる時間足の文字列。オプションです。デフォルトは [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) です。

例

```
//@version=5
indicator("`timeframe_in_seconds()`")

// Get a user-selected timeframe.
tfInput = input.timeframe("1D")

// Convert it into an "int" number of seconds.
secondsInTf = timeframe.in_seconds(tfInput)

plot(secondsInTf)
```

リターン

時間足文字列の秒数を "int" で表したものです。

備考

時間足が '1M' 以上の場合、1ヶ月の日数である30.4167 (365/12) に基づいて秒数を計算します。1ヶ月を表す秒数としては2628003が用いられます。

こちらもご覧ください

[input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) [timeframe.from\_seconds](https://jp.tradingview.com/pine-script-reference/v5/#fun_timeframe.from_seconds)


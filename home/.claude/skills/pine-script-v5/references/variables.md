## 変数

### bar\_index

現在のバーのインデックス。ナンバリングは0から始まり、最初のバーのインデックスは0です。

タイプ

series int

例

```
//@version=5
indicator("bar_index")
plot(bar_index)
plot(bar_index > 5000 ? close : 0)
```

備考

バージョン4では、 **bar\_index** は **n** 変数に置き換えられている事にご注意ください。

バーのインデックスは、最初の過去バーから0で始まることにご注意ください。

この変数／関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性がある事にご注意下さい。

こちらもご覧ください

[last\_bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#var_last_bar_index) [barstate.isfirst](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isfirst) [barstate.islast](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islast) [barstate.isrealtime](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isrealtime)

### barstate.isconfirmed

スクリプトが現在のバーの終値（バーの確定時）で計算された場合に true を返します。次にスクリプトが計算されるのは新しいバーのデータです。

タイプ

series bool

備考

この変数を使用するPine Script® のコードは、過去データとリアルタイムデータで計算方法が異なります。

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) の式で、 [barstate.isconfirmed](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isconfirmed) を使用することは推奨しません。 [request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) から要求される値は予測不可能な為です。

この変数／関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性がある事にご注意下さい。

こちらもご覧ください

[barstate.isfirst](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isfirst) [barstate.islast](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islast) [barstate.ishistory](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.ishistory) [barstate.isrealtime](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isrealtime) [barstate.isnew](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isnew) [barstate.islastconfirmedhistory](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islastconfirmedhistory)

### barstate.isfirst

現在のバーがバーセットの最初のバーなら true を返し、そうでない場合は false を返します。

タイプ

series bool

備考

この変数を使用するPine Script® のコードは、過去データとリアルタイムデータで計算方法が異なります。

この変数／関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性がある事にご注意下さい。

こちらもご覧ください

[barstate.islast](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islast) [barstate.ishistory](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.ishistory) [barstate.isrealtime](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isrealtime) [barstate.isnew](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isnew) [barstate.isconfirmed](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isconfirmed) [barstate.islastconfirmedhistory](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islastconfirmedhistory)

### barstate.ishistory

現在のバーが過去バーの場合は true を返し、そうでない場合は false を返します。

タイプ

series bool

備考

この変数を使用するPine Script® のコードは、過去データとリアルタイムデータで計算方法が異なります。

この変数／関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性がある事にご注意下さい。

こちらもご覧ください

[barstate.isfirst](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isfirst) [barstate.islast](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islast) [barstate.isrealtime](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isrealtime) [barstate.isnew](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isnew) [barstate.isconfirmed](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isconfirmed) [barstate.islastconfirmedhistory](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islastconfirmedhistory)

### barstate.islast

現在のバーがバーセットの最後のバーの場合はtrueを返し、そうでない場合はfalseを返します。この条件はバーセットのすべてのリアルタイムバーでtrueです。

タイプ

series bool

備考

この変数を使用するPine Script® のコードは、過去データとリアルタイムデータで計算方法が異なります。

この変数／関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性がある事にご注意下さい。

こちらもご覧ください

[barstate.isfirst](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isfirst) [barstate.ishistory](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.ishistory) [barstate.isrealtime](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isrealtime) [barstate.isnew](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isnew) [barstate.isconfirmed](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isconfirmed) [barstate.islastconfirmedhistory](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islastconfirmedhistory)

### barstate.islastconfirmedhistory

市場がクローズしている場合、スクリプトがデータセットの最後のバーで実行されていれば true を返します。市場がオープンの時は、スクリプトがリアルタイムバーの直前のバーで実行されていれば true を返します。それ以外の場合は false を返します。

タイプ

series bool

備考

この変数を使用するPine Script® のコードは、過去データとリアルタイムデータで計算方法が異なります。

この変数／関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性がある事にご注意下さい。

こちらもご覧ください

[barstate.isfirst](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isfirst) [barstate.islast](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islast) [barstate.ishistory](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.ishistory) [barstate.isrealtime](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isrealtime) [barstate.isnew](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isnew)

### barstate.isnew

スクリプトが新しいバーで現在計算している場合はtrueを返し、そうでない場合はfalseを返します。この変数は、過去バーで計算される時または新しく生成されたリアルタイムバーの最初の更新時に計算される時にtrueです。

タイプ

series bool

備考

この変数を使用するPine Script® のコードは、過去データとリアルタイムデータで計算方法が異なります。

この変数／関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性がある事にご注意下さい。

こちらもご覧ください

[barstate.isfirst](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isfirst) [barstate.islast](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islast) [barstate.ishistory](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.ishistory) [barstate.isrealtime](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isrealtime) [barstate.isconfirmed](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isconfirmed) [barstate.islastconfirmedhistory](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islastconfirmedhistory)

### barstate.isrealtime

現在のバーがリアルタイムバーである場合はtrueを返し、そうでない場合はfalseを返します。

タイプ

series bool

備考

この変数を使用するPine Script® のコードは、過去データとリアルタイムデータで計算方法が異なります。

この変数／関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性がある事にご注意下さい。

こちらもご覧ください

[barstate.isfirst](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isfirst) [barstate.islast](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islast) [barstate.ishistory](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.ishistory) [barstate.isnew](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isnew) [barstate.isconfirmed](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isconfirmed) [barstate.islastconfirmedhistory](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islastconfirmedhistory)

### box.all

スクリプトによって現在描画されているすべてのボックスで満たされた配列を返します。

タイプ

array<box>

例

```
//@version=5
indicator("box.all")
//delete all boxes
box.new(time, open, time + 60 * 60 * 24, close, xloc=xloc.bar_time, border_style=line.style_dashed)
a_allBoxes = box.all
if array.size(a_allBoxes) > 0
    for i = 0 to array.size(a_allBoxes) - 1
        box.delete(array.get(a_allBoxes, i))
```

備考

この配列は読み取り専用です。配列のインデックス0は、チャート上で最も古いオブジェクトのIDを示します。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [line.all](https://jp.tradingview.com/pine-script-reference/v5/#var_line.all) [label.all](https://jp.tradingview.com/pine-script-reference/v5/#var_label.all) [table.all](https://jp.tradingview.com/pine-script-reference/v5/#var_table.all)

### chart.bg\_color

チャートの背景色を、「チャート設定／外観／背景」の項目から返します。グラデーションが選択されている場合は、グラデーションの中間点が返されます。

タイプ

input color

こちらもご覧ください

[chart.fg\_color](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.fg_color)

### chart.fg\_color

[chart.bg\_color](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.bg_color) と最適なコントラストを持つ色を返します。

タイプ

input color

こちらもご覧ください

[chart.bg\_color](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.bg_color)

### chart.is\_heikinashi

タイプ

simple bool

リターン

チャートの種類が平均足の場合には [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を返します。その他の場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。

こちらもご覧ください

[chart.is\_renko](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_renko) [chart.is\_linebreak](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_linebreak) [chart.is\_kagi](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_kagi) [chart.is\_pnf](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_pnf) [chart.is\_range](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_range)

### chart.is\_kagi

タイプ

simple bool

リターン

チャートの種類がカギ足の場合には [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を返します。その他の場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。

こちらもご覧ください

[chart.is\_renko](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_renko) [chart.is\_linebreak](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_linebreak) [chart.is\_heikinashi](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_heikinashi) [chart.is\_pnf](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_pnf) [chart.is\_range](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_range)

### chart.is\_linebreak

タイプ

simple bool

リターン

チャートの種類が新値足の場合には [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を返します。その他の場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。

こちらもご覧ください

[chart.is\_renko](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_renko) [chart.is\_heikinashi](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_heikinashi) [chart.is\_kagi](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_kagi) [chart.is\_pnf](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_pnf) [chart.is\_range](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_range)

### chart.is\_pnf

タイプ

simple bool

リターン

チャートの種類がポイント＆フィギュアの場合には [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を返します。その他の場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。

こちらもご覧ください

[chart.is\_renko](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_renko) [chart.is\_linebreak](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_linebreak) [chart.is\_kagi](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_kagi) [chart.is\_heikinashi](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_heikinashi) [chart.is\_range](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_range)

### chart.is\_range

タイプ

simple bool

リターン

チャートの種類がレンジバーの場合には [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を返します。その他の場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。

こちらもご覧ください

[chart.is\_renko](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_renko) [chart.is\_linebreak](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_linebreak) [chart.is\_kagi](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_kagi) [chart.is\_pnf](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_pnf) [chart.is\_heikinashi](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_heikinashi)

### chart.is\_renko

タイプ

simple bool

リターン

チャートの種類が練行足の場合には [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を返します。その他の場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。

こちらもご覧ください

[chart.is\_heikinashi](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_heikinashi) [chart.is\_linebreak](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_linebreak) [chart.is\_kagi](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_kagi) [chart.is\_pnf](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_pnf) [chart.is\_range](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_range)

### chart.is\_standard

タイプ

simple bool

リターン

チャートタイプがバー、ローソク足、中空ローソク足、ライン、エリア、ベースラインの場合には [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を、それ以外の場合には [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。

こちらもご覧ください

[chart.is\_renko](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_renko) [chart.is\_linebreak](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_linebreak) [chart.is\_kagi](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_kagi) [chart.is\_pnf](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_pnf) [chart.is\_range](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_range) [chart.is\_heikinashi](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.is_heikinashi)

### chart.left\_visible\_bar\_time

現在チャート上に表示されている最も左にあるバーの [time](https://jp.tradingview.com/pine-script-reference/v5/#var_time)。

タイプ

input int

備考

ユーザーによるチャートのスクロールや、新しいリアルタイムバーによって生じるチャートの変更を反映するため、この変数を使用したスクリプトは変数の値の更新時に自動的に再実行されます。

この変数を含むスクリプトによって作成されたアラートは、あとでその値に変更があったかどうかにかかわりなく、アラート作成時点で変数に割り当てられた値だけを使用するので、リペイントされる可能性があります。

こちらもご覧ください

[chart.right\_visible\_bar\_time](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.right_visible_bar_time)

### chart.right\_visible\_bar\_time

現在チャート上に表示されている最も右にあるバーの [time](https://jp.tradingview.com/pine-script-reference/v5/#var_time)。

タイプ

input int

備考

ユーザーによるチャートのスクロールや、新しいリアルタイムバーによって生じるチャートの変更を反映するため、この変数を使用したスクリプトは変数の値の更新時に自動的に再実行されます。

この変数を含むスクリプトによって作成されたアラートは、あとでその値に変更があったかどうかにかかわりなく、アラート作成時点で変数に割り当てられた値だけを使用するので、リペイントされる可能性があります。

こちらもご覧ください

[chart.left\_visible\_bar\_time](https://jp.tradingview.com/pine-script-reference/v5/#var_chart.left_visible_bar_time)

### close

現在のバーが確定した時の終値、または取引中のリアルタイムバーの最終取引価格。

タイプ

series float

備考

前のバーの値は、角括弧\[\]でアクセスすることができます。 例えばclose\[1\]、close\[2\]です。

こちらもご覧ください

[open](https://jp.tradingview.com/pine-script-reference/v5/#var_open) [high](https://jp.tradingview.com/pine-script-reference/v5/#var_high) [low](https://jp.tradingview.com/pine-script-reference/v5/#var_low) [volume](https://jp.tradingview.com/pine-script-reference/v5/#var_volume) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [hl2](https://jp.tradingview.com/pine-script-reference/v5/#var_hl2) [hlc3](https://jp.tradingview.com/pine-script-reference/v5/#var_hlc3) [hlcc4](https://jp.tradingview.com/pine-script-reference/v5/#var_hlcc4) [ohlc4](https://jp.tradingview.com/pine-script-reference/v5/#var_ohlc4)

### dayofmonth

取引所のタイムゾーンでの現在のバーの月日。

タイプ

series int

備考

この変数はバーの開始時刻に基づく日を返す事にご注意下さい。オーバーナイトセッションでは（例．月曜のセッションが日曜日の17:00 UTC-4に始まるEURUSD）、この値は取引日よりも1つ少なくなる可能性があります。

こちらもご覧ください

[dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofmonth) [time](https://jp.tradingview.com/pine-script-reference/v5/#var_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#var_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#var_month) [weekofyear](https://jp.tradingview.com/pine-script-reference/v5/#var_weekofyear) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#var_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#var_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#var_second)

### dayofweek

取引所のタイムゾーンでの現在のバーの曜日。

タイプ

series int

備考

この変数はバーの開始時刻に基づく日を返す事にご注意下さい。オーバーナイトセッションでは（例．月曜のセッションが日曜日の17:00 UTC-4に始まるEURUSD）、この値は取引日よりも1つ少なくなる可能性があります。

[dayofweek.sunday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.sunday), [dayofweek.monday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.monday), [dayofweek.tuesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.tuesday), [dayofweek.wednesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.wednesday), [dayofweek.thursday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.thursday), [dayofweek.friday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.friday), [dayofweek.saturday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.saturday) 変数を比較に利用できます。

こちらもご覧ください

[dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) [time](https://jp.tradingview.com/pine-script-reference/v5/#var_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#var_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#var_month) [weekofyear](https://jp.tradingview.com/pine-script-reference/v5/#var_weekofyear) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofmonth) [hour](https://jp.tradingview.com/pine-script-reference/v5/#var_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#var_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#var_second)

### dividends.future\_amount

次回配当金の支払額を、現在の銘柄の通貨で返します。データがない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

タイプ

series float

備考

この値はスクリプトの初回計算時に一度だけ取得されます。この変数はスクリプトの再計算が行われるまで、たとえ、次回配当金の支払予定日以降であっても同じ値を返します。

### dividends.future\_ex\_date

現在の銘柄について次回配当支払の配当落ち日（権利落ち日）を返します。データがない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。配当落ち日とは、投資家が直近の配当を受け取る権利を失う日のことです。配当金を受け取る権利があるのは、この日より前に株式を購入した人に限られます。

タイプ

series int

リターン

UNIX時間、ミリ秒単位で示されます。

備考

この値はスクリプトの初回計算時に一度だけ取得されます。この変数はスクリプトの再計算が行われるまで、たとえ、次回配当金の支払予定日以降であっても同じ値を返します。

### dividends.future\_pay\_date

現在の銘柄について次回配当の支払日を返します。データがない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。支払日とは、対象となる投資家が配当金を受け取る日のことです。

タイプ

series int

リターン

UNIX時間、ミリ秒単位で示されます。

備考

この値はスクリプトの初回計算時に一度だけ取得されます。この変数はスクリプトの再計算が行われるまで、たとえ、次回配当金の支払予定日以降であっても同じ値を返します。

### earnings.future\_eps

次の決算報告書で予測される1株当たり利益を、その銘柄の通貨で返します。このデータが利用できない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

タイプ

series float

備考

この値は、スクリプトが初回の計算を行う際に1度だけ取得されるものです。この変数は、たとえ次の決算発表が想定される時期以降であっても、スクリプトが再計算されるまでは同じ値を返します。

こちらもご覧ください

[request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings)

### earnings.future\_period\_end\_time

次の決算発表についてのデータをチェックして、決算対象になる会計期間が終了する日のUNIXタイムスタンプを返します。このデータが利用できない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

タイプ

series int

リターン

UNIX時間、ミリ秒単位で示されます。

備考

この値は、スクリプトが初回の計算を行う際に1度だけ取得されるものです。この変数は、たとえ次の決算発表が想定される時期以降であっても、スクリプトが再計算されるまでは同じ値を返します。

こちらもご覧ください

[request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings)

### earnings.future\_revenue

次の決算報告書で予測される売上高を、その銘柄の通貨で返します。このデータが利用できない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

タイプ

series float

備考

この値は、スクリプトが初回の計算を行う際に1度だけ取得されるものです。この変数は、たとえ次の決算発表が想定される時期以降であっても、スクリプトが再計算されるまでは同じ値を返します。

こちらもご覧ください

[request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings)

### earnings.future\_time

次の決算発表の予定時刻を示すUNIXタイムスタンプを返します。また、このデータがない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

タイプ

series int

リターン

UNIX時間、ミリ秒単位で示されます。

備考

この値は、スクリプトが初回の計算を行う際に1度だけ取得されるものです。この変数は、たとえ次の決算発表が想定される時期以降であっても、スクリプトが再計算されるまでは同じ値を返します。

こちらもご覧ください

[request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings)

### high

現在の高値。

タイプ

series float

備考

前のバーの値は、角括弧\[\]でアクセスすることができます。例えばhigh\[1\]、high\[2\]です。

こちらもご覧ください

[open](https://jp.tradingview.com/pine-script-reference/v5/#var_open) [low](https://jp.tradingview.com/pine-script-reference/v5/#var_low) [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) [volume](https://jp.tradingview.com/pine-script-reference/v5/#var_volume) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [hl2](https://jp.tradingview.com/pine-script-reference/v5/#var_hl2) [hlc3](https://jp.tradingview.com/pine-script-reference/v5/#var_hlc3) [hlcc4](https://jp.tradingview.com/pine-script-reference/v5/#var_hlcc4) [ohlc4](https://jp.tradingview.com/pine-script-reference/v5/#var_ohlc4)

### hl2

(高値+安値)/2 のショートカットです。

タイプ

series float

こちらもご覧ください

[open](https://jp.tradingview.com/pine-script-reference/v5/#var_open) [high](https://jp.tradingview.com/pine-script-reference/v5/#var_high) [low](https://jp.tradingview.com/pine-script-reference/v5/#var_low) [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) [volume](https://jp.tradingview.com/pine-script-reference/v5/#var_volume) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [hlc3](https://jp.tradingview.com/pine-script-reference/v5/#var_hlc3) [hlcc4](https://jp.tradingview.com/pine-script-reference/v5/#var_hlcc4) [ohlc4](https://jp.tradingview.com/pine-script-reference/v5/#var_ohlc4)

### hlc3

(高値+安値+終値)/3 のショートカットです。

タイプ

series float

こちらもご覧ください

[open](https://jp.tradingview.com/pine-script-reference/v5/#var_open) [high](https://jp.tradingview.com/pine-script-reference/v5/#var_high) [low](https://jp.tradingview.com/pine-script-reference/v5/#var_low) [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) [volume](https://jp.tradingview.com/pine-script-reference/v5/#var_volume) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [hl2](https://jp.tradingview.com/pine-script-reference/v5/#var_hl2) [hlcc4](https://jp.tradingview.com/pine-script-reference/v5/#var_hlcc4) [ohlc4](https://jp.tradingview.com/pine-script-reference/v5/#var_ohlc4)

### hlcc4

(高値+安値+終値+終値)/4 のショートカットです。

タイプ

series float

こちらもご覧ください

[open](https://jp.tradingview.com/pine-script-reference/v5/#var_open) [high](https://jp.tradingview.com/pine-script-reference/v5/#var_high) [low](https://jp.tradingview.com/pine-script-reference/v5/#var_low) [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) [volume](https://jp.tradingview.com/pine-script-reference/v5/#var_volume) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [hl2](https://jp.tradingview.com/pine-script-reference/v5/#var_hl2) [hlc3](https://jp.tradingview.com/pine-script-reference/v5/#var_hlc3) [ohlc4](https://jp.tradingview.com/pine-script-reference/v5/#var_ohlc4)

### hour

取引所のタイムゾーンでの現在のバーの時間。

タイプ

series int

こちらもご覧ください

[hour](https://jp.tradingview.com/pine-script-reference/v5/#fun_hour) [time](https://jp.tradingview.com/pine-script-reference/v5/#var_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#var_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#var_month) [weekofyear](https://jp.tradingview.com/pine-script-reference/v5/#var_weekofyear) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) [minute](https://jp.tradingview.com/pine-script-reference/v5/#var_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#var_second)

### label.all

スクリプトによって現在描画されているすべてのラベルで満たされた配列を返します。

タイプ

array<label>

例

```
//@version=5
indicator("label.all")
//delete all labels
label.new(bar_index, close)
a_allLabels = label.all
if array.size(a_allLabels) > 0
    for i = 0 to array.size(a_allLabels) - 1
        label.delete(array.get(a_allLabels, i))
```

備考

この配列は読み取り専用です。配列のインデックス0は、チャート上で最も古いオブジェクトのIDを示します。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [line.all](https://jp.tradingview.com/pine-script-reference/v5/#var_line.all) [box.all](https://jp.tradingview.com/pine-script-reference/v5/#var_box.all) [table.all](https://jp.tradingview.com/pine-script-reference/v5/#var_table.all)

### last\_bar\_index

チャート上で最後のバーのインデックスです。バーインデックスの付与は、最初のバーをゼロとして開始されます。

タイプ

series int

例

```
//@version=5
strategy("Mark Last X Bars For Backtesting", overlay = true, calc_on_every_tick = true)
lastBarsFilterInput = input.int(100, "Bars Count:")
// Here, we store the 'last_bar_index' value that is known from the beginning of the script's calculation.
// The 'last_bar_index' will change when new real-time bars appear, so we declare 'lastbar' with the 'var' keyword.
var lastbar = last_bar_index
// Check if the current bar_index is 'lastBarsFilterInput' removed from the last bar on the chart, or the chart is traded in real-time.
allowedToTrade = (lastbar - bar_index <= lastBarsFilterInput) or barstate.isrealtime
bgcolor(allowedToTrade ? color.new(color.green, 80) : na)
```

リターン

市場が閉じている場合は履歴上最後のバーインデックス、市場が開いている場合はリアルタイムのバーインデックスを表示します。

備考

この変数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性がある事にご注意下さい。

こちらもご覧ください

[bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#var_bar_index) [last\_bar\_time](https://jp.tradingview.com/pine-script-reference/v5/#var_last_bar_time) [barstate.ishistory](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.ishistory) [barstate.isrealtime](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.isrealtime)

### last\_bar\_time

チャート上で最後のバーが表示された UNIX 形式の時間です。1970年1月1日午前0時00分00秒 のUTCから経過したミリ秒数です。

タイプ

series int

備考

この変数／関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性がある事にご注意下さい。

この変数は、バーの開始時刻に基づくタイムスタンプを返すのでご注意ください。

こちらもご覧ください

[time](https://jp.tradingview.com/pine-script-reference/v5/#var_time) [timenow](https://jp.tradingview.com/pine-script-reference/v5/#var_timenow) [timestamp](https://jp.tradingview.com/pine-script-reference/v5/#fun_timestamp) [last\_bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#var_last_bar_index)

### line.all

スクリプトによって現在描画されているすべてのラインで満たされた配列を返します。

タイプ

array<line>

例

```
//@version=5
indicator("line.all")
//delete all lines
line.new(bar_index - 10, close, bar_index, close)
a_allLines = line.all
if array.size(a_allLines) > 0
    for i = 0 to array.size(a_allLines) - 1
        line.delete(array.get(a_allLines, i))
```

備考

この配列は読み取り専用です。配列のインデックス0は、チャート上で最も古いオブジェクトのIDを示します。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [label.all](https://jp.tradingview.com/pine-script-reference/v5/#var_label.all) [box.all](https://jp.tradingview.com/pine-script-reference/v5/#var_box.all) [table.all](https://jp.tradingview.com/pine-script-reference/v5/#var_table.all)

### linefill.all

スクリプトで現在描画されているすべての linefill オブジェクトで満たされた配列を返します。

タイプ

array<linefill>

備考

この配列は読み取り専用です。配列のインデックス0は、チャート上で最も古いオブジェクトのIDを示します。

### low

現在の安値。

タイプ

series float

備考

前のバーの値は、角括弧\[\]でアクセスすることができます。 例えばlow\[1\]、low\[2\]です。

こちらもご覧ください

[open](https://jp.tradingview.com/pine-script-reference/v5/#var_open) [high](https://jp.tradingview.com/pine-script-reference/v5/#var_high) [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) [volume](https://jp.tradingview.com/pine-script-reference/v5/#var_volume) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [hl2](https://jp.tradingview.com/pine-script-reference/v5/#var_hl2) [hlc3](https://jp.tradingview.com/pine-script-reference/v5/#var_hlc3) [hlcc4](https://jp.tradingview.com/pine-script-reference/v5/#var_hlcc4) [ohlc4](https://jp.tradingview.com/pine-script-reference/v5/#var_ohlc4)

### minute

取引所のタイムゾーンでの現在のバーの分。

タイプ

series int

こちらもご覧ください

[minute](https://jp.tradingview.com/pine-script-reference/v5/#fun_minute) [time](https://jp.tradingview.com/pine-script-reference/v5/#var_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#var_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#var_month) [weekofyear](https://jp.tradingview.com/pine-script-reference/v5/#var_weekofyear) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#var_hour) [second](https://jp.tradingview.com/pine-script-reference/v5/#var_second)

### month

取引所のタイムゾーンでの現在のバーの月。

タイプ

series int

備考

この変数はバーの開始時刻に基づく月を返す事にご注意下さい。オーバーナイトセッションでは（例．月曜のセッションが日曜日の17:00 UTC-4に始まるEURUSD）、この値は取引日の月よりも1つ少なくなる可能性があります。

こちらもご覧ください

[month](https://jp.tradingview.com/pine-script-reference/v5/#fun_month) [time](https://jp.tradingview.com/pine-script-reference/v5/#var_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#var_year) [weekofyear](https://jp.tradingview.com/pine-script-reference/v5/#var_weekofyear) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#var_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#var_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#var_second)

### na

「利用できない」ことを意味するキーワードで、変数に値が割り当てられていない事を示します。

タイプ

simple na

例

```
//@version=5
indicator("na")
// CORRECT
// Plot no value when on bars zero to nine. Plot `close` on other bars.
plot(bar_index < 10 ? na : close)
// CORRECT ALTERNATIVE
// Initialize `a` to `na`. Reassign `close` to `a` on bars 10 and later.
float a = na
if bar_index >= 10
    a := close
plot(a)

// INCORRECT
// Trying to test the preceding bar's `close` for `na`.
// Will not work correctly on bar zero, when `close[1]` is `na`.
plot(close[1] == na ? close : close[1])
// CORRECT
// Use the `na()` function to test for `na`.
plot(na(close[1]) ? close : close[1])
// CORRECT ALTERNATIVE
// `nz()` tests `close[1]` for `na`. It returns `close[1]` if it is not `na`, and `close` if it is.
plot(nz(close[1], close))
```

備考

この変数を値が `na` であるかを確認するために [比較演算子](https://www.tradingview.com/pine-script-docs/language/operators/#comparison-operators) を使用しないでください。意図しない動作として読み込まれる可能性があります。代わりに、 [na](https://jp.tradingview.com/pine-script-reference/v5/#fun_na) 関数を使用してください。なお、`na` は初期化文で変数の型が指定されている場合、変数の初期化に使用することができます。

こちらもご覧ください

[na](https://jp.tradingview.com/pine-script-reference/v5/#fun_na) [nz](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz) [fixnan](https://jp.tradingview.com/pine-script-reference/v5/#fun_fixnan)

### ohlc4

(始値+高値+安値+終値)/4 のショートカットです。

タイプ

series float

こちらもご覧ください

[open](https://jp.tradingview.com/pine-script-reference/v5/#var_open) [high](https://jp.tradingview.com/pine-script-reference/v5/#var_high) [low](https://jp.tradingview.com/pine-script-reference/v5/#var_low) [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) [volume](https://jp.tradingview.com/pine-script-reference/v5/#var_volume) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [hl2](https://jp.tradingview.com/pine-script-reference/v5/#var_hl2) [hlc3](https://jp.tradingview.com/pine-script-reference/v5/#var_hlc3) [hlcc4](https://jp.tradingview.com/pine-script-reference/v5/#var_hlcc4)

### open

現在の始値。

タイプ

series float

備考

前のバーの値は、角括弧\[\]でアクセスすることができます。 例えばopen\[1\]、open\[2\]です。

こちらもご覧ください

[high](https://jp.tradingview.com/pine-script-reference/v5/#var_high) [low](https://jp.tradingview.com/pine-script-reference/v5/#var_low) [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) [volume](https://jp.tradingview.com/pine-script-reference/v5/#var_volume) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [hl2](https://jp.tradingview.com/pine-script-reference/v5/#var_hl2) [hlc3](https://jp.tradingview.com/pine-script-reference/v5/#var_hlc3) [hlcc4](https://jp.tradingview.com/pine-script-reference/v5/#var_hlcc4) [ohlc4](https://jp.tradingview.com/pine-script-reference/v5/#var_ohlc4)

### polyline.all

スクリプトによって描かれた、現在全ての [polyline](https://jp.tradingview.com/pine-script-reference/v5/#type_polyline) インスタンスを含む配列を返します。

タイプ

array<polyline>

備考

この配列は読み取り専用です。配列のインデックス0は、チャート上で最も古い折れ線オブジェクトを参照します。

### second

取引所のタイムゾーンでの現在のバーの秒。

タイプ

series int

こちらもご覧ください

[second](https://jp.tradingview.com/pine-script-reference/v5/#fun_second) [time](https://jp.tradingview.com/pine-script-reference/v5/#var_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#var_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#var_month) [weekofyear](https://jp.tradingview.com/pine-script-reference/v5/#var_weekofyear) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#var_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#var_minute)

### session.isfirstbar

直近のバーがその日のセッションの最初のバーであれば [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を、そうでない場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。時間外セッション情報が使用されている場合、プレマーケットのバーのうち最初のバーにのみ `true` を返します。

タイプ

series bool

例

```
//@version=5
strategy("`session.isfirstbar` Example", overlay = true)
longCondition = year >= 2022
// Place a long order at the `close` of the trading session's first bar.
if session.isfirstbar and longCondition
    strategy.entry("Long", strategy.long)

// Close the long position at the `close` of the trading session's last bar.
if session.islastbar and barstate.isconfirmed
    strategy.close("Long", immediately = true)
```

こちらもご覧ください

[session.isfirstbar\_regular](https://jp.tradingview.com/pine-script-reference/v5/#var_session.isfirstbar_regular) [session.islastbar](https://jp.tradingview.com/pine-script-reference/v5/#var_session.islastbar) [session.islastbar\_regular](https://jp.tradingview.com/pine-script-reference/v5/#var_session.islastbar_regular)

### session.isfirstbar\_regular

その日の通常セッションでの最初のバーで [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を、それ以外では [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。時間外セッション情報の使用／不使用には影響されません。

タイプ

series bool

例

```
//@version=5
strategy("`session.isfirstbar_regular` Example", overlay = true)
longCondition = year >= 2022
// Place a long order at the `close` of the trading session's first bar.
if session.isfirstbar and longCondition
    strategy.entry("Long", strategy.long)
// Close the long position at the `close` of the trading session's last bar.
if session.islastbar_regular and barstate.isconfirmed
    strategy.close("Long", immediately = true)
```

こちらもご覧ください

[session.isfirstbar](https://jp.tradingview.com/pine-script-reference/v5/#var_session.isfirstbar) [session.islastbar](https://jp.tradingview.com/pine-script-reference/v5/#var_session.islastbar)

### session.islastbar

直近のバーがその日のセッションの最後のバーであれば [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を、そうでない場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。時間外セッション情報が使用されている場合、アフターマーケットのバーのうち最後のバーにのみ `true` を返します。

タイプ

series bool

例

```
//@version=5
strategy("`session.islastbar` Example", overlay = true)
longCondition = year >= 2022
// Place a long order at the `close` of the trading session's last bar.
// The position will enter  on the `open` of next session's first bar.
if session.islastbar and longCondition
    strategy.entry("Long", strategy.long)
 // Close 'Long' position at the close of the last bar of the trading session
if session.islastbar and barstate.isconfirmed
    strategy.close("Long", immediately = true)
```

備考

この変数は、すべてのセッションで [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を必ず一度ずつ返すことを保証するものではありません。セッション最後のバーとなるべき所で取引が発生しなかった場合、セッションの最後のバーが存在しない可能性があるためです。

この変数は非標準のチャートタイプ (例: 練行足) において想定通りの動作を保証するものではありません。

こちらもご覧ください

[session.isfirstbar](https://jp.tradingview.com/pine-script-reference/v5/#var_session.isfirstbar) [session.islastbar\_regular](https://jp.tradingview.com/pine-script-reference/v5/#var_session.islastbar_regular)

### session.islastbar\_regular

その日の通常セッションでの最後のバーで [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を、それ以外では [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。時間外セッション情報の使用／不使用には影響されません。

タイプ

series bool

例

```
//@version=5
strategy("`session.islastbar_regular` Example", overlay = true)
longCondition = year >= 2022
// Place a long order at the `close` of the trading session's first bar.
if session.isfirstbar and longCondition
    strategy.entry("Long", strategy.long)
// Close the long position at the `close` of the trading session's last bar.
if session.islastbar_regular and barstate.isconfirmed
    strategy.close("Long", immediately = true)
```

備考

この変数は、すべてのセッションで [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を必ず一度ずつ返すことを保証するものではありません。セッション最後のバーとなるべき所で取引が発生しなかった場合、セッションの最後のバーが存在しない可能性があるためです。

この変数は非標準のチャートタイプ (例: 練行足) において想定通りの動作を保証するものではありません。

こちらもご覧ください

[session.isfirstbar](https://jp.tradingview.com/pine-script-reference/v5/#var_session.isfirstbar) [session.islastbar](https://jp.tradingview.com/pine-script-reference/v5/#var_session.islastbar) [session.isfirstbar\_regular](https://jp.tradingview.com/pine-script-reference/v5/#var_session.isfirstbar_regular)

### session.ismarket

直近のバーが通常の取引時間内（ザラ場）である場合は [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を、そうでない場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。

タイプ

series bool

こちらもご覧ください

[session.ispremarket](https://jp.tradingview.com/pine-script-reference/v5/#var_session.ispremarket) [session.ispostmarket](https://jp.tradingview.com/pine-script-reference/v5/#var_session.ispostmarket)

### session.ispostmarket

直近のバーがアフターマーケット内である場合は [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を、そうでない場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。日中足でないチャートでは常に `false` を返します。

タイプ

series bool

こちらもご覧ください

[session.ismarket](https://jp.tradingview.com/pine-script-reference/v5/#var_session.ismarket) [session.ispremarket](https://jp.tradingview.com/pine-script-reference/v5/#var_session.ispremarket)

### session.ispremarket

直近のバーがプレマーケット内である場合は [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を、そうでない場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。日中足でないチャートでは常に `false` を返します。

タイプ

series bool

こちらもご覧ください

[session.ismarket](https://jp.tradingview.com/pine-script-reference/v5/#var_session.ismarket) [session.ispostmarket](https://jp.tradingview.com/pine-script-reference/v5/#var_session.ispostmarket)

### strategy.account\_currency

結果算出に使用される通貨を返します。これはストラテジーのプロパティで設定可能です。

タイプ

simple string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) [strategy.convert\_to\_account](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.convert_to_account) [strategy.convert\_to\_symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.convert_to_symbol)

### strategy.avg\_losing\_trade

負けトレード1回あたりの平均損失額を返します。すべての損失の合計を、負けトレード数で割って計算されます。

タイプ

series float

こちらもご覧ください

[strategy.avg\_losing\_trade\_percent](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.avg_losing_trade_percent)

### strategy.avg\_losing\_trade\_percent

負けトレード1回あたりの平均損失率を返します。すべての損失率の合計を、負けトレード数で割って計算されます。

タイプ

series float

こちらもご覧ください

[strategy.avg\_losing\_trade](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.avg_losing_trade)

### strategy.avg\_trade

1トレードあたりの平均損益額を返します。すべての損益の合計を、終了したトレード数で割って計算されます。

タイプ

series float

こちらもご覧ください

[strategy.avg\_trade\_percent](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.avg_trade_percent)

### strategy.avg\_trade\_percent

1トレードあたりの平均損益率を返します。すべての損益率の合計を、終了したトレード数で割って計算されます。

タイプ

series float

こちらもご覧ください

[strategy.avg\_trade](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.avg_trade)

### strategy.avg\_winning\_trade

勝ちトレード1回あたりの平均利益額を返します。すべての利益の合計を、勝ちトレード数で割って計算されます。

タイプ

series float

こちらもご覧ください

[strategy.avg\_winning\_trade\_percent](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.avg_winning_trade_percent)

### strategy.avg\_winning\_trade\_percent

勝ちトレード1回あたりの平均利益率を返します。すべての利益率の合計を、勝ちトレード数で割って計算されます。

タイプ

series float

こちらもご覧ください

[strategy.avg\_winning\_trade](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.avg_winning_trade)

### strategy.closedtrades

全トレード期間でクローズされたトレードの数。

タイプ

series int

こちらもご覧ください

[strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size) [strategy.opentrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.opentrades) [strategy.wintrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.wintrades) [strategy.losstrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.losstrades) [strategy.eventrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.eventrades)

### strategy.equity

現在の資本額。 ( [strategy.initial\_capital](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.initial_capital) \+ [strategy.netprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.netprofit) \+ [strategy.openprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.openprofit))

タイプ

series float

こちらもご覧ください

[strategy.netprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.netprofit) [strategy.openprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.openprofit) [strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size)

### strategy.eventrades

全トレード期間でのブレークイーブントレードの数。

タイプ

series int

こちらもご覧ください

[strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size) [strategy.opentrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.opentrades) [strategy.closedtrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.closedtrades) [strategy.wintrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.wintrades) [strategy.losstrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.losstrades)

### strategy.grossloss

終了したすべての負けトレードの合計金額。

タイプ

series float

こちらもご覧ください

[strategy.netprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.netprofit) [strategy.grossprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.grossprofit)

### strategy.grossloss\_percent

終了したすべての負けトレードの合計金額を、初期資金に対する割合で表します。

タイプ

series float

こちらもご覧ください

[strategy.grossloss](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.grossloss)

### strategy.grossprofit

終了したすべての勝ちトレードの合計金額。

タイプ

series float

こちらもご覧ください

[strategy.netprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.netprofit) [strategy.grossloss](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.grossloss)

### strategy.grossprofit\_percent

終了したすべての勝ちトレードの合計金額を、初期資金に対する割合で表します。

タイプ

series float

こちらもご覧ください

[strategy.grossprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.grossprofit)

### strategy.initial\_capital

ストラテジーのプロパティで設定する初期資金。

タイプ

series float

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### strategy.losstrades

全トレード期間での負けトレードの数。

タイプ

series int

こちらもご覧ください

[strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size) [strategy.opentrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.opentrades) [strategy.closedtrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.closedtrades) [strategy.wintrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.wintrades) [strategy.eventrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.eventrades)

### strategy.margin\_liquidation\_price

ストラテジーで証拠金が使用されている場合において、シミュレーション上でマージンコールが発生する価格ポイントを返し、証拠金の要件が十分に満たされるポジションを清算します。

タイプ

series float

例

```
//@version=5
strategy("Margin call management", overlay = true, margin_long = 25, margin_short = 25,
  default_qty_type = strategy.percent_of_equity, default_qty_value = 395)

float maFast = ta.sma(close, 14)
float maSlow = ta.sma(close, 28)

if ta.crossover(maFast, maSlow)
    strategy.entry("Long", strategy.long)

if ta.crossunder(maFast, maSlow)
    strategy.entry("Short", strategy.short)

changePercent(v1, v2) =>
    float result = (v1 - v2) * 100 / math.abs(v2)

// exit when we're 10% away from a margin call, to prevent it.
if math.abs(changePercent(close, strategy.margin_liquidation_price)) <= 10
    strategy.close("Long")
    strategy.close("Short")
```

備考

ストラテジーで証拠金が使用されていない場合、つまり、 [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) の宣言文が `margin_long` や `margin_short` のパラメーターの変数を指定してしない場合、この変数は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

### strategy.max\_contracts\_held\_all

取引期間全体に渡る契約数／株数／ロット数／ユニット数のトレードにおける最大値。

タイプ

series float

こちらもご覧ください

[strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size) [strategy.max\_contracts\_held\_long](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_contracts_held_long) [strategy.max\_contracts\_held\_short](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_contracts_held_short)

### strategy.max\_contracts\_held\_long

取引期間全体に渡る契約数／株数／ロット数／ユニット数の買いトレードにおける最大値。

タイプ

series float

こちらもご覧ください

[strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size) [strategy.max\_contracts\_held\_all](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_contracts_held_all) [strategy.max\_contracts\_held\_short](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_contracts_held_short)

### strategy.max\_contracts\_held\_short

取引期間全体に渡る契約数／株数／ロット数／ユニット数の売りトレードにおける最大値。

タイプ

series float

こちらもご覧ください

[strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size) [strategy.max\_contracts\_held\_all](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_contracts_held_all) [strategy.max\_contracts\_held\_long](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_contracts_held_long)

### strategy.max\_drawdown

全トレード期間での最大ドローダウン。

タイプ

series float

こちらもご覧ください

[strategy.netprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.netprofit) [strategy.equity](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.equity) [strategy.max\_runup](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_runup)

### strategy.max\_drawdown\_percent

全トレード期間での最大ドローダウンを、下記の式で算出される割合で表します: `Lowest Value During Trade / (Entry Price x Quantity) * 100`

タイプ

series float

こちらもご覧ください

[strategy.max\_drawdown](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_drawdown)

### strategy.max\_runup

全トレード期間での最大資産増加幅。

タイプ

series float

こちらもご覧ください

[strategy.netprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.netprofit) [strategy.equity](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.equity) [strategy.max\_drawdown](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_drawdown)

### strategy.max\_runup\_percent

全トレード期間での最大資産増加幅を、下記の式で算出される割合で表します: `Highest Value During Trade / (Entry Price x Quantity) * 100`

タイプ

series float

こちらもご覧ください

[strategy.max\_runup](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_runup)

### strategy.netprofit

終了したすべてのトレードの合計金額。

タイプ

series float

こちらもご覧ください

[strategy.openprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.openprofit) [strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size) [strategy.grossprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.grossprofit) [strategy.grossloss](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.grossloss)

### strategy.netprofit\_percent

終了したすべてのトレードの合計金額を、初期資金に対する割合で表します。

タイプ

series float

こちらもご覧ください

[strategy.netprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.netprofit)

### strategy.openprofit

すべてのオープンポジションの現在の未実現損益。

タイプ

series float

こちらもご覧ください

[strategy.netprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.netprofit) [strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size)

### strategy.openprofit\_percent

すべての未決済ポジションに対する現在の未実現損益を、下記の式で算出される割合で表します: `openPL / realizedEquity * 100`

タイプ

series float

こちらもご覧ください

[strategy.openprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.openprofit)

### strategy.opentrades

クローズされずにオープン中のままの市場ポジションのエントリー数。オープン中の市場ポジションがない場合には 0 が返されます。

タイプ

series int

こちらもご覧ください

[strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size)

### strategy.opentrades.capital\_held

未決済トレードで現在保持されている資本金額が返されます。

タイプ

series float

例

```
//@version=5
strategy(
   "strategy.opentrades.capital_held example", overlay=false,  margin_long=50, margin_short=50,
   default_qty_type = strategy.percent_of_equity, default_qty_value = 100
 )

// Enter a short position on the first bar.
if barstate.isfirst
    strategy.entry("Short", strategy.short)

// Plot the capital held by the short position.
plot(strategy.opentrades.capital_held, "Capital held")
// Highlight the chart background if the position is completely closed by margin calls.
bgcolor(bar_index > 0 and strategy.opentrades.capital_held == 0 ? color.new(color.red, 60) : na)
```

備考

この変数は、ストラテジーが仮想口座上で資金取引のシミュレーションを行わない場合、つまり、 [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数の引数としてゼロ以外の `margin_long` もしくは `margin_short` を含んでいない場合に [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

### strategy.position\_avg\_price

現在の市場ポジションの平均エントリー価格。もし市場ポジションがフラットであれば、'NaN'が返されます。

タイプ

series float

こちらもご覧ください

[strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size)

### strategy.position\_entry\_name

現在の市場ポジションをエントリーした時の注文の名前。

タイプ

series string

こちらもご覧ください

[strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size)

### strategy.position\_size

現在の市場ポジションの方向とサイズ。値が0より大きい場合、市場ポジションは買い。値が0より少ない場合、市場ポジションは売り。絶対値は取引における契約数／株数／ロット数／ユニット数 (ポジションサイズ) です。

タイプ

series float

こちらもご覧ください

[strategy.position\_avg\_price](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_avg_price)

### strategy.wintrades

全トレード期間での勝ちトレードの数。

タイプ

series int

こちらもご覧ください

[strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size) [strategy.opentrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.opentrades) [strategy.closedtrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.closedtrades) [strategy.losstrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.losstrades) [strategy.eventrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.eventrades)

### syminfo.basecurrency

シンボルの基軸通貨（つまり、トレード対象の通貨もしくはコイン）を表すコードを含む文字列を返します。これは対象の銘柄がFXや暗号資産のペア、もしくはこうしたペアに基づくデリバティブの銘柄の場合であり、そうでない場合は空の文字列が返されます。たとえば、この変数を使うとそれぞれ、"EURJPY" に対しては "EUR"、"BTCUSDT" に対しては "BTC"、"CME:6C1!" に対しては "CAD"、"NASDAQ:AAPL" に対しては "" が返されます。

タイプ

simple string

こちらもご覧ください

[syminfo.currency](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.currency) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker)

### syminfo.country

そのシンボルが取引されている国を表す2文字のコードを [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) 形式で返します。取引所に特定の国と直接的なつながりがなければ [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。例えば、"NASDAQ:AAPL" の場合は "US" 、"LSE:AAPL" の場合は "GB" 、"BITSTAMP:BTCUSD" の場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) が返されることになります。

タイプ

simple string

### syminfo.currency

シンボルの価格を表している通貨コードを含む文字列を返します。たとえば、この変数を使うと "NASDAQ:AAPL" に対しては "USD"、"EURJPY" に対しては "JPY" が返されます。

タイプ

simple string

こちらもご覧ください

[syminfo.basecurrency](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.basecurrency) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [currency.USD](https://jp.tradingview.com/pine-script-reference/v5/#const_currency.USD) [currency.EUR](https://jp.tradingview.com/pine-script-reference/v5/#const_currency.EUR)

### syminfo.description

現在のシンボルの説明。

タイプ

simple string

こちらもご覧ください

[syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [syminfo.prefix](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.prefix)

### syminfo.employees

企業の従業員数です。

タイプ

simple int

例

```
//@version=5
indicator("syminfo simple")
//@variable A table containing information about a company's employees, shareholders, and shares.
var result_table = table.new(position = position.top_right, columns = 2, rows = 5, border_width = 1)
if barstate.islastconfirmedhistory
    // Add header cells
    table.cell(table_id = result_table, column = 0, row = 0, text = "name")
    table.cell(table_id = result_table, column = 1, row = 0, text = "value")
    // Add employee info cells.
    table.cell(table_id = result_table, column = 0, row = 1, text = "employees")
    table.cell(table_id = result_table, column = 1, row = 1, text = str.tostring(syminfo.employees))
    // Add shareholder cells.
    table.cell(table_id = result_table, column = 0, row = 2, text = "shareholders")
    table.cell(table_id = result_table, column = 1, row = 2, text = str.tostring(syminfo.shareholders))
    // Add float shares outstanding cells.
    table.cell(table_id = result_table, column = 0, row = 3, text = "shares_outstanding_float")
    table.cell(table_id = result_table, column = 1, row = 3, text = str.tostring(syminfo.shares_outstanding_float))
    // Add total shares outstanding cells.
    table.cell(table_id = result_table, column = 0, row = 4, text = "shares_outstanding_total")
    table.cell(table_id = result_table, column = 1, row = 4, text = str.tostring(syminfo.shares_outstanding_total))
```

こちらもご覧ください

[syminfo.shareholders](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.shareholders) [syminfo.shares\_outstanding\_float](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.shares_outstanding_float) [syminfo.shares\_outstanding\_total](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.shares_outstanding_total)

### syminfo.expiration\_date

現在の先物取引において、満期日の開始を表示するUNIXタイムスタンプです。この変数は、つなぎ足ではない先物のシンボルにのみ対応しています。他のシンボルの場合は、 [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

タイプ

simple int

### syminfo.industry

そのシンボルが属している業種を返します。シンボルに業種がない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。例 : 「オンラインソフトウェア／サービス」、「パッケージソフトウェア」、「総合石油」、「自動車」など。チャートの「シンボル情報」ウィンドウで確認できる値と同じになっています。

タイプ

simple string

備考

「セクター」は経済の分野のうちで広い部分を指しています。「業種」は、それよりも狭い分類になります。例えば、NASDAQ:CAT（キャタピラー社）は、セクターとしては「生産財製造」に属し、業種としては「トラック／建設機械／農業機械」に属しています。

### syminfo.minmove

シンボルの値動き ( [syminfo.mintick](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.mintick)) の最小単位の計算に使用する整数を返します。これは [syminfo.mintick](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.mintick) の計算式の分子です: `syminfo.minmove / syminfo.pricescale = syminfo.mintick`

タイプ

simple int

こちらもご覧ください

[ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) [timeframe.multiplier](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.multiplier) [syminfo.root](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.root)

### syminfo.mintick

現在のシンボルの最小ティック値。

タイプ

simple float

こちらもご覧ください

[syminfo.pointvalue](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.pointvalue)

### syminfo.pointvalue

現在のシンボルのポイント値。

タイプ

simple float

こちらもご覧ください

[syminfo.mintick](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.mintick)

### syminfo.prefix

現在のシンボルのプレフィックス（例えば、'CME\_EOD:TICKER' の場合、'CME\_EOD' です)。

タイプ

simple string

例

```
//@version=5
indicator("syminfo.prefix")

// If current chart symbol is 'BATS:MSFT' then syminfo.prefix is 'BATS'.
if barstate.islastconfirmedhistory
    label.new(bar_index, high, text=syminfo.prefix)
```

こちらもご覧ください

[syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid)

### syminfo.pricescale

シンボルの値動き ( [syminfo.mintick](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.mintick)) の最小単位の計算に使用する整数を返します。これは [syminfo.mintick](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.mintick) の計算式の分母です: `syminfo.minmove / syminfo.pricescale = syminfo.mintick`

タイプ

simple int

こちらもご覧ください

[ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) [timeframe.multiplier](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.multiplier) [syminfo.root](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.root)

### syminfo.recommendations\_buy

現在のシンボルに対して「買い」の評価をしたアナリストの数です。

タイプ

series int

例

```
//@version=5
indicator("syminfo recommendations", overlay = true)
//@variable A table containing information about analyst recommendations.
var table ratings = table.new(position.top_right, 8, 2, frame_color = #000000)
if barstate.islastconfirmedhistory
    //@variable The time value one year from the date of the last analyst recommendations.
    int YTD = syminfo.target_price_date + timeframe.in_seconds("12M") * 1000
    // Add header cells.
    table.cell(ratings, 0, 0, "Start Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 0, "End Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 0, "Buy", bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 0, "Strong Buy", bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 0, "Sell", bgcolor = color.maroon, text_color = #000000, text_size = size.large)
    table.cell(ratings, 5, 0, "Strong Sell", bgcolor = color.red, text_color = #000000, text_size = size.large)
    table.cell(ratings, 6, 0, "Hold", bgcolor = color.orange, text_color = #000000, text_size = size.large)
    table.cell(ratings, 7, 0, "Total", bgcolor = color.silver, text_color = #000000, text_size = size.large)
    // Recommendation strings
    string startDate         = str.format_time(syminfo.recommendations_date, "yyyy-MM-dd")
    string endDate           = str.format_time(YTD, "yyyy-MM-dd")
    string buyRatings        = str.tostring(syminfo.recommendations_buy)
    string strongBuyRatings  = str.tostring(syminfo.recommendations_buy_strong)
    string sellRatings       = str.tostring(syminfo.recommendations_sell)
    string strongSellRatings = str.tostring(syminfo.recommendations_sell_strong)
    string holdRatings       = str.tostring(syminfo.recommendations_hold)
    string totalRatings      = str.tostring(syminfo.recommendations_total)
    // Add value cells
    table.cell(ratings, 0, 1, startDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 1, endDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 1, buyRatings, bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 1, strongBuyRatings, bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 1, sellRatings, bgcolor = color.maroon, text_color = #000000, text_size = size.large)
```

こちらもご覧ください

[syminfo.recommendations\_buy\_strong](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_buy_strong) [syminfo.recommendations\_date](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_date) [syminfo.recommendations\_hold](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_hold) [syminfo.recommendations\_total](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_total) [syminfo.recommendations\_sell](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_sell) [syminfo.recommendations\_sell\_strong](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_sell_strong)

### syminfo.recommendations\_buy\_strong

現在のシンボルに対して「強い買い」の評価をしたアナリストの数です。

タイプ

series int

例

```
//@version=5
indicator("syminfo recommendations", overlay = true)
//@variable A table containing information about analyst recommendations.
var table ratings = table.new(position.top_right, 8, 2, frame_color = #000000)
if barstate.islastconfirmedhistory
    //@variable The time value one year from the date of the last analyst recommendations.
    int YTD = syminfo.target_price_date + timeframe.in_seconds("12M") * 1000
    // Add header cells.
    table.cell(ratings, 0, 0, "Start Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 0, "End Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 0, "Buy", bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 0, "Strong Buy", bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 0, "Sell", bgcolor = color.maroon, text_color = #000000, text_size = size.large)
    table.cell(ratings, 5, 0, "Strong Sell", bgcolor = color.red, text_color = #000000, text_size = size.large)
    table.cell(ratings, 6, 0, "Hold", bgcolor = color.orange, text_color = #000000, text_size = size.large)
    table.cell(ratings, 7, 0, "Total", bgcolor = color.silver, text_color = #000000, text_size = size.large)
    // Recommendation strings
    string startDate         = str.format_time(syminfo.recommendations_date, "yyyy-MM-dd")
    string endDate           = str.format_time(YTD, "yyyy-MM-dd")
    string buyRatings        = str.tostring(syminfo.recommendations_buy)
    string strongBuyRatings  = str.tostring(syminfo.recommendations_buy_strong)
    string sellRatings       = str.tostring(syminfo.recommendations_sell)
    string strongSellRatings = str.tostring(syminfo.recommendations_sell_strong)
    string holdRatings       = str.tostring(syminfo.recommendations_hold)
    string totalRatings      = str.tostring(syminfo.recommendations_total)
    // Add value cells
    table.cell(ratings, 0, 1, startDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 1, endDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 1, buyRatings, bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 1, strongBuyRatings, bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 1, sellRatings, bgcolor = color.maroon, text_color = #000000, text_size = size.large)
```

こちらもご覧ください

[syminfo.recommendations\_buy](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_buy) [syminfo.recommendations\_date](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_date) [syminfo.recommendations\_hold](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_hold) [syminfo.recommendations\_total](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_total) [syminfo.recommendations\_sell](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_sell) [syminfo.recommendations\_sell\_strong](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_sell_strong)

### syminfo.recommendations\_date

現在のシンボルに対する直近の評価が開始された日です。

タイプ

series int

例

```
//@version=5
indicator("syminfo recommendations", overlay = true)
//@variable A table containing information about analyst recommendations.
var table ratings = table.new(position.top_right, 8, 2, frame_color = #000000)
if barstate.islastconfirmedhistory
    //@variable The time value one year from the date of the last analyst recommendations.
    int YTD = syminfo.target_price_date + timeframe.in_seconds("12M") * 1000
    // Add header cells.
    table.cell(ratings, 0, 0, "Start Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 0, "End Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 0, "Buy", bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 0, "Strong Buy", bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 0, "Sell", bgcolor = color.maroon, text_color = #000000, text_size = size.large)
    table.cell(ratings, 5, 0, "Strong Sell", bgcolor = color.red, text_color = #000000, text_size = size.large)
    table.cell(ratings, 6, 0, "Hold", bgcolor = color.orange, text_color = #000000, text_size = size.large)
    table.cell(ratings, 7, 0, "Total", bgcolor = color.silver, text_color = #000000, text_size = size.large)
    // Recommendation strings
    string startDate         = str.format_time(syminfo.recommendations_date, "yyyy-MM-dd")
    string endDate           = str.format_time(YTD, "yyyy-MM-dd")
    string buyRatings        = str.tostring(syminfo.recommendations_buy)
    string strongBuyRatings  = str.tostring(syminfo.recommendations_buy_strong)
    string sellRatings       = str.tostring(syminfo.recommendations_sell)
    string strongSellRatings = str.tostring(syminfo.recommendations_sell_strong)
    string holdRatings       = str.tostring(syminfo.recommendations_hold)
    string totalRatings      = str.tostring(syminfo.recommendations_total)
    // Add value cells
    table.cell(ratings, 0, 1, startDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 1, endDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 1, buyRatings, bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 1, strongBuyRatings, bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 1, sellRatings, bgcolor = color.maroon, text_color = #000000, text_size = size.large)
```

こちらもご覧ください

[syminfo.recommendations\_buy](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_buy) [syminfo.recommendations\_buy\_strong](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_buy_strong) [syminfo.recommendations\_hold](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_hold) [syminfo.recommendations\_total](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_total) [syminfo.recommendations\_sell](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_sell) [syminfo.recommendations\_sell\_strong](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_sell_strong)

### syminfo.recommendations\_hold

現在のシンボルに対して「中立」の評価をしたアナリストの数です。

タイプ

series int

例

```
//@version=5
indicator("syminfo recommendations", overlay = true)
//@variable A table containing information about analyst recommendations.
var table ratings = table.new(position.top_right, 8, 2, frame_color = #000000)
if barstate.islastconfirmedhistory
    //@variable The time value one year from the date of the last analyst recommendations.
    int YTD = syminfo.target_price_date + timeframe.in_seconds("12M") * 1000
    // Add header cells.
    table.cell(ratings, 0, 0, "Start Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 0, "End Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 0, "Buy", bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 0, "Strong Buy", bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 0, "Sell", bgcolor = color.maroon, text_color = #000000, text_size = size.large)
    table.cell(ratings, 5, 0, "Strong Sell", bgcolor = color.red, text_color = #000000, text_size = size.large)
    table.cell(ratings, 6, 0, "Hold", bgcolor = color.orange, text_color = #000000, text_size = size.large)
    table.cell(ratings, 7, 0, "Total", bgcolor = color.silver, text_color = #000000, text_size = size.large)
    // Recommendation strings
    string startDate         = str.format_time(syminfo.recommendations_date, "yyyy-MM-dd")
    string endDate           = str.format_time(YTD, "yyyy-MM-dd")
    string buyRatings        = str.tostring(syminfo.recommendations_buy)
    string strongBuyRatings  = str.tostring(syminfo.recommendations_buy_strong)
    string sellRatings       = str.tostring(syminfo.recommendations_sell)
    string strongSellRatings = str.tostring(syminfo.recommendations_sell_strong)
    string holdRatings       = str.tostring(syminfo.recommendations_hold)
    string totalRatings      = str.tostring(syminfo.recommendations_total)
    // Add value cells
    table.cell(ratings, 0, 1, startDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 1, endDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 1, buyRatings, bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 1, strongBuyRatings, bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 1, sellRatings, bgcolor = color.maroon, text_color = #000000, text_size = size.large)
```

こちらもご覧ください

[syminfo.recommendations\_buy](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_buy) [syminfo.recommendations\_buy\_strong](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_buy_strong) [syminfo.recommendations\_date](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_date) [syminfo.recommendations\_total](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_total) [syminfo.recommendations\_sell](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_sell) [syminfo.recommendations\_sell\_strong](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_sell_strong)

### syminfo.recommendations\_sell

現在のシンボルに対して「売り」の評価をしたアナリストの数です。

タイプ

series int

例

```
//@version=5
indicator("syminfo recommendations", overlay = true)
//@variable A table containing information about analyst recommendations.
var table ratings = table.new(position.top_right, 8, 2, frame_color = #000000)
if barstate.islastconfirmedhistory
    //@variable The time value one year from the date of the last analyst recommendations.
    int YTD = syminfo.target_price_date + timeframe.in_seconds("12M") * 1000
    // Add header cells.
    table.cell(ratings, 0, 0, "Start Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 0, "End Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 0, "Buy", bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 0, "Strong Buy", bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 0, "Sell", bgcolor = color.maroon, text_color = #000000, text_size = size.large)
    table.cell(ratings, 5, 0, "Strong Sell", bgcolor = color.red, text_color = #000000, text_size = size.large)
    table.cell(ratings, 6, 0, "Hold", bgcolor = color.orange, text_color = #000000, text_size = size.large)
    table.cell(ratings, 7, 0, "Total", bgcolor = color.silver, text_color = #000000, text_size = size.large)
    // Recommendation strings
    string startDate         = str.format_time(syminfo.recommendations_date, "yyyy-MM-dd")
    string endDate           = str.format_time(YTD, "yyyy-MM-dd")
    string buyRatings        = str.tostring(syminfo.recommendations_buy)
    string strongBuyRatings  = str.tostring(syminfo.recommendations_buy_strong)
    string sellRatings       = str.tostring(syminfo.recommendations_sell)
    string strongSellRatings = str.tostring(syminfo.recommendations_sell_strong)
    string holdRatings       = str.tostring(syminfo.recommendations_hold)
    string totalRatings      = str.tostring(syminfo.recommendations_total)
    // Add value cells
    table.cell(ratings, 0, 1, startDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 1, endDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 1, buyRatings, bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 1, strongBuyRatings, bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 1, sellRatings, bgcolor = color.maroon, text_color = #000000, text_size = size.large)
```

こちらもご覧ください

[syminfo.recommendations\_buy](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_buy) [syminfo.recommendations\_buy\_strong](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_buy_strong) [syminfo.recommendations\_date](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_date) [syminfo.recommendations\_hold](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_hold) [syminfo.recommendations\_total](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_total) [syminfo.recommendations\_sell\_strong](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_sell_strong)

### syminfo.recommendations\_sell\_strong

現在のシンボルに対して「強い売り」の評価をしたアナリストの数です。

タイプ

series int

例

```
//@version=5
indicator("syminfo recommendations", overlay = true)
//@variable A table containing information about analyst recommendations.
var table ratings = table.new(position.top_right, 8, 2, frame_color = #000000)
if barstate.islastconfirmedhistory
    //@variable The time value one year from the date of the last analyst recommendations.
    int YTD = syminfo.target_price_date + timeframe.in_seconds("12M") * 1000
    // Add header cells.
    table.cell(ratings, 0, 0, "Start Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 0, "End Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 0, "Buy", bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 0, "Strong Buy", bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 0, "Sell", bgcolor = color.maroon, text_color = #000000, text_size = size.large)
    table.cell(ratings, 5, 0, "Strong Sell", bgcolor = color.red, text_color = #000000, text_size = size.large)
    table.cell(ratings, 6, 0, "Hold", bgcolor = color.orange, text_color = #000000, text_size = size.large)
    table.cell(ratings, 7, 0, "Total", bgcolor = color.silver, text_color = #000000, text_size = size.large)
    // Recommendation strings
    string startDate         = str.format_time(syminfo.recommendations_date, "yyyy-MM-dd")
    string endDate           = str.format_time(YTD, "yyyy-MM-dd")
    string buyRatings        = str.tostring(syminfo.recommendations_buy)
    string strongBuyRatings  = str.tostring(syminfo.recommendations_buy_strong)
    string sellRatings       = str.tostring(syminfo.recommendations_sell)
    string strongSellRatings = str.tostring(syminfo.recommendations_sell_strong)
    string holdRatings       = str.tostring(syminfo.recommendations_hold)
    string totalRatings      = str.tostring(syminfo.recommendations_total)
    // Add value cells
    table.cell(ratings, 0, 1, startDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 1, endDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 1, buyRatings, bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 1, strongBuyRatings, bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 1, sellRatings, bgcolor = color.maroon, text_color = #000000, text_size = size.large)
```

こちらもご覧ください

[syminfo.recommendations\_buy](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_buy) [syminfo.recommendations\_buy\_strong](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_buy_strong) [syminfo.recommendations\_date](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_date) [syminfo.recommendations\_hold](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_hold) [syminfo.recommendations\_total](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_total) [syminfo.recommendations\_sell](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_sell)

### syminfo.recommendations\_total

現在のシンボルに対する評価の総数です。

タイプ

series int

例

```
//@version=5
indicator("syminfo recommendations", overlay = true)
//@variable A table containing information about analyst recommendations.
var table ratings = table.new(position.top_right, 8, 2, frame_color = #000000)
if barstate.islastconfirmedhistory
    //@variable The time value one year from the date of the last analyst recommendations.
    int YTD = syminfo.target_price_date + timeframe.in_seconds("12M") * 1000
    // Add header cells.
    table.cell(ratings, 0, 0, "Start Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 0, "End Date", bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 0, "Buy", bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 0, "Strong Buy", bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 0, "Sell", bgcolor = color.maroon, text_color = #000000, text_size = size.large)
    table.cell(ratings, 5, 0, "Strong Sell", bgcolor = color.red, text_color = #000000, text_size = size.large)
    table.cell(ratings, 6, 0, "Hold", bgcolor = color.orange, text_color = #000000, text_size = size.large)
    table.cell(ratings, 7, 0, "Total", bgcolor = color.silver, text_color = #000000, text_size = size.large)
    // Recommendation strings
    string startDate         = str.format_time(syminfo.recommendations_date, "yyyy-MM-dd")
    string endDate           = str.format_time(YTD, "yyyy-MM-dd")
    string buyRatings        = str.tostring(syminfo.recommendations_buy)
    string strongBuyRatings  = str.tostring(syminfo.recommendations_buy_strong)
    string sellRatings       = str.tostring(syminfo.recommendations_sell)
    string strongSellRatings = str.tostring(syminfo.recommendations_sell_strong)
    string holdRatings       = str.tostring(syminfo.recommendations_hold)
    string totalRatings      = str.tostring(syminfo.recommendations_total)
    // Add value cells
    table.cell(ratings, 0, 1, startDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 1, 1, endDate, bgcolor = color.gray, text_color = #000000, text_size = size.large)
    table.cell(ratings, 2, 1, buyRatings, bgcolor = color.teal, text_color = #000000, text_size = size.large)
    table.cell(ratings, 3, 1, strongBuyRatings, bgcolor = color.lime, text_color = #000000, text_size = size.large)
    table.cell(ratings, 4, 1, sellRatings, bgcolor = color.maroon, text_color = #000000, text_size = size.large)
```

こちらもご覧ください

[syminfo.recommendations\_buy](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_buy) [syminfo.recommendations\_buy\_strong](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_buy_strong) [syminfo.recommendations\_date](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_date) [syminfo.recommendations\_hold](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_hold) [syminfo.recommendations\_sell](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_sell) [syminfo.recommendations\_sell\_strong](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.recommendations_sell_strong)

### syminfo.root

先物取引の様なデリバティブのルート。他のシンボルでは [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) と同じ値を返します。

タイプ

simple string

例

```
//@version=5
indicator("syminfo.root")

// If the current chart symbol is continuous futures ('ES1!'), it would display 'ES'.
if barstate.islastconfirmedhistory
    label.new(bar_index, high, syminfo.root)
```

こちらもご覧ください

[syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid)

### syminfo.sector

そのシンボルが属しているセクターを返します。シンボルにセクターがない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。例 : 「電子テクノロジー」、「テクノロジーサービス」、「エネルギー鉱物」、「耐久消費財」など。チャートの「シンボル情報」ウィンドウで確認できる値と同じになっています。

タイプ

simple string

備考

「セクター」は経済の分野のうちで広い部分を指しています。「業種」は、それよりも狭い分類になります。例えば、NASDAQ:CAT（キャタピラー社）は、セクターとしては「生産財製造」に属し、業種としては「トラック／建設機械／農業機械」に属しています。

### syminfo.session

チャートメイン系列のセッションタイプ。可能な値は [session.regular](https://jp.tradingview.com/pine-script-reference/v5/#const_session.regular), [session.extended](https://jp.tradingview.com/pine-script-reference/v5/#const_session.extended) です。

タイプ

simple string

こちらもご覧ください

[session.regular](https://jp.tradingview.com/pine-script-reference/v5/#const_session.regular) [session.extended](https://jp.tradingview.com/pine-script-reference/v5/#const_session.extended)

### syminfo.shareholders

企業の株主数です。

タイプ

simple int

例

```
//@version=5
indicator("syminfo simple")
//@variable A table containing information about a company's employees, shareholders, and shares.
var result_table = table.new(position = position.top_right, columns = 2, rows = 5, border_width = 1)
if barstate.islastconfirmedhistory
    // Add header cells
    table.cell(table_id = result_table, column = 0, row = 0, text = "name")
    table.cell(table_id = result_table, column = 1, row = 0, text = "value")
    // Add employee info cells.
    table.cell(table_id = result_table, column = 0, row = 1, text = "employees")
    table.cell(table_id = result_table, column = 1, row = 1, text = str.tostring(syminfo.employees))
    // Add shareholder cells.
    table.cell(table_id = result_table, column = 0, row = 2, text = "shareholders")
    table.cell(table_id = result_table, column = 1, row = 2, text = str.tostring(syminfo.shareholders))
    // Add float shares outstanding cells.
    table.cell(table_id = result_table, column = 0, row = 3, text = "shares_outstanding_float")
    table.cell(table_id = result_table, column = 1, row = 3, text = str.tostring(syminfo.shares_outstanding_float))
    // Add total shares outstanding cells.
    table.cell(table_id = result_table, column = 0, row = 4, text = "shares_outstanding_total")
    table.cell(table_id = result_table, column = 1, row = 4, text = str.tostring(syminfo.shares_outstanding_total))
```

こちらもご覧ください

[syminfo.employees](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.employees) [syminfo.shares\_outstanding\_float](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.shares_outstanding_float) [syminfo.shares\_outstanding\_total](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.shares_outstanding_total)

### syminfo.shares\_outstanding\_float

企業の発行済株式総数（譲渡制限株式を除いたもの）です。

タイプ

simple float

例

```
//@version=5
indicator("syminfo simple")
//@variable A table containing information about a company's employees, shareholders, and shares.
var result_table = table.new(position = position.top_right, columns = 2, rows = 5, border_width = 1)
if barstate.islastconfirmedhistory
    // Add header cells
    table.cell(table_id = result_table, column = 0, row = 0, text = "name")
    table.cell(table_id = result_table, column = 1, row = 0, text = "value")
    // Add employee info cells.
    table.cell(table_id = result_table, column = 0, row = 1, text = "employees")
    table.cell(table_id = result_table, column = 1, row = 1, text = str.tostring(syminfo.employees))
    // Add shareholder cells.
    table.cell(table_id = result_table, column = 0, row = 2, text = "shareholders")
    table.cell(table_id = result_table, column = 1, row = 2, text = str.tostring(syminfo.shareholders))
    // Add float shares outstanding cells.
    table.cell(table_id = result_table, column = 0, row = 3, text = "shares_outstanding_float")
    table.cell(table_id = result_table, column = 1, row = 3, text = str.tostring(syminfo.shares_outstanding_float))
    // Add total shares outstanding cells.
    table.cell(table_id = result_table, column = 0, row = 4, text = "shares_outstanding_total")
    table.cell(table_id = result_table, column = 1, row = 4, text = str.tostring(syminfo.shares_outstanding_total))
```

こちらもご覧ください

[syminfo.employees](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.employees) [syminfo.shareholders](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.shareholders) [syminfo.shares\_outstanding\_total](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.shares_outstanding_total)

### syminfo.shares\_outstanding\_total

企業の発行済株式総数（内部関係者、大株主、従業員が保有する譲渡制限付き株式を含むもの）です。

タイプ

simple int

例

```
//@version=5
indicator("syminfo simple")
//@variable A table containing information about a company's employees, shareholders, and shares.
var result_table = table.new(position = position.top_right, columns = 2, rows = 5, border_width = 1)
if barstate.islastconfirmedhistory
    // Add header cells
    table.cell(table_id = result_table, column = 0, row = 0, text = "name")
    table.cell(table_id = result_table, column = 1, row = 0, text = "value")
    // Add employee info cells.
    table.cell(table_id = result_table, column = 0, row = 1, text = "employees")
    table.cell(table_id = result_table, column = 1, row = 1, text = str.tostring(syminfo.employees))
    // Add shareholder cells.
    table.cell(table_id = result_table, column = 0, row = 2, text = "shareholders")
    table.cell(table_id = result_table, column = 1, row = 2, text = str.tostring(syminfo.shareholders))
    // Add float shares outstanding cells.
    table.cell(table_id = result_table, column = 0, row = 3, text = "shares_outstanding_float")
    table.cell(table_id = result_table, column = 1, row = 3, text = str.tostring(syminfo.shares_outstanding_float))
    // Add total shares outstanding cells.
    table.cell(table_id = result_table, column = 0, row = 4, text = "shares_outstanding_total")
    table.cell(table_id = result_table, column = 1, row = 4, text = str.tostring(syminfo.shares_outstanding_total))
```

こちらもご覧ください

[syminfo.employees](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.employees) [syminfo.shareholders](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.shareholders) [syminfo.shares\_outstanding\_float](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.shares_outstanding_float)

### syminfo.target\_price\_average

そのシンボルについてアナリストが予想した直近1年間の目標価格を平均したものです。

タイプ

series float

例

```
//@version=5
indicator("syminfo target_price")
if barstate.islastconfirmedhistory
    //@variable The time value one year from the date of the last analyst recommendations.
    int YTD = syminfo.target_price_date + timeframe.in_seconds("12M") * 1000
    //@variable A line connecting the current `close` to the highest yearly price estimate.
    highLine = line.new(time, close, YTD, syminfo.target_price_high, color = color.green, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the lowest yearly price estimate.
    lowLine = line.new(time, close, YTD, syminfo.target_price_low, color = color.red, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the median yearly price estimate.
    medianLine = line.new(time, close, YTD, syminfo.target_price_median, color = color.gray, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the average yearly price estimate.
    averageLine = line.new(time, close, YTD, syminfo.target_price_average, color = color.orange, xloc = xloc.bar_time)
    // Fill the space between targets
    linefill.new(lowLine, medianLine, color.new(color.red, 90))
    linefill.new(medianLine, highLine, color.new(color.green, 90))
    // Create a label displaying the total number of analyst estimates.
    string estimatesText = str.format("Number of estimates: {0}", syminfo.target_price_estimates)
    label.new(bar_index, close, estimatesText, textcolor = color.white, size = size.large)
```

こちらもご覧ください

[syminfo.target\_price\_date](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_date) [syminfo.target\_price\_estimates](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_estimates) [syminfo.target\_price\_high](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_high) [syminfo.target\_price\_low](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_low) [syminfo.target\_price\_median](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_median)

### syminfo.target\_price\_date

現在のシンボルに対する直近の目標価格予測が開始された日です。

タイプ

series int

例

```
//@version=5
indicator("syminfo target_price")
if barstate.islastconfirmedhistory
    //@variable The time value one year from the date of the last analyst recommendations.
    int YTD = syminfo.target_price_date + timeframe.in_seconds("12M") * 1000
    //@variable A line connecting the current `close` to the highest yearly price estimate.
    highLine = line.new(time, close, YTD, syminfo.target_price_high, color = color.green, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the lowest yearly price estimate.
    lowLine = line.new(time, close, YTD, syminfo.target_price_low, color = color.red, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the median yearly price estimate.
    medianLine = line.new(time, close, YTD, syminfo.target_price_median, color = color.gray, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the average yearly price estimate.
    averageLine = line.new(time, close, YTD, syminfo.target_price_average, color = color.orange, xloc = xloc.bar_time)
    // Fill the space between targets
    linefill.new(lowLine, medianLine, color.new(color.red, 90))
    linefill.new(medianLine, highLine, color.new(color.green, 90))
    // Create a label displaying the total number of analyst estimates.
    string estimatesText = str.format("Number of estimates: {0}", syminfo.target_price_estimates)
    label.new(bar_index, close, estimatesText, textcolor = color.white, size = size.large)
```

こちらもご覧ください

[syminfo.target\_price\_average](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_average) [syminfo.target\_price\_estimates](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_estimates) [syminfo.target\_price\_high](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_high) [syminfo.target\_price\_low](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_low) [syminfo.target\_price\_median](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_median)

### syminfo.target\_price\_estimates

現在のシンボルに対する直近の目標価格予測の総数です。

タイプ

series float

例

```
//@version=5
indicator("syminfo target_price")
if barstate.islastconfirmedhistory
    //@variable The time value one year from the date of the last analyst recommendations.
    int YTD = syminfo.target_price_date + timeframe.in_seconds("12M") * 1000
    //@variable A line connecting the current `close` to the highest yearly price estimate.
    highLine = line.new(time, close, YTD, syminfo.target_price_high, color = color.green, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the lowest yearly price estimate.
    lowLine = line.new(time, close, YTD, syminfo.target_price_low, color = color.red, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the median yearly price estimate.
    medianLine = line.new(time, close, YTD, syminfo.target_price_median, color = color.gray, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the average yearly price estimate.
    averageLine = line.new(time, close, YTD, syminfo.target_price_average, color = color.orange, xloc = xloc.bar_time)
    // Fill the space between targets
    linefill.new(lowLine, medianLine, color.new(color.red, 90))
    linefill.new(medianLine, highLine, color.new(color.green, 90))
    // Create a label displaying the total number of analyst estimates.
    string estimatesText = str.format("Number of estimates: {0}", syminfo.target_price_estimates)
    label.new(bar_index, close, estimatesText, textcolor = color.white, size = size.large)
```

こちらもご覧ください

[syminfo.target\_price\_average](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_average) [syminfo.target\_price\_date](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_date) [syminfo.target\_price\_high](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_high) [syminfo.target\_price\_low](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_low) [syminfo.target\_price\_median](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_median)

### syminfo.target\_price\_high

そのシンボルについてアナリストが予想した直近1年間の目標価格の最高値です。

タイプ

series float

例

```
//@version=5
indicator("syminfo target_price")
if barstate.islastconfirmedhistory
    //@variable The time value one year from the date of the last analyst recommendations.
    int YTD = syminfo.target_price_date + timeframe.in_seconds("12M") * 1000
    //@variable A line connecting the current `close` to the highest yearly price estimate.
    highLine = line.new(time, close, YTD, syminfo.target_price_high, color = color.green, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the lowest yearly price estimate.
    lowLine = line.new(time, close, YTD, syminfo.target_price_low, color = color.red, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the median yearly price estimate.
    medianLine = line.new(time, close, YTD, syminfo.target_price_median, color = color.gray, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the average yearly price estimate.
    averageLine = line.new(time, close, YTD, syminfo.target_price_average, color = color.orange, xloc = xloc.bar_time)
    // Fill the space between targets
    linefill.new(lowLine, medianLine, color.new(color.red, 90))
    linefill.new(medianLine, highLine, color.new(color.green, 90))
    // Create a label displaying the total number of analyst estimates.
    string estimatesText = str.format("Number of estimates: {0}", syminfo.target_price_estimates)
    label.new(bar_index, close, estimatesText, textcolor = color.white, size = size.large)
```

こちらもご覧ください

[syminfo.target\_price\_average](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_average) [syminfo.target\_price\_date](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_date) [syminfo.target\_price\_estimates](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_estimates) [syminfo.target\_price\_low](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_low) [syminfo.target\_price\_median](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_median)

### syminfo.target\_price\_low

そのシンボルについてアナリストが予想した直近1年間の目標価格の最安値です。

タイプ

series float

例

```
//@version=5
indicator("syminfo target_price")
if barstate.islastconfirmedhistory
    //@variable The time value one year from the date of the last analyst recommendations.
    int YTD = syminfo.target_price_date + timeframe.in_seconds("12M") * 1000
    //@variable A line connecting the current `close` to the highest yearly price estimate.
    highLine = line.new(time, close, YTD, syminfo.target_price_high, color = color.green, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the lowest yearly price estimate.
    lowLine = line.new(time, close, YTD, syminfo.target_price_low, color = color.red, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the median yearly price estimate.
    medianLine = line.new(time, close, YTD, syminfo.target_price_median, color = color.gray, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the average yearly price estimate.
    averageLine = line.new(time, close, YTD, syminfo.target_price_average, color = color.orange, xloc = xloc.bar_time)
    // Fill the space between targets
    linefill.new(lowLine, medianLine, color.new(color.red, 90))
    linefill.new(medianLine, highLine, color.new(color.green, 90))
    // Create a label displaying the total number of analyst estimates.
    string estimatesText = str.format("Number of estimates: {0}", syminfo.target_price_estimates)
    label.new(bar_index, close, estimatesText, textcolor = color.white, size = size.large)
```

こちらもご覧ください

[syminfo.target\_price\_average](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_average) [syminfo.target\_price\_date](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_date) [syminfo.target\_price\_estimates](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_estimates) [syminfo.target\_price\_high](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_high) [syminfo.target\_price\_median](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_median)

### syminfo.target\_price\_median

そのシンボルについてアナリストが予想した直近1年間の目標価格の中央値です。

タイプ

series float

例

```
//@version=5
indicator("syminfo target_price")
if barstate.islastconfirmedhistory
    //@variable The time value one year from the date of the last analyst recommendations.
    int YTD = syminfo.target_price_date + timeframe.in_seconds("12M") * 1000
    //@variable A line connecting the current `close` to the highest yearly price estimate.
    highLine = line.new(time, close, YTD, syminfo.target_price_high, color = color.green, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the lowest yearly price estimate.
    lowLine = line.new(time, close, YTD, syminfo.target_price_low, color = color.red, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the median yearly price estimate.
    medianLine = line.new(time, close, YTD, syminfo.target_price_median, color = color.gray, xloc = xloc.bar_time)
    //@variable A line connecting the current `close` to the average yearly price estimate.
    averageLine = line.new(time, close, YTD, syminfo.target_price_average, color = color.orange, xloc = xloc.bar_time)
    // Fill the space between targets
    linefill.new(lowLine, medianLine, color.new(color.red, 90))
    linefill.new(medianLine, highLine, color.new(color.green, 90))
    // Create a label displaying the total number of analyst estimates.
    string estimatesText = str.format("Number of estimates: {0}", syminfo.target_price_estimates)
    label.new(bar_index, close, estimatesText, textcolor = color.white, size = size.large)
```

こちらもご覧ください

[syminfo.target\_price\_average](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_average) [syminfo.target\_price\_date](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_date) [syminfo.target\_price\_estimates](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_estimates) [syminfo.target\_price\_high](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_high) [syminfo.target\_price\_low](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.target_price_low)

### syminfo.ticker

取引所のプレフィックスを含まないシンボル名、例. 'MSFT'。

タイプ

simple string

こちらもご覧ください

[syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) [timeframe.multiplier](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.multiplier) [syminfo.root](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.root)

### syminfo.tickerid

シンボルを表すティッカー識別子をフル形式で返します。`ticker` または `symbol` パラメーターを含む関数の引数として使用します。これは常に (取引所を表す) プレフィックスとティッカーをコロンで区切った形式 ("NASDAQ:AAPL") になりますが、配当調整、チャートタイプ、通貨変換など、その他のシンボルデータも含むことができます。

タイプ

simple string

備考

この変数の値は "prefix:ticker" というシンプルな形式を常に使用するわけではないので、ブーリアン比較や文字列操作の関数での使用には向いていません。こうした状況では、変数の結果を [ticker.standard](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.standard) に通して純化してください。これによって余計な情報が取り除かれ、 "prefix:ticker" 構造でフォーマットされたティッカー識別子が一貫して返されます。

こちらもご覧ください

[ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) [syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) [timeframe.multiplier](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.multiplier) [syminfo.root](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.root)

### syminfo.timezone

チャートのメイン系列の取引所のタイムゾーン。可能な値は [timestamp](https://jp.tradingview.com/pine-script-reference/v5/#fun_timestamp) をご覧ください。

タイプ

simple string

こちらもご覧ください

[timestamp](https://jp.tradingview.com/pine-script-reference/v5/#fun_timestamp)

### syminfo.type

そのシンボルが属するマーケットのタイプです。以下の値があります: "stock", "fund", "dr", "right", "bond", "warrant", "structured", "index", "forex", "futures", "spread", "economic", "fundamental", "crypto", "spot", "swap", "option", "commodity"

タイプ

simple string

こちらもご覧ください

[syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker)

### syminfo.volumetype

現在のシンボルの出来高タイプです。可能な値は: 基軸通貨は "base"、決済通貨は "quote"、取引回数は "tick"、出来高がない場合またはタイプの指定がない場合は "n/a" です。

タイプ

simple string

備考

一部のデータフィード提供元のみが、補足の出来高を情報を提供します。結果として、この変数は一部のシンボル（主に暗号セクター）のみで値を返します。

こちらもご覧ください

[syminfo.type](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.type)

### ta.accdist

アキュムレーション／ディストリビューションインデックス。

タイプ

series float

### ta.iii

イントラデイ・インテンシティ・インデックス。

タイプ

series float

例

```
//@version=5
indicator("Intraday Intensity Index")
plot(ta.iii, color=color.yellow)

// the same on pine
f_iii() =>
    (2 * close - high - low) / ((high - low) * volume)

plot(f_iii())
```

### ta.nvi

ネガティブ・ボリューム・インデックス。

タイプ

series float

例

```
//@version=5
indicator("Negative Volume Index")

plot(ta.nvi, color=color.yellow)

// the same on pine
f_nvi() =>
    float ta_nvi = 1.0
    float prevNvi = (nz(ta_nvi[1], 0.0) == 0.0)  ? 1.0: ta_nvi[1]
    if nz(close, 0.0) == 0.0 or nz(close[1], 0.0) == 0.0
        ta_nvi := prevNvi
    else
        ta_nvi := (volume < nz(volume[1], 0.0)) ? prevNvi + ((close - close[1]) / close[1]) * prevNvi : prevNvi
    result = ta_nvi

plot(f_nvi())
```

### ta.obv

オン・バランス・ボリューム。

タイプ

series float

例

```
//@version=5
indicator("On Balance Volume")
plot(ta.obv, color=color.yellow)

// the same on pine
f_obv() =>
    ta.cum(math.sign(ta.change(close)) * volume)

plot(f_obv())
```

### ta.pvi

ポジティブ・ボリューム・インデックス。

タイプ

series float

例

```
//@version=5
indicator("Positive Volume Index")

plot(ta.pvi, color=color.yellow)

// the same on pine
f_pvi() =>
    float ta_pvi = 1.0
    float prevPvi = (nz(ta_pvi[1], 0.0) == 0.0)  ? 1.0: ta_pvi[1]
    if nz(close, 0.0) == 0.0 or nz(close[1], 0.0) == 0.0
        ta_pvi := prevPvi
    else
        ta_pvi := (volume > nz(volume[1], 0.0)) ? prevPvi + ((close - close[1]) / close[1]) * prevPvi : prevPvi
    result = ta_pvi

plot(f_pvi())
```

### ta.pvt

プライス・ボリューム・トレンド。

タイプ

series float

例

```
//@version=5
indicator("Price-Volume Trend")
plot(ta.pvt, color=color.yellow)

// the same on pine
f_pvt() =>
    ta.cum((ta.change(close) / close[1]) * volume)

plot(f_pvt())
```

### ta.tr

トゥルー・レンジで、`ta.tr(handle_na = false)` と等しくなります。`math.max(high - low, math.abs(high - close[1]), math.abs(low - close[1]))` として計算されます。

タイプ

series float

こちらもご覧ください

[ta.tr](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.tr) [ta.atr](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.atr)

### ta.vwap

出来高加重平均価格 (VWAP)。ソース系列として [hlc3](https://jp.tradingview.com/pine-script-reference/v5/#var_hlc3) を使用します。

タイプ

series float

こちらもご覧ください

[ta.vwap](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.vwap)

### ta.wad

ウィリアムズ・アキュムレーション／ディストリビューション。

タイプ

series float

例

```
//@version=5
indicator("Williams Accumulation/Distribution")
plot(ta.wad, color=color.yellow)

// the same on pine
f_wad() =>
    trueHigh = math.max(high, close[1])
    trueLow = math.min(low, close[1])
    mom = ta.change(close)
    gain = (mom > 0) ? close - trueLow : (mom < 0) ? close - trueHigh : 0
    ta.cum(gain)

plot(f_wad())
```

### ta.wvad

ウィリアムズ・可変アキュムレーション／ディストリビューション。

タイプ

series float

例

```
//@version=5
indicator("Williams Variable Accumulation/Distribution")
plot(ta.wvad, color=color.yellow)

// the same on pine
f_wvad() =>
    (close - open) / (high - low) * volume

plot(f_wvad())
```

### table.all

スクリプトによって現在描画されているすべてのテーブルで満たされた配列を返します。

タイプ

array<table>

例

```
//@version=5
indicator("table.all")
//delete all tables
table.new(position = position.top_right, columns = 2, rows = 1, bgcolor = color.yellow, border_width = 1)
a_allTables = table.all
if array.size(a_allTables) > 0
    for i = 0 to array.size(a_allTables) - 1
        table.delete(array.get(a_allTables, i))
```

備考

この配列は読み取り専用です。配列のインデックス0は、チャート上で最も古いオブジェクトのIDを示します。

こちらもご覧ください

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [line.all](https://jp.tradingview.com/pine-script-reference/v5/#var_line.all) [label.all](https://jp.tradingview.com/pine-script-reference/v5/#var_label.all) [box.all](https://jp.tradingview.com/pine-script-reference/v5/#var_box.all)

### time

UNIX形式の現在のバーの時間。UNIX形式とは1970年1月1日00:00:00 (UTC) から経過したミリ秒数です。

タイプ

series int

備考

この変数はバーの開始時刻に基づくタイムスタンプを返す事にご注意下さい。その為、オーバーナイトセッションでは（例．月曜のセッションが日曜日の17:00 UTC-4に始まるEURUSD）、この変数は指定した取引日の日付より前の時間を返す場合があります。例えばEURUSDでは、当日のバーが実際には1日前に開くため、`dayofmonth(time)` は取引日の日付よりも1つ少なくなる可能性があります。

こちらもご覧ください

[time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [time\_close](https://jp.tradingview.com/pine-script-reference/v5/#var_time_close) [timenow](https://jp.tradingview.com/pine-script-reference/v5/#var_timenow) [year](https://jp.tradingview.com/pine-script-reference/v5/#var_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#var_month) [weekofyear](https://jp.tradingview.com/pine-script-reference/v5/#var_weekofyear) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#var_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#var_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#var_second)

### time\_close

現在のバーの終値の時刻をUNIX形式で示します。これは1970年1月1日00:00:00 UTCからの経過ミリ秒数を表したものです。ティックチャートや価格ベースのチャート（練行足、カギ足、新値足、ポイント＆フィギュア、レンジ）では、この変数の系列は、最新のリアルタイムのバーについて [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) のタイムスタンプを保持します（将来の確定時間が予測できないため）が、それ以前のバーについてはいずれも定義どおりのタイムスタンプを保持します。

タイプ

series int

こちらもご覧ください

[time](https://jp.tradingview.com/pine-script-reference/v5/#var_time) [timenow](https://jp.tradingview.com/pine-script-reference/v5/#var_timenow) [year](https://jp.tradingview.com/pine-script-reference/v5/#var_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#var_month) [weekofyear](https://jp.tradingview.com/pine-script-reference/v5/#var_weekofyear) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#var_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#var_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#var_second)

### time\_tradingday

現在のバーが属する取引日の開始時刻。UNIX形式（1970年1月1日00時00分00秒(UTC) からの経過ミリ秒数）です。

タイプ

series int

備考

この変数は、当日のセッションがカレンダー日付の前日で始まるようなオーバーナイトセッションに利用すると便利です（たとえば、FXCM:EURUSDにおいては、月曜日のセッション開始が取引所のタイムゾーンでは日曜日の17:00になります）。月曜日の日足バーに対して「日曜日 17:00」のタイムスタンプを返す `time` とは異なり、`time_tradingday` では「月曜日 00:00 UTC」のタイムスタンプを返します。

1D以上のタイムフレームで使用した場合、`time_tradingday` は、バー内の最後の取引日を返します（例: 1Wの場合、週の最終取引日を返します）。

こちらもご覧ください

[time](https://jp.tradingview.com/pine-script-reference/v5/#var_time) [time\_close](https://jp.tradingview.com/pine-script-reference/v5/#var_time_close)

### timeframe.isdaily

現在の時間足が日足の場合には true を返し、そうでない場合は false を返します。

タイプ

simple bool

こちらもご覧ください

[timeframe.isdwm](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdwm) [timeframe.isintraday](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isintraday) [timeframe.isminutes](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isminutes) [timeframe.isseconds](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isseconds) [timeframe.isticks](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isticks) [timeframe.isweekly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isweekly) [timeframe.ismonthly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.ismonthly)

### timeframe.isdwm

現在の時間足が日足、週足、月足の場合には true を返し、そうでない場合は false を返します。

タイプ

simple bool

こちらもご覧ください

[timeframe.isintraday](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isintraday) [timeframe.isminutes](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isminutes) [timeframe.isseconds](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isseconds) [timeframe.isticks](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isticks) [timeframe.isdaily](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdaily) [timeframe.isweekly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isweekly) [timeframe.ismonthly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.ismonthly)

### timeframe.isintraday

現在の時間足がイントラデイの時間足（分足や秒足など）の場合には true を返し、そうでない場合は false を返します。

タイプ

simple bool

こちらもご覧ください

[timeframe.isminutes](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isminutes) [timeframe.isseconds](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isseconds) [timeframe.isticks](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isticks) [timeframe.isdwm](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdwm) [timeframe.isdaily](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdaily) [timeframe.isweekly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isweekly) [timeframe.ismonthly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.ismonthly)

### timeframe.isminutes

現在の時間足が分足の場合には true を返し、そうでない場合は false を返します。

タイプ

simple bool

こちらもご覧ください

[timeframe.isdwm](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdwm) [timeframe.isintraday](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isintraday) [timeframe.isseconds](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isseconds) [timeframe.isticks](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isticks) [timeframe.isdaily](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdaily) [timeframe.isweekly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isweekly) [timeframe.ismonthly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.ismonthly)

### timeframe.ismonthly

現在の時間足が月足の場合には true を返し、そうでない場合は false を返します。

タイプ

simple bool

こちらもご覧ください

[timeframe.isdwm](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdwm) [timeframe.isintraday](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isintraday) [timeframe.isminutes](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isminutes) [timeframe.isseconds](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isseconds) [timeframe.isticks](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isticks) [timeframe.isdaily](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdaily) [timeframe.isweekly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isweekly)

### timeframe.isseconds

現在の時間足が秒足の場合には true を返し、そうでない場合は false を返します。

タイプ

simple bool

こちらもご覧ください

[timeframe.isdwm](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdwm) [timeframe.isintraday](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isintraday) [timeframe.isminutes](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isminutes) [timeframe.isticks](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isticks) [timeframe.isdaily](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdaily) [timeframe.isweekly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isweekly) [timeframe.ismonthly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.ismonthly)

### timeframe.isticks

現在の時間足がティックベースの場合には true を返し、そうでない場合は false を返します。

タイプ

simple bool

こちらもご覧ください

[timeframe.isdwm](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdwm) [timeframe.isintraday](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isintraday) [timeframe.isminutes](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isminutes) [timeframe.isseconds](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isseconds) [timeframe.isdaily](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdaily) [timeframe.isweekly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isweekly) [timeframe.ismonthly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.ismonthly)

### timeframe.isweekly

現在の時間足が週足の場合には true を返し、そうでない場合は false を返します。

タイプ

simple bool

こちらもご覧ください

[timeframe.isdwm](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdwm) [timeframe.isintraday](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isintraday) [timeframe.isminutes](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isminutes) [timeframe.isseconds](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isseconds) [timeframe.isticks](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isticks) [timeframe.isdaily](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.isdaily) [timeframe.ismonthly](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.ismonthly)

### timeframe.multiplier

時間足の数値。例．'60' - 60, 'D' - 1, '5D' - 5, '12M' - 12

タイプ

simple int

こちらもご覧ください

[syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period)

### timeframe.period

チャートの時間足を文字列で表現したものです。返される文字列のフォーマットは "\[<quantity>\]\[<units>\]" となっており、<quantity>や<units>の値がない場合もあります。<quantity>はunitsの数であり、その数が1の場合、値はありません。<unit>については、"S"が秒、"D"が日、 "W"が週、"M"が月を表しており、分に対する値はありません。また「時間」に対応する<unit>は存在しません。

この変数が返す値は: "10S" は10秒、 "60" は60分、 "D" は1日、 "2W" は2週、 "3M" は四半期です。

`timeframe` パラメーターを含んでいれば、どのような関数でも引数として使用できます。

タイプ

simple string

こちらもご覧ください

[syminfo.ticker](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.ticker) [syminfo.tickerid](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.tickerid) [timeframe.multiplier](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.multiplier)

### timenow

UNIX形式の現在の時間。UNIX形式とは1970年1月1日00:00:00 (UTC) から経過したミリ秒数です。

タイプ

series int

備考

この変数／関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性がある事にご注意下さい。

こちらもご覧ください

[timestamp](https://jp.tradingview.com/pine-script-reference/v5/#fun_timestamp) [time](https://jp.tradingview.com/pine-script-reference/v5/#var_time) [time\_close](https://jp.tradingview.com/pine-script-reference/v5/#var_time_close) [year](https://jp.tradingview.com/pine-script-reference/v5/#var_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#var_month) [weekofyear](https://jp.tradingview.com/pine-script-reference/v5/#var_weekofyear) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#var_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#var_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#var_second)

### volume

現在のバーの出来高。

タイプ

series float

備考

前のバーの値は、角括弧\[\]でアクセスすることができます。 例えばvolume\[1\]、volme\[2\]です。

こちらもご覧ください

[open](https://jp.tradingview.com/pine-script-reference/v5/#var_open) [high](https://jp.tradingview.com/pine-script-reference/v5/#var_high) [low](https://jp.tradingview.com/pine-script-reference/v5/#var_low) [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [hl2](https://jp.tradingview.com/pine-script-reference/v5/#var_hl2) [hlc3](https://jp.tradingview.com/pine-script-reference/v5/#var_hlc3) [hlcc4](https://jp.tradingview.com/pine-script-reference/v5/#var_hlcc4) [ohlc4](https://jp.tradingview.com/pine-script-reference/v5/#var_ohlc4)

### weekofyear

取引所のタイムゾーンでの現在のバーの週番号。

タイプ

series int

備考

この変数はバーの開始時刻に基づく週を返す事にご注意下さい。オーバーナイトセッションでは（例．月曜のセッションが日曜日の17:00 UTC-4に始まるEURUSD）、この値は取引日の週よりも1つ少なくなる可能性があります。

こちらもご覧ください

[weekofyear](https://jp.tradingview.com/pine-script-reference/v5/#fun_weekofyear) [time](https://jp.tradingview.com/pine-script-reference/v5/#var_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#var_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#var_month) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#var_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#var_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#var_second)

### year

取引所のタイムゾーンでの現在のバーの年。

タイプ

series int

備考

この変数はバーの開始時刻に基づく年を返す事にご注意下さい。オーバーナイトセッションでは（例．月曜のセッションが日曜日の17:00 UTC-4に始まるEURUSD）、この値は取引日の年よりも1つ少なくなる可能性があります。

こちらもご覧ください

[year](https://jp.tradingview.com/pine-script-reference/v5/#fun_year) [time](https://jp.tradingview.com/pine-script-reference/v5/#var_time) [month](https://jp.tradingview.com/pine-script-reference/v5/#var_month) [weekofyear](https://jp.tradingview.com/pine-script-reference/v5/#var_weekofyear) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#var_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#var_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#var_second)


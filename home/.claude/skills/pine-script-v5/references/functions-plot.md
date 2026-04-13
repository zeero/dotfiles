### barcolor()

バーの色を設定します。

構文

```
barcolor(color, offset, editable, show_last, title, display) → void
```

引数

color (series color) バーの色。'color=color.red' や 'color=#ff001a' といった定数や 'color = close >= open ? color.green : color.red' の様な複雑な式を利用できます。必須の引数です。

offset (series int) 指定された数のバー分、カラー系列を左または右に移動します。 デフォルトは 0 です。

editable (const bool) true の場合、設定ダイアログのスタイルタブでバーの色の選択が可能になります。デフォルトは true です。

show\_last (input int) 設定されている場合、チャート上に (直近のバーから過去に向かって) 表示するバーの数を定義します。

title (const string) barcolorのタイトル。オプション引数です。

display (input plot\_simple\_display) バーの色の表示を制御します。利用できる値は: [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

例

```
//@version=5
indicator("barcolor example", overlay=true)
barcolor(close < open ? color.black : color.white)
```

こちらもご覧ください

[bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_bgcolor) [plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [fill](https://jp.tradingview.com/pine-script-reference/v5/#fun_fill)

### bgcolor()

指定した色でバーの背景を塗りつぶします。

構文

```
bgcolor(color, offset, editable, show_last, title, display, force_overlay) → void
```

引数

color (series color) 塗りつぶしの背景色。'color=color.red' や 'color=#ff001a' といった定数や 'color = close >= open ? color.green : color.red' の様な複雑な式を利用できます。必須の引数です。

offset (series int) 指定された数のバー分、カラー系列を左または右に移動します。 デフォルトは 0 です。

editable (const bool) trueの場合、設定ダイアログのスタイルタブでバーの背景色の選択が可能になります。デフォルトは true です。

show\_last (input int) 設定されている場合、チャート上に (直近のバーから過去に向かって) 表示するバーの数を定義します。

title (const string) bgcolorのタイトル。オプション引数です。

display (input plot\_simple\_display) バーの背景色の表示を制御します。利用できる値は: [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

force\_overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトが別のペインを占めている場合でもプロットの結果はメインのチャートペインに表示されます。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("bgcolor example", overlay=true)
bgcolor(close < open ? color.new(color.red,70) : color.new(color.green, 70))
```

こちらもご覧ください

[barcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_barcolor) [plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [fill](https://jp.tradingview.com/pine-script-reference/v5/#fun_fill)

### fill()

3個の多重定義

2つのプロットまたはラインの間の背景を指定した色で塗りつぶします。

構文と多重定義

[```\\
fill(hline1, hline2, color, title, editable, fillgaps, display) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_fill-0) [```\\
fill(plot1, plot2, color, title, editable, show_last, fillgaps, display) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_fill-1) [```\\
fill(plot1, plot2, top_value, bottom_value, top_color, bottom_color, title, display, fillgaps, editable) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_fill-2)

引数

hline1 (hline) 1番目のhlineオブジェクト。 必須の引数。

hline2 (hline) 2番目のhlineオブジェクト。 必須の引数。

color (series color) 背景の塗りつぶしの色。'color=color.red' や 'color=#ff001a' といった定数の他、'color = close >= open ? color.green : color.red' のような複雑な式も使用できます。オプションの引数です。

title (const string) 作成された塗りつぶしオブジェクトのタイトル。オプション引数です。

editable (const bool) trueの場合、設定ダイアログのスタイルタブで塗りつぶしスタイルの選択が可能になります。デフォルトは true です。

fillgaps (const bool) いずれかの plot() の呼び出しが na の値を返した場合などギャップがある場合の塗りつぶしの継続を制御します。true の場合、最後の塗りつぶしがギャップでも継続されます。デフォルトは false です。

display (input plot\_simple\_display) 背景の塗りつぶしの表示を制御します。利用できる値は: [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

2つの水平線の間を塗りつぶす

例

```
//@version=5
indicator("Fill between hlines", overlay = false)
h1 = hline(20)
h2 = hline(10)
fill(h1, h2, color = color.new(color.blue, 90))
```

2つのプロットの間を塗りつぶす

例

```
//@version=5
indicator("Fill between plots", overlay = true)
p1 = plot(open)
p2 = plot(close)
fill(p1, p2, color = color.new(color.green, 90))
```

2つの水平線の間をグラデーションで塗りつぶす

例

```
//@version=5
indicator("Gradient Fill between hlines", overlay = false)
topVal = input.int(100)
botVal = input.int(0)
topCol = input.color(color.red)
botCol = input.color(color.blue)
topLine = hline(100, color = topCol, linestyle = hline.style_solid)
botLine = hline(0,   color = botCol, linestyle = hline.style_solid)
fill(topLine, botLine, topVal, botVal, topCol, botCol)
```

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [barcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_barcolor) [bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_bgcolor) [hline](https://jp.tradingview.com/pine-script-reference/v5/#fun_hline) [color.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.new)

### hline()

一定の固定価格レベルに水平線を描画します。

構文

```
hline(price, title, color, linestyle, linewidth, editable, display) → hline
```

引数

price (input int/float) オブジェクトがレンダリングされる価格の値。必須の引数です。

title (const string) オブジェクトのタイトル。

color (input color) レンダリングされる線の色。（式ではなく）定数値である必要があります。オプションです。

linestyle (input hline\_style) レンダリングされる線のスタイル。可能な値は [hline.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_hline.style_solid), [hline.style\_dotted](https://jp.tradingview.com/pine-script-reference/v5/#const_hline.style_dotted), [hline.style\_dashed](https://jp.tradingview.com/pine-script-reference/v5/#const_hline.style_dashed) です。オプション引数。

linewidth (input int) レンダリングされる線の幅。デフォルトは1です。

editable (const bool) trueの場合、設定ダイアログのスタイルタブでhilineのスタイルの選択が可能になります。デフォルトは true です。

display (input plot\_simple\_display) 水平線の表示を制御します。利用できる値は: [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

例

```
//@version=5
indicator("input.hline", overlay=true)
hline(3.14, title='Pi', color=color.blue, linestyle=hline.style_dotted, linewidth=2)

// You may fill the background between any two hlines with a fill() function:
h1 = hline(20)
h2 = hline(10)
fill(h1, h2, color=color.new(color.green, 90))
```

リターン

[fill](https://jp.tradingview.com/pine-script-reference/v5/#fun_fill) で使用される、hlineオブジェクト

こちらもご覧ください

[fill](https://jp.tradingview.com/pine-script-reference/v5/#fun_fill)

### plot()

チャート上にデータの系列をプロットします。

構文

```
plot(series, title, color, linewidth, style, trackprice, histbase, offset, join, editable, show_last, display, format, precision, force_overlay) → plot
```

引数

series (series int/float) プロットされるデータの系列。必須の引数です。

title (const string) plotのタイトル。

color (series color) plotの色。'color=color.red' や 'color=#ff001a' といった定数や 'color = close >= open ? color.green : color.red' の様な複雑な式を利用できます。オプション引数。

linewidth (input int) プロットされた線の幅。デフォルト値は1です。すべてのスタイルに適用できるわけではありません。

style (input plot\_style) プロットのタイプ。利用できる値は: [plot.style\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_line), [plot.style\_stepline](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline), [plot.style\_stepline\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline_diamond), [plot.style\_histogram](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_histogram), [plot.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_cross), [plot.style\_area](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_area), [plot.style\_columns](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_columns), [plot.style\_circles](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_circles), [plot.style\_linebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_linebr), [plot.style\_areabr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_areabr), [plot.style\_steplinebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_steplinebr) です。デフォルトは [plot.style\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_line) です。

trackprice (input bool) true の場合、インジケーターが示した最後の値に水平な価格線が表示されます。デフォルトは false です。

histbase (input int/float) [plot.style\_histogram](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_histogram), [plot.style\_columns](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_columns) または [plot.style\_area](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_area) スタイルでプロットをレンダリングする時に、参照レベルとして使用される価格の値。デフォルトは 0.0 です。

offset (series int) 指定された数のバー分、plotを左または右に移動します。 デフォルトは 0 です。

join (input bool) trueの場合、描画ポイントが線で結合されます。スタイル [plot.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_cross) と [plot.style\_circles](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_circles) にのみ適用可能です。デフォルトは false です。

editable (const bool) true の場合、設定ダイアログのスタイルタブで plot のスタイルの選択が可能になります。デフォルトは true です。

show\_last (input int) 設定されている場合、チャート上に (直近のバーから過去に向かって) プロットするバーの数を定義します。

display (input plot\_display) プロットの情報をどこに表示するかを制御します。表示オプションは加算と減算がサポートされています。つまり `display.all - display.status_line` を使用すると、スクリプトのステータスラインを除くすべての場所にプロットが表示されます。`display.price_scale + display.status_line` を使用すると、価格スケールとステータスラインにのみプロットが表示されます。`display.price_scale` のように `display` 引数が、ユーザーが制御できるチャート設定と同じ機能の場合、関連するプロットは設定が有効な場合にのみ表示されます。利用できる値は: [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.pane](https://jp.tradingview.com/pine-script-reference/v5/#const_display.pane)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.price\_scale](https://jp.tradingview.com/pine-script-reference/v5/#const_display.price_scale)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションです。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

format (input string) スクリプトがプロット値をフォーマットする際に、価格／パーセント値／出来高の値のいずれでフォーマットするかを決定します。このパラメータに渡される引数は、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) の `format` パラメータおよび [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数よりも優先されます。オプションです。デフォルトは、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) ／ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数で使用される `format` 値です。可能な値は、 [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price) 、 [format.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_format.percent) 、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) です。

precision (input int) チャートペインのY軸、スクリプトのステータスライン、およびデータウィンドウに表示されるプロット値の小数点以下の桁数です。16以下の負でない整数を指定します。このパラメータに渡される引数は、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) および [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数の `precision` パラメータよりも優先されます。関数の `format` パラメーターが [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) を使用している場合、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) によって定義された浮動小数点の精度に関するルールが他の精度設定に優先するため、`precision` パラメーターは結果に影響しません。オプションです。デフォルトは、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) ／ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数で使用される `precision` 値です。

force\_overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトが別のペインを占めている場合でもプロットの結果はメインのチャートペインに表示されます。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("plot")
plot(high+low, title='Title', color=color.new(#00ffaa, 70), linewidth=2, style=plot.style_area, offset=15, trackprice=true)

// You may fill the background between any two plots with a fill() function:
p1 = plot(open)
p2 = plot(close)
fill(p1, p2, color=color.new(color.green, 90))
```

リターン

[fill](https://jp.tradingview.com/pine-script-reference/v5/#fun_fill) で使用される、plotオブジェクト

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [plotarrow](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotarrow) [barcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_barcolor) [bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_bgcolor) [fill](https://jp.tradingview.com/pine-script-reference/v5/#fun_fill)

### plotarrow()

チャート上に上下の矢印を描画します。 上向きの矢印はすべてのインジケーターの正の値で描画され、下向きの矢印はすべての負の値で描画されます。インジケーターが [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返した場合、矢印は描画されません。 矢印の高さは異なり、インジケーターの絶対値が大きいほど長い矢印が描画されます。

構文

```
plotarrow(series, title, colorup, colordown, offset, minheight, maxheight, editable, show_last, display, format, precision, force_overlay) → void
```

引数

series (series int/float) 矢印でプロットされるデータの系列。必須の引数です。

title (const string) plotのタイトル。

colorup (series color) 上矢印の色。オプション引数です。

colordown (series color) 下矢印の色。オプション引数です。

offset (series int) 指定された数のバー分、矢印を左または右に移動します。 デフォルトは 0 です。

minheight (input int) 表示可能な最小の矢印の高さ（ピクセル単位）。 デフォルトは 5 です。

maxheight (input int) 表示可能な最大の矢印の高さ（ピクセル単位）。 デフォルトは 100 です。

editable (const bool) true の場合、設定ダイアログのスタイルタブで矢印のスタイルの選択が可能になります。デフォルトは true です。

show\_last (input int) 設定されている場合、チャート上に (直近のバーから過去に向かって) プロットする矢印の数を定義します。

display (input plot\_display) プロットの情報をどこに表示するかを制御します。表示オプションは加算と減算がサポートされています。つまり `display.all - display.status_line` を使用すると、スクリプトのステータスラインを除くすべての場所にプロットが表示されます。`display.price_scale + display.status_line` を使用すると、価格スケールとステータスラインにのみプロットが表示されます。`display.price_scale` のように `display` 引数が、ユーザーが制御できるチャート設定と同じ機能の場合、関連するプロットは設定が有効な場合にのみ表示されます。利用できる値は: [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.pane](https://jp.tradingview.com/pine-script-reference/v5/#const_display.pane)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.price\_scale](https://jp.tradingview.com/pine-script-reference/v5/#const_display.price_scale)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションです。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

format (input string) スクリプトがプロット値をフォーマットする際に、価格／パーセント値／出来高の値のいずれでフォーマットするかを決定します。このパラメータに渡される引数は、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) の `format` パラメータおよび [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数よりも優先されます。オプションです。デフォルトは、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) ／ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数で使用される `format` 値です。可能な値は、 [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price) 、 [format.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_format.percent) 、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) です。

precision (input int) チャートペインのY軸、スクリプトのステータスライン、およびデータウィンドウに表示されるプロット値の小数点以下の桁数です。16以下の負でない整数を指定します。このパラメータに渡される引数は、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) および [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数の `precision` パラメータよりも優先されます。関数の `format` パラメーターが [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) を使用している場合、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) によって定義された浮動小数点の精度に関するルールが他の精度設定に優先するため、`precision` パラメーターは結果に影響しません。オプションです。デフォルトは、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) ／ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数で使用される `precision` 値です。

force\_overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトが別のペインを占めている場合でもプロットの結果はメインのチャートペインに表示されます。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("plotarrow example", overlay=true)
codiff = close - open
plotarrow(codiff, colorup=color.new(color.teal,40), colordown=color.new(color.orange, 40))
```

備考

関数 [plotarrow](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotarrow) はパラメーター 'overlay = true' [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) と一緒に使ってください！

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [barcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_barcolor) [bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_bgcolor)

### plotbar()

チャート上にOHLCバーをプロットします。

構文

```
plotbar(open, high, low, close, title, color, editable, show_last, display, format, precision, force_overlay) → void
```

引数

open (series int/float) バーの始値として使用される始値データの系列。必須引数。

high (series int/float) バーの高値として使用される高値データの系列。必須引数。

low (series int/float) バーの安値として使用される安値データの系列。必須引数。

close (series int/float) バーの終値として使用される終値のデータ系列。必須引数。

title (const string) plotbarのタイトル。オプション引数です。

color (series color) OHLCバーの色。'color=color.red' や 'color=#ff001a' といった定数や 'color = close >= open ? color.green : color.red' の様な複雑な式を利用できます。オプション引数。

editable (const bool) true の場合、設定ダイアログのスタイルタブでバーのスタイルの選択が可能になります。デフォルトは true です。

show\_last (input int) 設定されている場合、チャート上に (直近のバーから過去に向かって) プロットするバーの数を定義します。

display (input plot\_display) プロットの情報をどこに表示するかを制御します。表示オプションは加算と減算がサポートされています。つまり `display.all - display.status_line` を使用すると、スクリプトのステータスラインを除くすべての場所にプロットが表示されます。`display.price_scale + display.status_line` を使用すると、価格スケールとステータスラインにのみプロットが表示されます。`display.price_scale` のように `display` 引数が、ユーザーが制御できるチャート設定と同じ機能の場合、関連するプロットは設定が有効な場合にのみ表示されます。利用できる値は: [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.pane](https://jp.tradingview.com/pine-script-reference/v5/#const_display.pane)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.price\_scale](https://jp.tradingview.com/pine-script-reference/v5/#const_display.price_scale)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションです。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

format (input string) スクリプトがプロット値をフォーマットする際に、価格／パーセント値／出来高の値のいずれでフォーマットするかを決定します。このパラメータに渡される引数は、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) の `format` パラメータおよび [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数よりも優先されます。オプションです。デフォルトは、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) ／ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数で使用される `format` 値です。可能な値は、 [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price) 、 [format.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_format.percent) 、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) です。

precision (input int) チャートペインのY軸、スクリプトのステータスライン、およびデータウィンドウに表示されるプロット値の小数点以下の桁数です。16以下の負でない整数を指定します。このパラメータに渡される引数は、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) および [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数の `precision` パラメータよりも優先されます。関数の `format` パラメーターが [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) を使用している場合、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) によって定義された浮動小数点の精度に関するルールが他の精度設定に優先するため、`precision` パラメーターは結果に影響しません。オプションです。デフォルトは、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) ／ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数で使用される `precision` 値です。

force\_overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトが別のペインを占めている場合でもプロットの結果はメインのチャートペインに表示されます。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("plotbar example", overlay=true)
plotbar(open, high, low, close, title='Title', color = open < close ? color.green : color.red)
```

備考

始値、高値、安値、終値のいずれかの値が NaN である場合には、バーは描画されません。

始値、高値、安値、終値の最大値は 'high' に設定され、最小値は 'low' に設定されます。

こちらもご覧ください

[plotcandle](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotcandle)

### plotcandle()

チャート上にローソク足をプロットします。

構文

```
plotcandle(open, high, low, close, title, color, wickcolor, editable, show_last, bordercolor, display, format, precision, force_overlay) → void
```

引数

open (series int/float) ローソク足の始値として使用される始値データの系列。必須引数。

high (series int/float) ローソク足の高値として使用される高値データの系列。必須引数。

low (series int/float) ローソク足の安値として使用される安値データの系列。必須引数。

close (series int/float) ローソク足の終値として使用される終値データの系列。必須引数。

title (const string) plotcandlesのタイトル。オプション引数です。

color (series color) ローソク足の色。'color=color.red' や 'color=#ff001a' といった定数や 'color = close >= open ? color.green : color.red' の様な複雑な式を利用できます。オプション引数。

wickcolor (series color) ローソク足のヒゲの色。オプション引数です。

editable (const bool) true の場合、設定ダイアログのスタイルタブでローソク足のスタイルの選択が可能になります。デフォルトは true です。

show\_last (input int) 設定されている場合、チャート上に (直近のバーから過去に向かって) プロットするローソク足の数を定義します。

bordercolor (series color) ローソク足の枠の色。オプション引数です。

display (input plot\_display) プロットの情報をどこに表示するかを制御します。表示オプションは加算と減算がサポートされています。つまり `display.all - display.status_line` を使用すると、スクリプトのステータスラインを除くすべての場所にプロットが表示されます。`display.price_scale + display.status_line` を使用すると、価格スケールとステータスラインにのみプロットが表示されます。`display.price_scale` のように `display` 引数が、ユーザーが制御できるチャート設定と同じ機能の場合、関連するプロットは設定が有効な場合にのみ表示されます。利用できる値は: [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.pane](https://jp.tradingview.com/pine-script-reference/v5/#const_display.pane)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.price\_scale](https://jp.tradingview.com/pine-script-reference/v5/#const_display.price_scale)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションです。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

format (input string) スクリプトがプロット値をフォーマットする際に、価格／パーセント値／出来高の値のいずれでフォーマットするかを決定します。このパラメータに渡される引数は、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) の `format` パラメータおよび [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数よりも優先されます。オプションです。デフォルトは、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) ／ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数で使用される `format` 値です。可能な値は、 [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price) 、 [format.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_format.percent) 、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) です。

precision (input int) チャートペインのY軸、スクリプトのステータスライン、およびデータウィンドウに表示されるプロット値の小数点以下の桁数です。16以下の負でない整数を指定します。このパラメータに渡される引数は、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) および [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数の `precision` パラメータよりも優先されます。関数の `format` パラメーターが [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) を使用している場合、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) によって定義された浮動小数点の精度に関するルールが他の精度設定に優先するため、`precision` パラメーターは結果に影響しません。オプションです。デフォルトは、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) ／ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数で使用される `precision` 値です。

force\_overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトが別のペインを占めている場合でもプロットの結果はメインのチャートペインに表示されます。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("plotcandle example", overlay=true)
plotcandle(open, high, low, close, title='Title', color = open < close ? color.green : color.red, wickcolor=color.black)
```

備考

始値、高値、安値、終値のいずれかの値が NaN である場合には、バーは描画されません。

始値、高値、安値、終値の最大値は 'high' に設定され、最小値は 'low' に設定されます。

こちらもご覧ください

[plotbar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotbar)

### plotchar()

チャート上に任意の1つのUnicode文字を使用して図形を描画します。

構文

```
plotchar(series, title, char, location, color, offset, text, textcolor, editable, size, show_last, display, format, precision, force_overlay) → void
```

引数

series (series int/float/bool) 形状でプロットされるデータの系列。 系列は、 [location.absolute](https://jp.tradingview.com/pine-script-reference/v5/#const_location.absolute) を除くすべての場所の値に対してブール値の系列として扱われます。 必須の引数。

title (const string) plotのタイトル。

char (input string) 視覚的な図形として使用される文字。

location (input string) チャート上の図形の位置。利用できる値は: [location.abovebar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.abovebar), [location.belowbar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.belowbar), [location.top](https://jp.tradingview.com/pine-script-reference/v5/#const_location.top), [location.bottom](https://jp.tradingview.com/pine-script-reference/v5/#const_location.bottom), [location.absolute](https://jp.tradingview.com/pine-script-reference/v5/#const_location.absolute) です。デフォルトは [location.abovebar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.abovebar) です。

color (series color) shapeの色。'color=color.red' や 'color=#ff001a' といった定数や 'color = close >= open ? color.green : color.red' の様な複雑な式を利用できます。オプション引数。

offset (series int) 指定された数のバー分、図形を左または右に移動します。デフォルトは 0 です。

text (const string) 図形と共に表示させるテキスト。行の区切りに '\\n' のエスケープシークエンスを使用することで、複数行のテキスト表示も可能です。例: '1行目\\n2行目'。

textcolor (series color) テキストの色。'textcolor=color.red' や 'textcolor=#ff001a' といった定数や 'textcolor = close >= open ? color.green : color.red' の様な複雑な式を利用できます。オプション引数。

editable (const bool) true の場合、設定ダイアログのスタイルタブで文字のスタイルの選択が可能になります。デフォルトは true です。

size (const string) チャート上の文字のサイズ。利用できる値は: [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto), [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny), [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small), [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal), [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large), [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge) です。デフォルトは [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto) です。

show\_last (input int) 設定されている場合、チャート上に (直近のバーから過去に向かって) プロットする文字の数を定義します。

display (input plot\_display) プロットの情報をどこに表示するかを制御します。表示オプションは加算と減算がサポートされています。つまり `display.all - display.status_line` を使用すると、スクリプトのステータスラインを除くすべての場所にプロットが表示されます。`display.price_scale + display.status_line` を使用すると、価格スケールとステータスラインにのみプロットが表示されます。`display.price_scale` のように `display` 引数が、ユーザーが制御できるチャート設定と同じ機能の場合、関連するプロットは設定が有効な場合にのみ表示されます。利用できる値は: [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.pane](https://jp.tradingview.com/pine-script-reference/v5/#const_display.pane)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.price\_scale](https://jp.tradingview.com/pine-script-reference/v5/#const_display.price_scale)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションです。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

format (input string) スクリプトがプロット値をフォーマットする際に、価格／パーセント値／出来高の値のいずれでフォーマットするかを決定します。このパラメータに渡される引数は、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) の `format` パラメータおよび [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数よりも優先されます。オプションです。デフォルトは、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) ／ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数で使用される `format` 値です。可能な値は、 [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price) 、 [format.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_format.percent) 、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) です。

precision (input int) チャートペインのY軸、スクリプトのステータスライン、およびデータウィンドウに表示されるプロット値の小数点以下の桁数です。16以下の負でない整数を指定します。このパラメータに渡される引数は、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) および [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数の `precision` パラメータよりも優先されます。関数の `format` パラメーターが [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) を使用している場合、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) によって定義された浮動小数点の精度に関するルールが他の精度設定に優先するため、`precision` パラメーターは結果に影響しません。オプションです。デフォルトは、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) ／ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数で使用される `precision` 値です。

force\_overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトが別のペインを占めている場合でもプロットの結果はメインのチャートペインに表示されます。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("plotchar example", overlay=true)
data = close >= open
plotchar(data, char='❄')
```

備考

関数 [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) はパラメーター 'overlay = true' [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) と一緒に使ってください！

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotarrow](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotarrow) [barcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_barcolor) [bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_bgcolor)

### plotshape()

チャート上に視覚的な図形をプロットします。

構文

```
plotshape(series, title, style, location, color, offset, text, textcolor, editable, size, show_last, display, format, precision, force_overlay) → void
```

引数

series (series int/float/bool) 形状でプロットされるデータの系列。 系列は、 [location.absolute](https://jp.tradingview.com/pine-script-reference/v5/#const_location.absolute) を除くすべての場所の値に対してブール値の系列として扱われます。 必須の引数。

title (const string) plotのタイトル。

style (input string) プロットのタイプ。利用できる値は: [shape.xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_shape.xcross), [shape.cross](https://jp.tradingview.com/pine-script-reference/v5/#const_shape.cross), [shape.triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_shape.triangleup), [shape.triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_shape.triangledown), [shape.flag](https://jp.tradingview.com/pine-script-reference/v5/#const_shape.flag), [shape.circle](https://jp.tradingview.com/pine-script-reference/v5/#const_shape.circle), [shape.arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_shape.arrowup), [shape.arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_shape.arrowdown), [shape.labelup](https://jp.tradingview.com/pine-script-reference/v5/#const_shape.labelup), [shape.labeldown](https://jp.tradingview.com/pine-script-reference/v5/#const_shape.labeldown), [shape.square](https://jp.tradingview.com/pine-script-reference/v5/#const_shape.square), [shape.diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_shape.diamond) です。デフォルトは [shape.xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_shape.xcross) です。

location (input string) チャート上の図形の位置。利用できる値は: [location.abovebar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.abovebar), [location.belowbar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.belowbar), [location.top](https://jp.tradingview.com/pine-script-reference/v5/#const_location.top), [location.bottom](https://jp.tradingview.com/pine-script-reference/v5/#const_location.bottom), [location.absolute](https://jp.tradingview.com/pine-script-reference/v5/#const_location.absolute) です。デフォルトは [location.abovebar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.abovebar) です。

color (series color) shapeの色。'color=color.red' や 'color=#ff001a' といった定数や 'color = close >= open ? color.green : color.red' の様な複雑な式を利用できます。オプション引数。

offset (series int) 指定された数のバー分、図形を左または右に移動します。デフォルトは 0 です。

text (const string) 図形と共に表示させるテキスト。行の区切りに '\\n' のエスケープシークエンスを使用することで、複数行のテキスト表示も可能です。例: '1行目\\n2行目'。

textcolor (series color) テキストの色。'textcolor=color.red' や 'textcolor=#ff001a' といった定数や 'textcolor = close >= open ? color.green : color.red' の様な複雑な式を利用できます。オプション引数。

editable (const bool) true の場合、設定ダイアログのスタイルタブで図形のスタイルの選択が可能になります。デフォルトは true です。

size (const string) チャート上の図形のサイズ。利用できる値は: [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto), [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny), [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small), [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal), [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large), [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge) です。デフォルトは [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto) です。

show\_last (input int) 設定されている場合、チャート上に (直近のバーから過去に向かって) プロットする図形の数を定義します。

display (input plot\_display) プロットの情報をどこに表示するかを制御します。表示オプションは加算と減算がサポートされています。つまり `display.all - display.status_line` を使用すると、スクリプトのステータスラインを除くすべての場所にプロットが表示されます。`display.price_scale + display.status_line` を使用すると、価格スケールとステータスラインにのみプロットが表示されます。`display.price_scale` のように `display` 引数が、ユーザーが制御できるチャート設定と同じ機能の場合、関連するプロットは設定が有効な場合にのみ表示されます。利用できる値は: [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.pane](https://jp.tradingview.com/pine-script-reference/v5/#const_display.pane)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.price\_scale](https://jp.tradingview.com/pine-script-reference/v5/#const_display.price_scale)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションです。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

format (input string) スクリプトがプロット値をフォーマットする際に、価格／パーセント値／出来高の値のいずれでフォーマットするかを決定します。このパラメータに渡される引数は、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) の `format` パラメータおよび [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数よりも優先されます。オプションです。デフォルトは、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) ／ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数で使用される `format` 値です。可能な値は、 [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price) 、 [format.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_format.percent) 、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) です。

precision (input int) チャートペインのY軸、スクリプトのステータスライン、およびデータウィンドウに表示されるプロット値の小数点以下の桁数です。16以下の負でない整数を指定します。このパラメータに渡される引数は、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) および [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数の `precision` パラメータよりも優先されます。関数の `format` パラメーターが [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) を使用している場合、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) によって定義された浮動小数点の精度に関するルールが他の精度設定に優先するため、`precision` パラメーターは結果に影響しません。オプションです。デフォルトは、 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) ／ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数で使用される `precision` 値です。

force\_overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトが別のペインを占めている場合でもプロットの結果はメインのチャートペインに表示されます。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("plotshape example 1", overlay=true)
data = close >= open
plotshape(data, style=shape.xcross)
```

備考

関数 [plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) はパラメーター 'overlay = true' [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) と一緒に使ってください！

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [plotarrow](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotarrow) [barcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_barcolor) [bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_bgcolor)


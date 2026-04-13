## 関数

## 関数

### alert()

リアルタイムのバー中に呼び出されるアラートイベントを作成します。「アラートの作成」のダイアログボックスで事前にインジケーターやストラテジーのアラートを作成することで、「alert関数のイベント」に基づくスクリプトアラートがトリガーされます。

構文

```
alert(message, freq) → void
```

引数

message (series string) アラートがトリガーされた時に送信されるメッセージ。必須の引数です。

freq (input string) トリガー頻度。可能な値は [alert.freq\_all](https://jp.tradingview.com/pine-script-reference/v5/#const_alert.freq_all) (すべての関数呼び出しがアラートをトリガー)、 [alert.freq\_once\_per\_bar](https://jp.tradingview.com/pine-script-reference/v5/#const_alert.freq_once_per_bar) (バー内の最初の関数の呼び出しがアラートをトリガー)、 [alert.freq\_once\_per\_bar\_close](https://jp.tradingview.com/pine-script-reference/v5/#const_alert.freq_once_per_bar_close) (リアルタイムバーでバーが確定する際の最後のスクリプトの実行中に発生した場合のみアラートをトリガー) です。デフォルトは [alert.freq\_once\_per\_bar](https://jp.tradingview.com/pine-script-reference/v5/#const_alert.freq_once_per_bar) です。

例

```
//@version=5
indicator("`alert()` example", "", true)
ma = ta.sma(close, 14)
xUp = ta.crossover(close, ma)
if xUp
    // Trigger the alert the first time a cross occurs during the real-time bar.
    alert("Price (" + str.tostring(close) + ") crossed over MA (" + str.tostring(ma) +  ").", alert.freq_once_per_bar)
plot(ma)
plotchar(xUp, "xUp", "▲", location.top, size = size.tiny)
```

備考

[ヘルプセンター](https://www.tradingview.com/chart/?solution=43000597494) では、このようなアラートの作成方法を解説しています。

[alertcondition](https://jp.tradingview.com/pine-script-reference/v5/#fun_alertcondition) とは異なり、 [alert](https://jp.tradingview.com/pine-script-reference/v5/#fun_alert) の呼び出しは追加のplotとしてカウントされません。

関数の呼び出しは、グローバルスコープとローカルスコープの両方に配置できます。

関数の呼び出しはチャート上に何も表示しません。

'freq' 引数は、それが使用されている関数呼び出しのトリガー頻度にのみ影響します。

こちらもご覧ください

[alertcondition](https://jp.tradingview.com/pine-script-reference/v5/#fun_alertcondition)

### alertcondition()

アラート作成ダイアログで利用できるアラート条件を作成します。 [alertcondition](https://jp.tradingview.com/pine-script-reference/v5/#fun_alertcondition) は直接アラートを作成しない点にご注意ください。アラート作成のダイアログに追加の選択肢を提供するのみです。また [alertcondition](https://jp.tradingview.com/pine-script-reference/v5/#fun_alertcondition) の動作はチャートには表示されない点にもご注意ください。

構文

```
alertcondition(condition, title, message) → void
```

引数

condition (series bool) アラートに用いられるブール値の系列。値がtrueの場合はアラートがトリガーされ、falseの場合はアラートはトリガーされません。必須の引数です。

title (const string) アラート条件のタイトル。オプション引数です。

message (const string) アラートが発生した時に表示されるメッセージ。オプション引数です。

例

```
//@version=5
indicator("alertcondition", overlay=true)
alertcondition(close >= open, title='Alert on Green Bar', message='Green Bar!')
```

備考

alertconditionの呼び出しによって、追加のプロットが生成されることにご注意ください。このような呼び出しは全て、スクリプトごとにアウトプット系列の数を計算する際に考慮されます。

こちらもご覧ください

[alert](https://jp.tradingview.com/pine-script-reference/v5/#fun_alert)

### bool()

4個の多重定義

naをboolに型変換します。

構文と多重定義

[```\\
bool(x) → const bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_bool-0) [```\\
bool(x) → input bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_bool-1) [```\\
bool(x) → simple bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_bool-2) [```\\
bool(x) → series bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_bool-3)

引数

x (simple int/float/bool) 指定した型に変換された値、通常は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

リターン

boolに型変換された後の引数の値。

こちらもご覧ください

[float](https://jp.tradingview.com/pine-script-reference/v5/#fun_float) [int](https://jp.tradingview.com/pine-script-reference/v5/#fun_int) [color](https://jp.tradingview.com/pine-script-reference/v5/#fun_color) [string](https://jp.tradingview.com/pine-script-reference/v5/#fun_string) [line](https://jp.tradingview.com/pine-script-reference/v5/#fun_line) [label](https://jp.tradingview.com/pine-script-reference/v5/#fun_label)

### box()

naをboxに型変換します。

構文

```
box(x) → series box
```

引数

x (series box) 指定した型に変換された値、通常は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

リターン

boxに型変換された後の引数の値。

こちらもご覧ください

[float](https://jp.tradingview.com/pine-script-reference/v5/#fun_float) [int](https://jp.tradingview.com/pine-script-reference/v5/#fun_int) [bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_bool) [color](https://jp.tradingview.com/pine-script-reference/v5/#fun_color) [string](https://jp.tradingview.com/pine-script-reference/v5/#fun_string) [line](https://jp.tradingview.com/pine-script-reference/v5/#fun_line) [label](https://jp.tradingview.com/pine-script-reference/v5/#fun_label)

### color()

4個の多重定義

naをcolorに型変換します。

構文と多重定義

[```\\
color(x) → const color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color-0) [```\\
color(x) → input color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color-1) [```\\
color(x) → simple color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color-2) [```\\
color(x) → series color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color-3)

引数

x (const color) 指定した型に変換された値、通常は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

リターン

colorに型変換された後の引数の値。

こちらもご覧ください

[float](https://jp.tradingview.com/pine-script-reference/v5/#fun_float) [int](https://jp.tradingview.com/pine-script-reference/v5/#fun_int) [bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_bool) [string](https://jp.tradingview.com/pine-script-reference/v5/#fun_string) [line](https://jp.tradingview.com/pine-script-reference/v5/#fun_line) [label](https://jp.tradingview.com/pine-script-reference/v5/#fun_label)

### color.b()

4個の多重定義

対象色の青成分の値を取得します。

構文と多重定義

[```\\
color.b(color) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.b-0) [```\\
color.b(color) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.b-1) [```\\
color.b(color) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.b-2) [```\\
color.b(color) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.b-3)

引数

color (const color) 色。

例

```
//@version=5
indicator("color.b", overlay=true)
plot(color.b(color.blue))
```

リターン

色の青成分の値 (0～255)。

### color.from\_gradient()

この関数は、bottom\_value から top\_value の範囲における値の相対的な位置に基づいて、bottom\_color から top\_color で定義されるグラデーションの色を返します。

構文

```
color.from_gradient(value, bottom_value, top_value, bottom_color, top_color) → series color
```

引数

value (series int/float) 位置に依存する色を計算する値。

bottom\_value (series int/float) bottom\_color に対応するボトムポジションの値。

top\_value (series int/float) top\_color に対応するトップポジションの値。

bottom\_color (series color) ボトムポジションの色。

top\_color (series color) トップポジションの色。

例

```
//@version=5
indicator("color.from_gradient", overlay=true)
color1 = color.from_gradient(close, low, high, color.yellow, color.lime)
color2 = color.from_gradient(ta.rsi(close, 7), 0, 100, color.rgb(255, 0, 0), color.rgb(0, 255, 0, 50))
plot(close, color=color1)
plot(ta.rsi(close,7), color=color2)
```

リターン

bottom\_color から top\_color までの線形グラデーションから計算された色。

備考

この関数を使用すると、スクリプトの設定のスタイルタブに表示される色に影響があります。詳しくは、 [ユーザーマニュアル](https://www.tradingview.com/pine-script-docs/concepts/colors/#color-selection-through-script-settings) をご参照ください。

### color.g()

4個の多重定義

対象色の緑成分の値を取得します。

構文と多重定義

[```\\
color.g(color) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.g-0) [```\\
color.g(color) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.g-1) [```\\
color.g(color) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.g-2) [```\\
color.g(color) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.g-3)

引数

color (const color) 色。

例

```
//@version=5
indicator("color.g", overlay=true)
plot(color.g(color.green))
```

リターン

色の緑成分の値 (0～255)。

### color.new()

4個の多重定義

この関数は、指定した色に透明度を指定して適用します。

構文と多重定義

[```\\
color.new(color, transp) → const color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.new-0) [```\\
color.new(color, transp) → input color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.new-1) [```\\
color.new(color, transp) → simple color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.new-2) [```\\
color.new(color, transp) → series color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.new-3)

引数

color (const color) 透明度を適用する色。

transp (const int/float) 可能な値は0 (不透明) から100 (不可視) までです。

例

```
//@version=5
indicator("color.new", overlay=true)
plot(close, color=color.new(color.red, 50))
```

リターン

指定された透明度で表示される色。

備考

定数ではない引数 (例. 'simple', 'input', 'series' など) を使用すると、スクリプトの設定のスタイルタブで表示される色に影響があります。詳しくは、 [ユーザーマニュアル](https://www.tradingview.com/pine-script-docs/concepts/colors/#color-selection-through-script-settings) をご参照ください。

### color.r()

4個の多重定義

対象色の赤成分の値を取得します。

構文と多重定義

[```\\
color.r(color) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.r-0) [```\\
color.r(color) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.r-1) [```\\
color.r(color) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.r-2) [```\\
color.r(color) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.r-3)

引数

color (const color) 色。

例

```
//@version=5
indicator("color.r", overlay=true)
plot(color.r(color.red))
```

リターン

色の赤成分の値 (0～255)。

### color.rgb()

4個の多重定義

RGBカラーモデルを使用して、透明度が指定された新しい色を作成します。

構文と多重定義

[```\\
color.rgb(red, green, blue, transp) → const color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.rgb-0) [```\\
color.rgb(red, green, blue, transp) → input color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.rgb-1) [```\\
color.rgb(red, green, blue, transp) → simple color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.rgb-2) [```\\
color.rgb(red, green, blue, transp) → series color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.rgb-3)

引数

red (const int/float) 赤の色成分です。可能な値は0から255までです。

green (const int/float) 緑の色成分です。可能な値は0から255までです。

blue (const int/float) 青の色成分です。可能な値は0から255までです。

transp (const int/float) オプション。色の透明度です。可能な値は 0 (不透明) から 100 (不可視) までです。デフォルト値は 0 です。

例

```
//@version=5
indicator("color.rgb", overlay=true)
plot(close, color=color.rgb(255, 0, 0, 50))
```

リターン

指定された透明度で表示される色。

備考

定数ではない引数 (例. 'simple', 'input', 'series' など) を使用すると、スクリプトの設定のスタイルタブで表示される色に影響があります。詳しくは、 [ユーザーマニュアル](https://www.tradingview.com/pine-script-docs/concepts/colors/#color-selection-through-script-settings) をご参照ください。

### color.t()

4個の多重定義

対象色の透明度を取得します。

構文と多重定義

[```\\
color.t(color) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.t-0) [```\\
color.t(color) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.t-1) [```\\
color.t(color) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.t-2) [```\\
color.t(color) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.t-3)

引数

color (const color) 色。

例

```
//@version=5
indicator("color.t", overlay=true)
plot(color.t(color.new(color.red, 50)))
```

リターン

色の透明度の値 (0-100)。

### dayofmonth()

2個の多重定義

構文と多重定義

[```\\
dayofmonth(time) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofmonth-0) [```\\
dayofmonth(time, timezone) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofmonth-1)

引数

time (series int) ミリ秒におけるUNIX時間。

リターン

UNIX時間で提供される（取引所のタイムゾーンでの）月日。

備考

UNIX時間は1970年1月1日00:00:00 (UTC) から経過したミリ秒数です。

この関数はバーの開始時刻に基づく日を返す事にご注意下さい。オーバーナイトセッションでは（例．月曜のセッションが日曜日の17:00 UTC-4に始まるEURUSD）、この値は取引日よりも1つ少なくなる可能性があります。

こちらもご覧ください

[dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofmonth) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#fun_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#fun_month) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#fun_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#fun_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#fun_second)

### dayofweek()

2個の多重定義

構文と多重定義

[```\\
dayofweek(time) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek-0) [```\\
dayofweek(time, timezone) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek-1)

引数

time (series int) ミリ秒におけるUNIX時間。

リターン

UNIX時間で提供される（取引所のタイムゾーンでの）曜日。

備考

この関数はバーの開始時間に基づく日を返す事にご注意下さい。オーバーナイトセッションでは（例．月曜のセッションが日曜日の17:00に始まるEURUSD）、この値は取引日よりも1つ少なくなる可能性があります。

UNIX時間は1970年1月1日00:00:00 (UTC) から経過したミリ秒数です。

こちらもご覧ください

[dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#fun_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#fun_month) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofmonth) [hour](https://jp.tradingview.com/pine-script-reference/v5/#fun_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#fun_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#fun_second)

### fixnan()

4個の多重定義

指定された系列で、NaN値を直近のNaNではない値に置き換えます。

構文と多重定義

[```\\
fixnan(source) → series color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_fixnan-0) [```\\
fixnan(source) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_fixnan-1) [```\\
fixnan(source) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_fixnan-2) [```\\
fixnan(source) → series bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_fixnan-3)

引数

source (series color) 計算に使用されるソース。

リターン

naギャップがない系列。

こちらもご覧ください

[na](https://jp.tradingview.com/pine-script-reference/v5/#fun_na) [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) [nz](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz)

### float()

4個の多重定義

naをfloatに型変換します。

構文と多重定義

[```\\
float(x) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_float-0) [```\\
float(x) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_float-1) [```\\
float(x) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_float-2) [```\\
float(x) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_float-3)

引数

x (const int/float) 指定した型に変換された値、通常は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

リターン

floatに型変換された後の引数の値。

こちらもご覧ください

[int](https://jp.tradingview.com/pine-script-reference/v5/#fun_int) [bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_bool) [color](https://jp.tradingview.com/pine-script-reference/v5/#fun_color) [string](https://jp.tradingview.com/pine-script-reference/v5/#fun_string) [line](https://jp.tradingview.com/pine-script-reference/v5/#fun_line) [label](https://jp.tradingview.com/pine-script-reference/v5/#fun_label)

### hour()

2個の多重定義

構文と多重定義

[```\\
hour(time) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_hour-0) [```\\
hour(time, timezone) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_hour-1)

引数

time (series int) ミリ秒におけるUNIX時間。

リターン

UNIX時間で提供される（取引所のタイムゾーンでの）時間。

備考

UNIX時間は1970年1月1日00:00:00 (UTC) から経過したミリ秒数です。

こちらもご覧ください

[hour](https://jp.tradingview.com/pine-script-reference/v5/#var_hour) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#fun_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#fun_month) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) [minute](https://jp.tradingview.com/pine-script-reference/v5/#fun_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#fun_second)

### indicator()

スクリプトの宣言文です。スクリプトをインジケーターとして定義し、インジケーターに関連する複数のプロパティを設定します。

構文

```
indicator(title, shorttitle, overlay, format, precision, scale, max_bars_back, timeframe, timeframe_gaps, explicit_plot_zorder, max_lines_count, max_labels_count, max_boxes_count, calc_bars_count, max_polylines_count, dynamic_requests, behind_chart) → void
```

引数

title (const string) スクリプトのタイトルです。`shorttitle` 引数を指定しない場合、チャート上に表示され、スクリプトを公開する際の投稿のデフォルトのタイトルになります。

shorttitle (const string) チャート上のスクリプトの表示名です。指定した場合、ほとんどのチャート関連のウィンドウで`title`引数を置き換えます。オプションです。デフォルトは`title`引数で指定したタイトルです。

overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、インジケーターはメインチャート上に追加されます。 [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合は、別のペインに追加されます。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

format (const string) スクリプトで表示する値の形式を指定します。利用できる値は: [format.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_format.inherit), [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price), [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume), [format.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_format.percent) です。オプションです。デフォルトは [format.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_format.inherit) です。

precision (const int) スクリプトの値の浮動小数点以下の表示桁数を指定します。16以下の正の整数である必要があります。`format` が [format.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_format.inherit) に設定され `precision` が指定されている場合、フォーマットには代わりに [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price) が設定されます。関数の `format` パラメーターで [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) が使用されている場合、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) で定義された浮動小数点の精度についてのルールが他の精度の設定よりも優先されるため、`precision` パラメーターは結果に影響しません。オプションです。デフォルトでは、チャートのシンボルの精度が継承されます。

scale (const scale\_type) 使用する価格スケール。利用できる値は: [scale.right](https://jp.tradingview.com/pine-script-reference/v5/#const_scale.right), [scale.left](https://jp.tradingview.com/pine-script-reference/v5/#const_scale.left), [scale.none](https://jp.tradingview.com/pine-script-reference/v5/#const_scale.none) です。 [scale.none](https://jp.tradingview.com/pine-script-reference/v5/#const_scale.none) は、`overlay = true` と組み合わせた場合でのみ利用できます。オプションです。デフォルトは、チャートと同じ価格スケールを使用します。

max\_bars\_back (const int) スクリプトが各変数／関数に対して保持する履歴バッファの期間です。これは、履歴参照演算子の `[]` を用いた時に参照できる過去の値の期間を決定するものです。通常、必要なバッファーのサイズは、Pine Script® のランタイムで自動的に検出されます。このパラメーターを使用する必要があるのは、自動検出に失敗してランタイムエラーが発生した場合のみです。履歴バッファの基本的な仕組みについての詳細は、 [ヘルプセンター](https://www.tradingview.com/chart/?solution=43000587849) をご覧ください。オプションです。デフォルトは 0 です。

timeframe (const string) シンプルなスクリプトにマルチタイムフレームの機能を追加します。この引数を使用すると、スクリプトの設定の「パラメーター」タブにある「計算」セクションに「時間足」の項目が追加されます。この項目のデフォルト値は引数で指定した値で、そのフォーマットは [時間足の文字列の仕様](https://www.tradingview.com/pine-script-docs/concepts/timeframes/#timeframe-string-specifications) に準拠する必要があります。チャートの時間足を指定するには、空の文字列または [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) 変数を使用します。このパラメーターは、Pine Script®の描画を使用するスクリプトでは使用できません。オプションです。デフォルトは [timeframe.period](https://jp.tradingview.com/pine-script-reference/v5/#var_timeframe.period) です。

timeframe\_gaps (const bool) `timeframe` がチャートの時間足よりも大きい場合に、インジケーターの値をチャートバーにどう表示するかを指定します。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、上位の `timeframe` の値が利用できるようになってはじめて、その値がチャートバー上に表示されます。そうでない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) が返されます（つまり「ギャップ」が発生します）。 [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を指定すると、 [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) が返されるのを避けて、ギャップが最新の既知の値で埋められます。これを指定すると、スクリプトの設定の「パラメーター」タブにある「計算」セクションに「時間足の確定を待つ」のチェックボックスが追加されます。オプションです。デフォルトは [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) です。

explicit\_plot\_zorder (const bool) スクリプトのプロット、塗りつぶし、水平線がレンダリングされる順序を指定します。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトのコードの記載順に描画され、新しいプロットは、前のプロットの上に描画されます。これは `plot*()` 関数と [fill](https://jp.tradingview.com/pine-script-reference/v5/#fun_fill)、 [hline](https://jp.tradingview.com/pine-script-reference/v5/#fun_hline) にのみ適用されます。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

max\_lines\_count (const int) 直近で表示される [line](https://jp.tradingview.com/pine-script-reference/v5/#type_line) 描画の数。利用可能な値は、1 から 500 です。数値は概算で、指定した数より多くの描画が表示される場合があります。オプションです。デフォルトは 50 です。

max\_labels\_count (const int) 直近で表示される [label](https://jp.tradingview.com/pine-script-reference/v5/#type_label) 描画の数。利用可能な値は、1 から 500 です。数値は概算で、指定した数より多くの描画が表示される場合があります。オプションです。デフォルトは 50 です。

max\_boxes\_count (const int) 直近で表示される [box](https://jp.tradingview.com/pine-script-reference/v5/#type_box) 描画の数。利用可能な値は、1 から 500 です。数値は概算で、指定した数より多くの描画が表示される場合があります。オプションです。デフォルトは 50 です。

calc\_bars\_count (const int) スクリプトの最初の計算の対象を、直近のバーのうち指定した本数だけに制限します。これを指定すると、スクリプトの設定の「パラメーター」タブにある「計算」セクションに 「計算バー数」のフィールドが追加されます。オプションです。デフォルトは 0 で、0の場合、利用可能なバーすべてでスクリプトが実行されます。

max\_polylines\_count (const int) 直近で表示される [polyline](https://jp.tradingview.com/pine-script-reference/v5/#type_polyline) 描画の数。利用可能な値は、1 から 100 です。数値は概算で、指定した数より多くの描画が表示される場合があります。オプションでデフォルトは 50 です。

dynamic\_requests (const bool) `request.*()` の名前空間から、スクリプトによる関数の動的呼び出しを可能にするかどうかを指定します。`request.*()` の動的呼び出しは、条件構造 (例: [if](https://jp.tradingview.com/pine-script-reference/v5/#kw_if))、ループ (例: [for](https://jp.tradingview.com/pine-script-reference/v5/#kw_for)) およびエクスポートされた関数のローカルスコープ内で許可されます。さらに、こうした呼び出しでは「系列」の引数を使用できるパラメーターが多くあります。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。詳細については、ユーザーマニュアルの [「動的リクエスト」](https://www.tradingview.com/pine-script-docs/concepts/other-timeframes-and-data/#dynamic-requests) のセクションをご参照ください。

behind\_chart (const bool) スクリプトによるプロットや描画を、メインチャートのペインでチャートの背面に表示する ( [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合) か、前面に表示する ( [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合) かを制御します。オプションです。デフォルトは [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) です。

例

```
//@version=5
indicator("My script", shorttitle="Script")
plot(close)
```

備考

すべてのインジケータースクリプトには、必ず [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) の呼び出しを1つ含める必要があります。

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) [library](https://jp.tradingview.com/pine-script-reference/v5/#fun_library)

### input()

6個の多重定義

スクリプトの設定の「パラメーター」タブに項目を追加し、スクリプトユーザーにパラメーターの設定オプションを提供します。この関数は、'defval' に使用された引数の型を自動検出し、該当する入力ウィジェットを使用します。

構文と多重定義

[```\\
input(defval, title, tooltip, inline, group, display) → input color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_input-0) [```\\
input(defval, title, tooltip, inline, group, display) → input string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_input-1) [```\\
input(defval, title, tooltip, inline, group, display) → input int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_input-2) [```\\
input(defval, title, tooltip, inline, group, display) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_input-3) [```\\
input(defval, title, inline, group, tooltip, display) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_input-4) [```\\
input(defval, title, tooltip, inline, group, display) → input bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_input-5)

引数

defval (const int/float/bool/string/color or source-type built-ins) スクリプトの設定の「パラメーター」タブに表示される入力変数のデフォルト値を決定します。ユーザーはそこで値を変更することができます。ソースタイプのビルトインについては、計算のソースを特定する一連のビルトインフロート変数 `close`、`hlc3` 等となります。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

inline (const string) 同じ引数を使ったすべてのinputの呼び出しを1行にまとめます。引数として使われる文字列は表示されません。これは、同じ行に属する入力項目を識別するためにのみ使用されます。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションの引数です。デフォルトは`defval` に渡される値のタイプによって異なります: [bool](https://jp.tradingview.com/pine-script-reference/v5/#type_bool) と [color](https://jp.tradingview.com/pine-script-reference/v5/#type_color) の値であれば [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none) で、それ以外は [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) になります。

例

```
//@version=5
indicator("input", overlay=true)
i_switch = input(true, "On/Off")
plot(i_switch ? open : na)

i_len = input(7, "Length")
i_src = input(close, "Source")
plot(ta.sma(i_src, i_len))

i_border = input(142.50, "Price Border")
hline(i_border)
bgcolor(close > i_border ? color.green : color.red)

i_col = input(color.red, "Plot Color")
plot(close, color=i_col)

i_text = input("Hello!", "Message")
l = label.new(bar_index, high, text=i_text)
label.delete(l[1])
```

リターン

input変数の値。

備考

関数 [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input) の結果は常に変数に代入される必要があります。上記例をご参照ください。

こちらもご覧ください

[input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) [input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) [input.string](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.string) [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) [input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) [input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) [input.time](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.time)

### input.bool()

スクリプトの設定の「パラメーター」タブに項目を追加し、スクリプトユーザーにパラメーターの設定オプションを提供します。この関数は、スクリプトのパラメーター設定にチェックマーク (表示/非表示の切り替え) を追加します。

構文

```
input.bool(defval, title, tooltip, inline, group, confirm, display) → input bool
```

引数

defval (const bool) スクリプトの設定の「パラメーター」タブに表示される入力変数のデフォルト値を決定します。ユーザーはそこで値を変更することができます。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

inline (const string) 同じ引数を使ったすべてのinputの呼び出しを1行にまとめます。引数として使われる文字列は表示されません。これは、同じ行に属する入力項目を識別するためにのみ使用されます。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

confirm (const bool) true の場合、インジケーターをチャートに追加する前に、入力値を確認するようユーザーに要求します。デフォルトは false です。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションの引数です。デフォルトは [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none) です。

例

```
//@version=5
indicator("input.bool", overlay=true)
i_switch = input.bool(true, "On/Off")
plot(i_switch ? open : na)
```

リターン

input変数の値。

備考

関数 [input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) の結果は常に変数に代入される必要があります。上記例をご参照ください。

こちらもご覧ください

[input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) [input.string](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.string) [input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) [input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) [input.time](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.time) [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input)

### input.color()

スクリプトの設定の「パラメーター」タブに項目を追加し、スクリプトユーザーにパラメーターの設定オプションを提供します。この関数は、ユーザーがパレットまたは16進数値から色と透明度を選択できるカラーピッカーを追加します。

構文

```
input.color(defval, title, tooltip, inline, group, confirm, display) → input color
```

引数

defval (const color) スクリプトの設定の「パラメーター」タブに表示される入力変数のデフォルト値を決定します。ユーザーはそこで値を変更することができます。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

inline (const string) 同じ引数を使ったすべてのinputの呼び出しを1行にまとめます。引数として使われる文字列は表示されません。これは、同じ行に属する入力項目を識別するためにのみ使用されます。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

confirm (const bool) true の場合、インジケーターをチャートに追加する前に、入力値を確認するようユーザーに要求します。デフォルトは false です。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションの引数です。デフォルトは [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none) です。

例

```
//@version=5
indicator("input.color", overlay=true)
i_col = input.color(color.red, "Plot Color")
plot(close, color=i_col)
```

リターン

input変数の値。

備考

関数 [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) の結果は常に変数に代入される必要があります。上記例をご参照ください。

こちらもご覧ください

[input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) [input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) [input.string](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.string) [input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) [input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) [input.time](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.time) [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input)

### input.enum()

スクリプトの設定にある「パラメーター」タブに入力を追加し、スクリプトのユーザーに設定オプションを提供できるようにします。この関数によってドロップダウンが追加されますが、それは `defval` パラメータと `options` パラメータに渡される [enum](https://jp.tradingview.com/pine-script-reference/v5/#kw_enum) フィールドに基づいたオプションを持つものになります。

結果として表示されるドロップダウンの各オプションのテキストは、そこに含まれるフィールドのタイトルに対応しています。フィールドのタイトルが列挙型の宣言で指定されていない場合、タイトルはフィールド名の文字列表現になります。

構文

```
input.enum(defval, title, options, tooltip, inline, group, confirm, display) → input enum
```

引数

defval (const enum) スクリプトの設定にある「パラメーター」タブでユーザが変更できる入力のデフォルト値を決定します。`options` パラメータにenumフィールドのタプルが指定されている場合、そのタプルには `defval` が含まれている必要があります。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

options (tuple of enum fields: \[enumName.field1, enumName.field2, ...\]) 選択するオプションのリストです。オプションの引数です。デフォルトでは、列挙型のすべてのフィールドのタイトルがドロップダウンで利用可能です。`options` 引数にタプルを渡すと、リストに含まれるフィールドのみに制限されます。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

inline (const string) 同じ引数を使ったすべてのinputの呼び出しを1行にまとめます。引数として使われる文字列は表示されません。これは、同じ行に属する入力項目を識別するためにのみ使用されます。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

confirm (const bool) `true` を指定すると、インジケーターをチャートに追加する前にユーザーに入力値の確認を求めます。デフォルトは `false` です。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#var_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#var_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#var_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#var_display.all) です。オプションの引数です。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#var_display.all) です。

例

```
//@version=5
indicator("Session highlight", overlay = true)

//@enum        Contains fields with popular timezones as titles.
//@field exch  Has an empty string as the title to represent the chart timezone.
enum tz
    utc  = "UTC"
    exch = ""
    ny   = "America/New_York"
    chi  = "America/Chicago"
    lon  = "Europe/London"
    tok  = "Asia/Tokyo"

//@variable The session string.
selectedSession = input.session("1200-1500", "Session")
//@variable The selected timezone. The input's dropdown contains the fields in the `tz` enum.
selectedTimezone = input.enum(tz.utc, "Session Timezone")

//@variable Is `true` if the current bar's time is in the specified session.
bool inSession = false
if not na(time("", selectedSession, str.tostring(selectedTimezone)))
    inSession := true

// Highlight the background when `inSession` is `true`.
bgcolor(inSession ? color.new(color.green, 90) : na, title = "Active session highlight")
```

リターン

input変数の値。

備考

`defval` と`options` 引数に含まれるフィールドは全て同じ列挙型に属している必要があります。

こちらもご覧ください

[input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) [input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) [input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) [input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) [input.time](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.time) [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input)

### input.float()

2個の多重定義

スクリプトの設定の「パラメーター」タブに項目を追加し、スクリプトユーザーにパラメーターの設定オプションを提供します。この関数は、スクリプトのパラメーター設定に、浮動小数点数を扱う項目を追加します。

構文と多重定義

[```\\
input.float(defval, title, options, tooltip, inline, group, confirm, display) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float-0) [```\\
input.float(defval, title, minval, maxval, step, tooltip, inline, group, confirm, display) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float-1)

引数

defval (const int/float) スクリプトの設定の「パラメーター」タブに表示される入力変数のデフォルト値を決定します。ユーザーはそこで値を変更することが可能です。値のリストが `options` パラメーターで使用されている場合は、リストに存在する値である必要があります。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

options (tuple of const int/float values: \[val1, val2, ...\]) ドロップダウンメニューから選択するオプションのリスト。カンマで区切り、角括弧で囲む必要があります: \[val1, val2, ...\]。このパラメーターを使用する場合、 `minval`、`maxval`、`step` パラメーターを使用することができません。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

inline (const string) 同じ引数を使ったすべてのinputの呼び出しを1行にまとめます。引数として使われる文字列は表示されません。これは、同じ行に属する入力項目を識別するためにのみ使用されます。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

confirm (const bool) true の場合、インジケーターをチャートに追加する前に、入力値を確認するようユーザーに要求します。デフォルトは false です。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションの引数です。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

例

```
//@version=5
indicator("input.float", overlay=true)
i_angle1 = input.float(0.5, "Sin Angle", minval=-3.14, maxval=3.14, step=0.02)
plot(math.sin(i_angle1) > 0 ? close : open, "sin", color=color.green)

i_angle2 = input.float(0, "Cos Angle", options=[-3.14, -1.57, 0, 1.57, 3.14])
plot(math.cos(i_angle2) > 0 ? close : open, "cos", color=color.red)
```

リターン

input変数の値。

備考

関数 [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) の結果は常に変数に代入される必要があります。上記例をご参照ください。

こちらもご覧ください

[input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) [input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) [input.string](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.string) [input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) [input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) [input.time](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.time) [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input)

### input.int()

2個の多重定義

スクリプトの設定の「パラメーター」タブに項目を追加し、スクリプトユーザーにパラメーターの設定オプションを提供します。この関数は、スクリプトのパラメーター設定に、整数を扱う項目を追加します。

構文と多重定義

[```\\
input.int(defval, title, options, tooltip, inline, group, confirm, display) → input int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int-0) [```\\
input.int(defval, title, minval, maxval, step, tooltip, inline, group, confirm, display) → input int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int-1)

引数

defval (const int) スクリプトの設定の「パラメーター」タブに表示される入力変数のデフォルト値を決定します。ユーザーはそこで値を変更することが可能です。値のリストが `options` パラメーターで使用されている場合は、リストに存在する値である必要があります。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

options (tuple of const int values: \[val1, val2, ...\]) ドロップダウンメニューから選択するオプションのリスト。カンマで区切り、角括弧で囲む必要があります: \[val1, val2, ...\]。このパラメーターを使用する場合、 `minval`、`maxval`、`step` パラメーターを使用することができません。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

inline (const string) 同じ引数を使ったすべてのinputの呼び出しを1行にまとめます。引数として使われる文字列は表示されません。これは、同じ行に属する入力項目を識別するためにのみ使用されます。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

confirm (const bool) true の場合、インジケーターをチャートに追加する前に、入力値を確認するようユーザーに要求します。デフォルトは false です。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションの引数です。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

例

```
//@version=5
indicator("input.int", overlay=true)
i_len1 = input.int(10, "Length 1", minval=5, maxval=21, step=1)
plot(ta.sma(close, i_len1))

i_len2 = input.int(10, "Length 2", options=[5, 10, 21])
plot(ta.sma(close, i_len2))
```

リターン

input変数の値。

備考

関数 [input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) の結果は常に変数に代入される必要があります。上記例をご参照ください。

こちらもご覧ください

[input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) [input.string](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.string) [input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) [input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) [input.time](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.time) [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input)

### input.price()

スクリプトの設定の「パラメーター」タブに価格のパラメーター入力を追加します。`confirm = true` を使用すると、チャート上をクリックして価格を選択するインタラクティブ入力モードが有効になります。

構文

```
input.price(defval, title, tooltip, inline, group, confirm, display) → input float
```

引数

defval (const int/float) スクリプトの設定の「パラメーター」タブに表示される入力変数のデフォルト値を決定します。ユーザーはそこで値を変更することができます。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

inline (const string) 同じ引数を使ったすべてのinputの呼び出しを1行にまとめます。引数として使われる文字列は表示されません。これは、同じ行に属する入力項目を識別するためにのみ使用されます。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

confirm (const bool) true の場合、インタラクティブ入力モードが有効になり、インジケーターをチャートに追加する際にチャート上をクリックして選択するか、もしくはインジケーターを選択したのち、選択部分を移動することで選択されるようになります。オプションです。デフォルトは false です。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションの引数です。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

例

```
//@version=5
indicator("input.price", overlay=true)
price1 = input.price(title="Date", defval=42)
plot(price1)

price2 = input.price(54, title="Date")
plot(price2)
```

リターン

input変数の値。

備考

インタラクティブモードを使用する場合、双方の関数呼び出し時に `inline` パラメーターに同じ引数を使用すれば、時間入力と価格入力を組み合わせることができます。

こちらもご覧ください

[input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) [input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) [input.string](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.string) [input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) [input.resolution](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.resolution) [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input)

### input.session()

スクリプトの設定の「パラメーター」タブに項目を追加し、スクリプトユーザーにパラメーターの設定オプションを提供します。この関数は、セッション項目でセッションの開始と終了を指定するための2つのドロップダウンメニューを追加し、結果を文字列として返します。

構文

```
input.session(defval, title, options, tooltip, inline, group, confirm, display) → input string
```

引数

defval (const string) スクリプトの設定の「パラメーター」タブに表示される入力変数のデフォルト値を決定します。ユーザーはそこで値を変更することができます。値のリストが `options` パラメーターで使用されている場合は、リストに存在する値である必要があります。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

options (tuple of const string values: \[val1, val2, ...\]) 選択可能なオプションの一覧です。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

inline (const string) 同じ引数を使ったすべてのinputの呼び出しを1行にまとめます。引数として使われる文字列は表示されません。これは、同じ行に属する入力項目を識別するためにのみ使用されます。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

confirm (const bool) true の場合、インジケーターをチャートに追加する前に、入力値を確認するようユーザーに要求します。デフォルトは false です。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションの引数です。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

例

```
//@version=5
indicator("input.session", overlay=true)
i_sess = input.session("1300-1700", "Session", options=["0930-1600", "1300-1700", "1700-2100"])
t = time(timeframe.period, i_sess)
bgcolor(time == t ? color.green : na)
```

リターン

input変数の値。

備考

関数 [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) の結果は常に変数に代入される必要があります。上記例をご参照ください。

こちらもご覧ください

[input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) [input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) [input.string](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.string) [input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) [input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) [input.time](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.time) [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input)

### input.source()

スクリプトの設定の「パラメーター」タブに項目を追加し、ユーザーにパラメーターの設定オプションを提供することができます。この関数は、 [close](https://jp.tradingview.com/pine-script-reference/v5/#var_close) や [hl2](https://jp.tradingview.com/pine-script-reference/v5/#var_hl2) のような、計算に使用するソースを選択できるドロップダウンメニューを追加します。他のインジケーターの出力をソースとして選択することも可能です。

構文

```
input.source(defval, title, tooltip, inline, group, display, confirm) → series float
```

引数

defval (open/high/low/close/hl2/hlc3/ohlc4/hlcc4) スクリプトの設定の「パラメーター」タブに表示される入力変数のデフォルト値を決定します。ユーザーはそこで値を変更することができます。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

inline (const string) 同じ引数を使ったすべてのinputの呼び出しを1行にまとめます。引数として使われる文字列は表示されません。これは、同じ行に属する入力項目を識別するためにのみ使用されます。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションの引数です。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

confirm (const bool) true の場合、インジケーターをチャートに追加する前に、入力値を確認するようユーザーに要求します。デフォルトは false です。

例

```
//@version=5
indicator("input.source", overlay=true)
i_src = input.source(close, "Source")
plot(i_src)
```

リターン

input変数の値。

備考

関数 [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) の結果は常に変数に代入される必要があります。上記例をご参照ください。

こちらもご覧ください

[input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) [input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) [input.string](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.string) [input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) [input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) [input.time](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.time) [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input)

### input.string()

スクリプトの設定の「パラメーター」タブに項目を追加し、スクリプトユーザーにパラメーターの設定オプションを提供します。この関数は、スクリプトのパラメーター設定に、文字列を扱う項目を追加します。

構文

```
input.string(defval, title, options, tooltip, inline, group, confirm, display) → input string
```

引数

defval (const string) スクリプトの設定の「パラメーター」タブに表示される入力変数のデフォルト値を決定します。ユーザーはそこで値を変更することができます。値のリストが `options` パラメーターで使用されている場合は、リストに存在する値である必要があります。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

options (tuple of const string values: \[val1, val2, ...\]) 選択可能なオプションの一覧です。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

inline (const string) 同じ引数を使ったすべてのinputの呼び出しを1行にまとめます。引数として使われる文字列は表示されません。これは、同じ行に属する入力項目を識別するためにのみ使用されます。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

confirm (const bool) true の場合、インジケーターをチャートに追加する前に、入力値を確認するようユーザーに要求します。デフォルトは false です。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションの引数です。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

例

```
//@version=5
indicator("input.string", overlay=true)
i_text = input.string("Hello!", "Message")
l = label.new(bar_index, high, i_text)
label.delete(l[1])
```

リターン

input変数の値。

備考

関数 [input.string](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.string) の結果は常に変数に代入される必要があります。上記例をご参照ください。

こちらもご覧ください

[input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) [input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) [input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) [input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) [input.time](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.time) [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input)

### input.symbol()

スクリプトの設定の「パラメーター」タブに項目を追加し、スクリプトユーザーにパラメーターの設定オプションを提供します。この関数は、ユーザーがシンボル検索を使用して特定のシンボルを選択できる項目を追加し、そのシンボルと取引所のプレフィックスを組み合わせたものを文字列として返します。

構文

```
input.symbol(defval, title, tooltip, inline, group, confirm, display) → input string
```

引数

defval (const string) スクリプトの設定の「パラメーター」タブに表示される入力変数のデフォルト値を決定します。ユーザーはそこで値を変更することができます。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

inline (const string) 同じ引数を使ったすべてのinputの呼び出しを1行にまとめます。引数として使われる文字列は表示されません。これは、同じ行に属する入力項目を識別するためにのみ使用されます。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

confirm (const bool) true の場合、インジケーターをチャートに追加する前に、入力値を確認するようユーザーに要求します。デフォルトは false です。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションの引数です。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

例

```
//@version=5
indicator("input.symbol", overlay=true)
i_sym = input.symbol("DELL", "Symbol")
s = request.security(i_sym, 'D', close)
plot(s)
```

リターン

input変数の値。

備考

関数 [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) の結果は常に変数に代入される必要があります。上記例をご参照ください。

こちらもご覧ください

[input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) [input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) [input.string](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.string) [input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) [input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) [input.time](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.time) [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input)

### input.text\_area()

スクリプトの設定の「パラメーター」タブに項目を追加し、スクリプトのユーザーに設定オプションを提供することができます。この関数は、複数行のテキスト入力のための欄を追加します。

構文

```
input.text_area(defval, title, tooltip, group, confirm, display) → input string
```

引数

defval (const string) スクリプトの設定の「パラメーター」タブに表示される入力変数のデフォルト値を決定します。ユーザーはそこで値を変更することができます。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

confirm (const bool) true の場合、インジケーターをチャートに追加する前に、入力値を確認するようユーザーに要求します。デフォルトは false です。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションの引数です。デフォルトは [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none) です。

例

```
//@version=5
indicator("input.text_area")
i_text = input.text_area(defval = "Hello \nWorld!", title = "Message")
plot(close)
```

リターン

input変数の値。

備考

関数 [input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) の結果は常に変数に代入される必要があります。上記例をご参照ください。

こちらもご覧ください

[input.string](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.string) [input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) [input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) [input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) [input.time](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.time) [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input)

### input.time()

スクリプトの設定の「パラメーター」タブに日時の入力項目を追加します。この関数は、日付と時刻の2つの入力ウィジェットを横並びで追加します。この関数は、UNIX形式の日付/時刻の値を返します。`confirm = true` を使用すると、チャート上で直接クリックして日時を選択する事ができるインタラクティブな入力モードが有効になります。

構文

```
input.time(defval, title, tooltip, inline, group, confirm, display) → input int
```

引数

defval (const int) スクリプトの設定の「パラメーター」タブに表示される入力変数のデフォルト値を決定します。ユーザーはそこで値を変更することができます。この値は [timestamp](https://jp.tradingview.com/pine-script-reference/v5/#fun_timestamp) 関数にすることができますが、const文字列形式の日付引数を使用する場合のみ可能です。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

inline (const string) 同じ引数を使ったすべてのinputの呼び出しを1行にまとめます。引数として使われる文字列は表示されません。これは、同じ行に属する入力項目を識別するためにのみ使用されます。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

confirm (const bool) true の場合、インタラクティブ入力モードが有効になり、インジケーターをチャートに追加する際にチャート上をクリックして選択するか、もしくはインジケーターを選択したのち、選択部分を移動することで選択されるようになります。オプションです。デフォルトは false です。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションの引数です。デフォルトは [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none) です。

例

```
//@version=5
indicator("input.time", overlay=true)
i_date = input.time(timestamp("20 Jul 2021 00:00 +0300"), "Date")
l = label.new(i_date, high, "Date", xloc=xloc.bar_time)
label.delete(l[1])
```

リターン

input変数の値。

備考

インタラクティブモードを使用する場合、双方の関数呼び出し時に `inline` パラメーターに同じ引数を使用すれば、価格入力と時間入力を組み合わせることができます。

こちらもご覧ください

[input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) [input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) [input.string](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.string) [input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) [input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input)

### input.timeframe()

スクリプトの設定の「パラメーター」タブに項目を追加し、スクリプトユーザーにパラメーターの設定オプションを提供します。この関数は、時間足の選択で特定の時間足を選択できるドロップダウンメニューを追加し、それを文字列として返します。時間足の選択には、ユーザーがチャート上にある時間足のドロップダウンメニューから追加したカスタム時間足が含まれます。

構文

```
input.timeframe(defval, title, options, tooltip, inline, group, confirm, display) → input string
```

引数

defval (const string) スクリプトの設定の「パラメーター」タブに表示される入力変数のデフォルト値を決定します。ユーザーはそこで値を変更することができます。値のリストが `options` パラメーターで使用されている場合は、リストに存在する値である必要があります。

title (const string) 入力項目のタイトルです。指定されていない場合には、変数名が入力のタイトルとして使用されます。タイトルが指定されている場合でもそれが空の場合には、名前は空の文字列になります。

options (tuple of const string values: \[val1, val2, ...\]) 選択可能なオプションの一覧です。

tooltip (const string) ツールチップアイコンにカーソルを合わせた時にユーザーに表示される文字列です。

inline (const string) 同じ引数を使ったすべてのinputの呼び出しを1行にまとめます。引数として使われる文字列は表示されません。これは、同じ行に属する入力項目を識別するためにのみ使用されます。

group (const string) 同じグループ引数の文字列を使用するすべての入力項目の上にヘッダーを作成します。この文字列は、ヘッダーのテキストとしても使用されます。

confirm (const bool) true の場合、インジケーターをチャートに追加する前に、入力値を確認するようユーザーに要求します。デフォルトは false です。

display (const plot\_display) スクリプト自体の設定とは別に、スクリプトによって入力情報が表示される場所を制御します。このオプションを使用すると、スクリプトのステータスラインやデータウィンドウから指定した入力情報を削除して、必要な入力情報だけを表示することができます。可能な値は [display.none](https://jp.tradingview.com/pine-script-reference/v5/#const_display.none)、 [display.data\_window](https://jp.tradingview.com/pine-script-reference/v5/#const_display.data_window)、 [display.status\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_display.status_line)、 [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。オプションの引数です。デフォルトは [display.all](https://jp.tradingview.com/pine-script-reference/v5/#const_display.all) です。

例

```
//@version=5
indicator("input.timeframe", overlay=true)
i_res = input.timeframe('D', "Resolution", options=['D', 'W', 'M'])
s = request.security("AAPL", i_res, close)
plot(s)
```

リターン

input変数の値。

備考

関数 [input.timeframe](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.timeframe) の結果は常に変数に代入される必要があります。上記例をご参照ください。

こちらもご覧ください

[input.bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.bool) [input.int](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.int) [input.float](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.float) [input.string](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.string) [input.text\_area](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.text_area) [input.symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.symbol) [input.session](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.session) [input.source](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.source) [input.color](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.color) [input.time](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.time) [input](https://jp.tradingview.com/pine-script-reference/v5/#fun_input)

### int()

4個の多重定義

naをintに型変換、またはfloat値をintに切り捨てます。

構文と多重定義

[```\\
int(x) → const int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_int-0) [```\\
int(x) → input int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_int-1) [```\\
int(x) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_int-2) [```\\
int(x) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_int-3)

引数

x (const int/float) 指定した型に変換された値、通常は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

リターン

intに型変換された後の引数の値。

こちらもご覧ください

[float](https://jp.tradingview.com/pine-script-reference/v5/#fun_float) [bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_bool) [color](https://jp.tradingview.com/pine-script-reference/v5/#fun_color) [string](https://jp.tradingview.com/pine-script-reference/v5/#fun_string) [line](https://jp.tradingview.com/pine-script-reference/v5/#fun_line) [label](https://jp.tradingview.com/pine-script-reference/v5/#fun_label)

### label()

naをlabelに型変換します。

構文

```
label(x) → series label
```

引数

x (series label) 指定した型に変換された値、通常は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

リターン

labelに型変換された後の引数の値。

こちらもご覧ください

[float](https://jp.tradingview.com/pine-script-reference/v5/#fun_float) [int](https://jp.tradingview.com/pine-script-reference/v5/#fun_int) [bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_bool) [color](https://jp.tradingview.com/pine-script-reference/v5/#fun_color) [string](https://jp.tradingview.com/pine-script-reference/v5/#fun_string) [line](https://jp.tradingview.com/pine-script-reference/v5/#fun_line)

### library()

スクリプトを [library](https://www.tradingview.com/pine-script-docs/concepts/libraries/) として識別する宣言文です。

構文

```
library(title, overlay, dynamic_requests) → void
```

引数

title (const string) ライブラリのタイトルとその識別子です。スペース、特殊文字、数字で始めることはできません。これは公開時のデフォルトのタイトルとして使用され、他のスクリプトで使用される際には [import](https://jp.tradingview.com/pine-script-reference/v5/#kw_import) 文でライブラリを一意に識別するために使用されます。また、チャート上ではスクリプトの名前として使用されます。

overlay (const bool) true の場合、ライブラリはチャートの上に追加されます。false の場合、別のペインに追加されます。オプションです。デフォルトは false です。

dynamic\_requests (const bool) `request.*()` の名前空間から、スクリプトによる関数の動的呼び出しを可能にするかどうかを指定します。`request.*()` の動的呼び出しは、条件構造 (例: [if](https://jp.tradingview.com/pine-script-reference/v5/#kw_if))、ループ (例: [for](https://jp.tradingview.com/pine-script-reference/v5/#kw_for)) およびエクスポートされた関数のローカルスコープ内で許可されます。さらに、こうした呼び出しでは「系列」の引数を使用できるパラメーターが多くあります。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。詳細については、ユーザーマニュアルの [「動的リクエスト」](https://www.tradingview.com/pine-script-docs/concepts/other-timeframes-and-data/#dynamic-requests) のセクションをご参照ください。

例

```
//@version=5
// @description Math library
library("num_methods", overlay = true)
// Calculate "sinh()" from the float parameter `x`
export sinh(float x) =>
    (math.exp(x) - math.exp(-x)) / 2.0
plot(sinh(0))
```

こちらもご覧ください

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### line()

naをlineに型変換します。

構文

```
line(x) → series line
```

引数

x (series line) 指定した型に変換された値、通常は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

リターン

lineに型変換された後の引数の値。

こちらもご覧ください

[float](https://jp.tradingview.com/pine-script-reference/v5/#fun_float) [int](https://jp.tradingview.com/pine-script-reference/v5/#fun_int) [bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_bool) [color](https://jp.tradingview.com/pine-script-reference/v5/#fun_color) [string](https://jp.tradingview.com/pine-script-reference/v5/#fun_string) [label](https://jp.tradingview.com/pine-script-reference/v5/#fun_label)

### linefill()

na を linefill に型変換します。

構文

```
linefill(x) → series linefill
```

引数

x (series linefill) 指定した型に変換された値、通常は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

リターン

linefillに型変換した後の引数の値。

こちらもご覧ください

[float](https://jp.tradingview.com/pine-script-reference/v5/#fun_float) [int](https://jp.tradingview.com/pine-script-reference/v5/#fun_int) [bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_bool) [color](https://jp.tradingview.com/pine-script-reference/v5/#fun_color) [string](https://jp.tradingview.com/pine-script-reference/v5/#fun_string) [line](https://jp.tradingview.com/pine-script-reference/v5/#fun_line) [label](https://jp.tradingview.com/pine-script-reference/v5/#fun_label)

### log.error()

2個の多重定義

フォーマット対象の文字列と値をフォーマットされた文字列へと変換し、その結果をデバッグレベル "error" でタグ付けされた「Pineログ」メニューに送ります。

フォーマット文字列には、リテラルテキストと、フォーマットされる値ごとに波括弧 {} で囲まれた1つのプレースホルダーを含めることができます。各プレースホルダーは、置き換えられる必須引数の (0から始まる) インデックスと、オプションのフォーマット指定子で構成されます。インデックスは、str.format の引数リストにおける引数の位置を表します。

構文と多重定義

[```\\
log.error(message) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_log.error-0) [```\\
log.error(formatString, arg0, arg1, ...) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_log.error-1)

引数

message (series string) ログメッセージ。

例

```
//@version=5
strategy("My strategy", overlay = true, margin_long = 100, margin_short = 100, process_orders_on_close = true)
bracketTickSizeInput = input.int(1000, "Stoploss/Take-Profit distance (in ticks)")

longCondition = ta.crossover(ta.sma(close, 14), ta.sma(close, 28))
if (longCondition)
    limitLevel = close * 1.01
    log.info("Long limit order has been placed at {0}", limitLevel)
    strategy.order("My Long Entry Id", strategy.long, limit = limitLevel)

    log.info("Exit orders have been placed: Take-profit at {0}, Stop-loss at {1}", close)
    strategy.exit("Exit", "My Long Entry Id", profit = bracketTickSizeInput, loss = bracketTickSizeInput)

if strategy.opentrades > 10
    log.warning("{0} positions opened in the same direction in a row. Try adjusting `bracketTickSizeInput`", strategy.opentrades)

last10Perc = strategy.initial_capital / 10 > strategy.equity
if (last10Perc and not last10Perc[1])
    log.error("The strategy has lost 90% of the initial capital!")
```

リターン

フォーマットされた文字列。

備考

引用符で囲まれていないパターン内の波括弧は、バランスが取れていなければなりません。例えば、"ab {0} de" と "ab '}' de" は有効なパターンですが、"ab {0'}' de", "ab } de" や "''{''" は有効なパターンではありません。

この関数は `{}` 内の値に対して追加のフォーマットを行うことができます。追加のフォーマットのオプションについては [str.format](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.format) の記事中の「例」のセクションでご覧になれます。

`formatString` の引数として使用される文字列であれば、シングルクォート (') を含めることができます。しかしながら、想定外のフォーマット結果を避けるためには、その文字列のシングルクォートをすべて対にしておく必要があります。

「Pineログ...」ボタンは、Pineエディタの「詳細」のドロップダウンメニュー、および `log.*()` 関数を使用するスクリプトのステータスラインに表示される「詳細」のドロップダウンメニューからアクセスできます。

### log.info()

2個の多重定義

フォーマット対象の文字列と値をフォーマットされた文字列へと変換し、その結果をデバッグレベル "info" でタグ付けされた「Pineログ」メニューに送ります。

フォーマット文字列には、リテラルテキストと、フォーマットされる値ごとに波括弧 {} で囲まれた1つのプレースホルダーを含めることができます。各プレースホルダーは、置き換えられる必須引数の (0から始まる) インデックスと、オプションのフォーマット指定子で構成されます。インデックスは、str.format の引数リストにおける引数の位置を表します。

構文と多重定義

[```\\
log.info(message) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_log.info-0) [```\\
log.info(formatString, arg0, arg1, ...) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_log.info-1)

引数

message (series string) ログメッセージ。

例

```
//@version=5
strategy("My strategy", overlay = true, margin_long = 100, margin_short = 100, process_orders_on_close = true)
bracketTickSizeInput = input.int(1000, "Stoploss/Take-Profit distance (in ticks)")

longCondition = ta.crossover(ta.sma(close, 14), ta.sma(close, 28))
if (longCondition)
    limitLevel = close * 1.01
    log.info("Long limit order has been placed at {0}", limitLevel)
    strategy.order("My Long Entry Id", strategy.long, limit = limitLevel)

    log.info("Exit orders have been placed: Take-profit at {0}, Stop-loss at {1}", close)
    strategy.exit("Exit", "My Long Entry Id", profit = bracketTickSizeInput, loss = bracketTickSizeInput)

if strategy.opentrades > 10
    log.warning("{0} positions opened in the same direction in a row. Try adjusting `bracketTickSizeInput`", strategy.opentrades)

last10Perc = strategy.initial_capital / 10 > strategy.equity
if (last10Perc and not last10Perc[1])
    log.error("The strategy has lost 90% of the initial capital!")
```

リターン

フォーマットされた文字列。

備考

引用符で囲まれていないパターン内の波括弧は、バランスが取れていなければなりません。例えば、"ab {0} de" と "ab '}' de" は有効なパターンですが、"ab {0'}' de", "ab } de" や "''{''" は有効なパターンではありません。

この関数は `{}` 内の値に対して追加のフォーマットを行うことができます。追加のフォーマットのオプションについては [str.format](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.format) の記事中の「例」のセクションでご覧になれます。

`formatString` の引数として使用される文字列であれば、シングルクォート (') を含めることができます。しかしながら、想定外のフォーマット結果を避けるためには、その文字列のシングルクォートをすべて対にしておく必要があります。

「Pineログ...」ボタンは、Pineエディタの「詳細」のドロップダウンメニュー、および `log.*()` 関数を使用するスクリプトのステータスラインに表示される「詳細」のドロップダウンメニューからアクセスできます。

### log.warning()

2個の多重定義

フォーマット対象の文字列と値をフォーマットされた文字列へと変換し、その結果をデバッグレベル "warning" でタグ付けされた「Pineログ」メニューに送ります。

フォーマット文字列には、リテラルテキストと、フォーマットされる値ごとに波括弧 {} で囲まれた1つのプレースホルダーを含めることができます。各プレースホルダーは、置き換えられる必須引数の (0から始まる) インデックスと、オプションのフォーマット指定子で構成されます。インデックスは、str.format の引数リストにおける引数の位置を表します。

構文と多重定義

[```\\
log.warning(message) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_log.warning-0) [```\\
log.warning(formatString, arg0, arg1, ...) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_log.warning-1)

引数

message (series string) ログメッセージ。

例

```
//@version=5
strategy("My strategy", overlay = true, margin_long = 100, margin_short = 100, process_orders_on_close = true)
bracketTickSizeInput = input.int(1000, "Stoploss/Take-Profit distance (in ticks)")

longCondition = ta.crossover(ta.sma(close, 14), ta.sma(close, 28))
if (longCondition)
    limitLevel = close * 1.01
    log.info("Long limit order has been placed at {0}", limitLevel)
    strategy.order("My Long Entry Id", strategy.long, limit = limitLevel)

    log.info("Exit orders have been placed: Take-profit at {0}, Stop-loss at {1}", close)
    strategy.exit("Exit", "My Long Entry Id", profit = bracketTickSizeInput, loss = bracketTickSizeInput)

if strategy.opentrades > 10
    log.warning("{0} positions opened in the same direction in a row. Try adjusting `bracketTickSizeInput`", strategy.opentrades)

last10Perc = strategy.initial_capital / 10 > strategy.equity
if (last10Perc and not last10Perc[1])
    log.error("The strategy has lost 90% of the initial capital!")
```

リターン

フォーマットされた文字列。

備考

引用符で囲まれていないパターン内の波括弧は、バランスが取れていなければなりません。例えば、"ab {0} de" と "ab '}' de" は有効なパターンですが、"ab {0'}' de", "ab } de" や "''{''" は有効なパターンではありません。

この関数は `{}` 内の値に対して追加のフォーマットを行うことができます。追加のフォーマットのオプションについては [str.format](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.format) の記事中の「例」のセクションでご覧になれます。

`formatString` の引数として使用される文字列であれば、シングルクォート (') を含めることができます。しかしながら、想定外のフォーマット結果を避けるためには、その文字列のシングルクォートをすべて対にしておく必要があります。

「Pineログ...」ボタンは、Pineエディタの「詳細」のドロップダウンメニュー、および `log.*()` 関数を使用するスクリプトのステータスラインに表示される「詳細」のドロップダウンメニューからアクセスできます。

### math.abs()

8個の多重定義

`number` の絶対値は、`number` >= 0 ならば `number` となり、そうでなければ -`number` となります。

構文と多重定義

[```\\
math.abs(number) → const int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.abs-0) [```\\
math.abs(number) → input int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.abs-1) [```\\
math.abs(number) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.abs-2) [```\\
math.abs(number) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.abs-3) [```\\
math.abs(number) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.abs-4) [```\\
math.abs(number) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.abs-5) [```\\
math.abs(number) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.abs-6) [```\\
math.abs(number) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.abs-7)

引数

number (const int) 計算の中で使用する数字です。

リターン

`number` の絶対値。

### math.acos()

4個の多重定義

acos関数は、\[-1, 1\]の範囲の y に対して cos(acos(y))= y といったように、（ラジアンでの）数値のアークコサインを返します。

構文と多重定義

[```\\
math.acos(angle) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.acos-0) [```\\
math.acos(angle) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.acos-1) [```\\
math.acos(angle) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.acos-2) [```\\
math.acos(angle) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.acos-3)

引数

angle (const int/float) 計算の中で使用するラジアンでの値です。

リターン

アークコサインの値で、返される角度は\[0, Pi\]の範囲です。もし y が\[-1, 1\]の範囲外にある場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

### math.asin()

4個の多重定義

asin関数は、\[-1, 1\]の範囲の y に対して sin(asin(y)) = y といったように、（ラジアンでの）数値のアークサインを返します。

構文と多重定義

[```\\
math.asin(angle) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.asin-0) [```\\
math.asin(angle) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.asin-1) [```\\
math.asin(angle) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.asin-2) [```\\
math.asin(angle) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.asin-3)

引数

angle (const int/float) 計算の中で使用するラジアンでの値です。

リターン

アークサインの値で、返される角度は\[-Pi/2, Pi/2\]の範囲です。もし y が\[-1, 1\]の範囲外にある場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

### math.atan()

4個の多重定義

atan関数は、任意の y に対して tan(atan(y)) = y といったように、（ラジアンでの）数値のアークタンジェントを返します。

構文と多重定義

[```\\
math.atan(angle) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.atan-0) [```\\
math.atan(angle) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.atan-1) [```\\
math.atan(angle) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.atan-2) [```\\
math.atan(angle) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.atan-3)

引数

angle (const int/float) 計算の中で使用するラジアンでの値です。

リターン

アークタンジェントの値で、返される角度は\[-Pi/2, Pi/2\]の範囲です。

### math.avg()

2個の多重定義

指定されたすべての系列（要素ごと）の平均を計算します。

構文と多重定義

[```\\
math.avg(number0, number1, ...) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.avg-0) [```\\
math.avg(number0, number1, ...) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.avg-1)

引数

number0, number1, ... (simple int/float) 計算の中で使用する数字のシーケンスです。

リターン

平均。

こちらもご覧ください

[math.sum](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sum) [ta.cum](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.cum) [ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma)

### math.ceil()

4個の多重定義

ceil関数は、引数以上である（最も負に近い）最小の整数を返します。

構文と多重定義

[```\\
math.ceil(number) → const int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.ceil-0) [```\\
math.ceil(number) → input int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.ceil-1) [```\\
math.ceil(number) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.ceil-2) [```\\
math.ceil(number) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.ceil-3)

引数

number (const int/float) 計算の中で使用する数字です。

リターン

指定された数値以上の最小の整数。

こちらもご覧ください

[math.floor](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.floor) [math.round](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.round)

### math.cos()

4個の多重定義

cos関数は、角度の三角関数コサインを返します。

構文と多重定義

[```\\
math.cos(angle) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.cos-0) [```\\
math.cos(angle) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.cos-1) [```\\
math.cos(angle) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.cos-2) [```\\
math.cos(angle) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.cos-3)

引数

angle (const int/float) ラジアンでの角度。

リターン

角度の三角関数コサイン。

### math.exp()

4個の多重定義

`number` の exp関数は e を `number` のべき乗にしたものです。e はオイラー数を示します。

構文と多重定義

[```\\
math.exp(number) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.exp-0) [```\\
math.exp(number) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.exp-1) [```\\
math.exp(number) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.exp-2) [```\\
math.exp(number) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.exp-3)

引数

number (const int/float) 計算の中で使用する数字です。

リターン

e を `number` のべき乗にした値。

こちらもご覧ください

[math.pow](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.pow)

### math.floor()

4個の多重定義

構文と多重定義

[```\\
math.floor(number) → const int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.floor-0) [```\\
math.floor(number) → input int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.floor-1) [```\\
math.floor(number) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.floor-2) [```\\
math.floor(number) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.floor-3)

引数

number (const int/float) 計算の中で使用する数字です。

リターン

指定された数値以下の最大の整数。

こちらもご覧ください

[math.ceil](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.ceil) [math.round](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.round)

### math.log()

4個の多重定義

任意の `number` \> 0 の自然対数は、e^y = `number` となる一意の y となります。

構文と多重定義

[```\\
math.log(number) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.log-0) [```\\
math.log(number) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.log-1) [```\\
math.log(number) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.log-2) [```\\
math.log(number) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.log-3)

引数

number (const int/float) 計算の中で使用する数字です。

リターン

`number` の自然対数。

こちらもご覧ください

[math.log10](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.log10)

### math.log10()

4個の多重定義

`number` の常用（底が10の）対数は、`number` を得るために必要な10の指数です。10^y = `number` となります。

構文と多重定義

[```\\
math.log10(number) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.log10-0) [```\\
math.log10(number) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.log10-1) [```\\
math.log10(number) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.log10-2) [```\\
math.log10(number) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.log10-3)

引数

number (const int/float) 計算の中で使用する数字です。

リターン

`number`の底10の対数。

こちらもご覧ください

[math.log](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.log)

### math.max()

8個の多重定義

複数の値のうち一番大きいものを返します。

構文と多重定義

[```\\
math.max(number0, number1, ...) → const int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.max-0) [```\\
math.max(number0, number1, ...) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.max-1) [```\\
math.max(number0, number1, ...) → input int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.max-2) [```\\
math.max(number0, number1, ...) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.max-3) [```\\
math.max(number0, number1, ...) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.max-4) [```\\
math.max(number0, number1, ...) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.max-5) [```\\
math.max(number0, number1, ...) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.max-6) [```\\
math.max(number0, number1, ...) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.max-7)

引数

number0, number1, ... (const int) 計算の中で使用する数字のシーケンスです。

例

```
//@version=5
indicator("math.max", overlay=true)
plot(math.max(close, open))
plot(math.max(close, math.max(open, 42)))
```

リターン

指定された複数の値で一番大きいもの。

こちらもご覧ください

[math.min](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.min)

### math.min()

8個の多重定義

複数の値のうち一番小さいものを返します。

構文と多重定義

[```\\
math.min(number0, number1, ...) → const int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.min-0) [```\\
math.min(number0, number1, ...) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.min-1) [```\\
math.min(number0, number1, ...) → input int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.min-2) [```\\
math.min(number0, number1, ...) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.min-3) [```\\
math.min(number0, number1, ...) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.min-4) [```\\
math.min(number0, number1, ...) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.min-5) [```\\
math.min(number0, number1, ...) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.min-6) [```\\
math.min(number0, number1, ...) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.min-7)

引数

number0, number1, ... (const int) 計算の中で使用する数字のシーケンスです。

例

```
//@version=5
indicator("math.min", overlay=true)
plot(math.min(close, open))
plot(math.min(close, math.min(open, 42)))
```

リターン

指定された複数の値で一番小さいもの。

こちらもご覧ください

[math.max](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.max)

### math.pow()

4個の多重定義

数学のべき乗関数。

構文と多重定義

[```\\
math.pow(base, exponent) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.pow-0) [```\\
math.pow(base, exponent) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.pow-1) [```\\
math.pow(base, exponent) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.pow-2) [```\\
math.pow(base, exponent) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.pow-3)

引数

base (const int/float) 使用するベースを指定する。

exponent (const int/float) 指数を指定する。

例

```
//@version=5
indicator("math.pow", overlay=true)
plot(math.pow(close, 2))
```

リターン

`base`を`exponent`のべき乗にしたものです。`base`が系列の場合は、要素ごとに計算されます。

こちらもご覧ください

[math.sqrt](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sqrt) [math.exp](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.exp)

### math.random()

疑似乱数値を返します。この関数は、スクリプトを実行するたびに、異なる値のシーケンスを生成します。オプションの seed 引数に同じ値を使用すると、繰り返しのシーケンスが生成されます。

構文

```
math.random(min, max, seed) → series float
```

引数

min (series int/float) ランダムな値の範囲の下限値です。この値は範囲に含まれません。デフォルトは 0 です。

max (series int/float) ランダムな値の範囲の上限値です。この値は範囲に含まれません。デフォルトは 1 です。

seed (series int) オプション引数。同じ seed を使用した場合、この関数を連続して呼び出すことで繰り返しの値のセットを生成することができます。

リターン

ランダムな値。

### math.round()

8個の多重定義

`number` の値を四捨五入して最も近い整数にしたものを返します。同値は切り上げます。`precision` パラメーターが指定された場合は、その小数点以下の桁数に丸められた浮動小数点の値を返します。

構文と多重定義

[```\\
math.round(number) → const int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.round-0) [```\\
math.round(number) → input int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.round-1) [```\\
math.round(number) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.round-2) [```\\
math.round(number) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.round-3) [```\\
math.round(number, precision) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.round-4) [```\\
math.round(number, precision) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.round-5) [```\\
math.round(number, precision) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.round-6) [```\\
math.round(number, precision) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.round-7)

引数

number (const int/float) 丸められる値。

リターン

最も近い整数に丸められた `number` の値、または精度に従って丸められた値。

備考

'na'値については、関数は 'na' を返します。

こちらもご覧ください

[math.ceil](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.ceil) [math.floor](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.floor)

### math.round\_to\_mintick()

2個の多重定義

シンボルの mintick に丸められた値、つまり [syminfo.mintick](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.mintick) で割り切れる最も近い値を、余りを取り除いて四捨五入して返します。

構文と多重定義

[```\\
math.round_to_mintick(number) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.round_to_mintick-0) [```\\
math.round_to_mintick(number) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.round_to_mintick-1)

引数

number (simple int/float) 丸められる値。

リターン

ティックの精度で丸められた `number` 。

備考

'na'値については、関数は 'na' を返します。

こちらもご覧ください

[math.ceil](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.ceil) [math.floor](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.floor)

### math.sign()

4個の多重定義

`number` の符号 (シグナム) で、`number` が0の場合は0、`number` が0より大きい場合は1.0、`number` が0より小さい場合は-1.0となります。

構文と多重定義

[```\\
math.sign(number) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sign-0) [```\\
math.sign(number) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sign-1) [```\\
math.sign(number) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sign-2) [```\\
math.sign(number) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sign-3)

引数

number (const int/float) 計算の中で使用する数字です。

リターン

引数の符号。

### math.sin()

4個の多重定義

sin関数は、角度の三角関数の符号を返します。

構文と多重定義

[```\\
math.sin(angle) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sin-0) [```\\
math.sin(angle) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sin-1) [```\\
math.sin(angle) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sin-2) [```\\
math.sin(angle) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sin-3)

引数

angle (const int/float) ラジアンでの角度。

リターン

角度の三角関数の符号。

### math.sqrt()

4個の多重定義

任意の `number` >= 0 の平方根は、y^2 = `number` となる一意の y >= 0 となります。

構文と多重定義

[```\\
math.sqrt(number) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sqrt-0) [```\\
math.sqrt(number) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sqrt-1) [```\\
math.sqrt(number) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sqrt-2) [```\\
math.sqrt(number) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sqrt-3)

引数

number (const int/float) 計算の中で使用する数字です。

リターン

`number` の平方根。

こちらもご覧ください

[math.pow](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.pow)

### math.sum()

sum関数は、x の範囲で直近の y の値の合計を返します。

構文

```
math.sum(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

リターン

過去の `length` バー分の期間における `source` の合計。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.cum](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.cum) [for](https://jp.tradingview.com/pine-script-reference/v5/#kw_for)

### math.tan()

4個の多重定義

tan関数は、角度の三角関数のタンジェントを返します。

構文と多重定義

[```\\
math.tan(angle) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.tan-0) [```\\
math.tan(angle) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.tan-1) [```\\
math.tan(angle) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.tan-2) [```\\
math.tan(angle) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.tan-3)

引数

angle (const int/float) ラジアンでの角度。

リターン

角度の三角関数タンジェント。

### math.todegrees()

ラジアンで測定された角度から、ほぼ同等の角度を度で返します。

構文

```
math.todegrees(radians) → series float
```

引数

radians (series int/float) ラジアンの角度。

リターン

度で表される角度の値。

### math.toradians()

度で測定された角度から、ほぼ同等の角度をラジアンで返します。

構文

```
math.toradians(degrees) → series float
```

引数

degrees (series int/float) 度単位の角度。

リターン

ラジアン単位の角度の値。

### max\_bars\_back()

関数は、指定されたビルトインまたはユーザー変数の、履歴参照に利用できるバーの最大数を設定します。演算子 '\[\]' が変数に適用される場合、その変数の過去の値が参照されます。

演算子 '\[\]' の引数が、コンパイル時に設定される定数値（例. 'v\[10\]', 'close\[500\]'）の場合、'max\_bars\_back' 関数を変数に使用する必要はありません。Pine Script® のコンパイラーは、その定数値を履歴バッファサイズとして使用します。

演算子 '\[\]' の引数が、実行時に計算される値（例. 'v\[i\]' ここでの 'i' は系列変数）の場合、Pine Script® は実行時に履歴バッファサイズの自動検出を試みます。場合によってはそれは失敗し、スクリプトが実行時にクラッシュします。これはつまりバッファの外の履歴の値を参照する為です。その様な場合には、問題を手動で修正するために、'max\_bars\_back' を使用してください。

構文

```
max_bars_back(var, num) → void
```

引数

var (series int/float/bool/color/label/line) 履歴バッファのサイズを変更する系列変数の識別子。可能な値は: 'open', 'high', 'low', 'close', 'volume', 'time', または任意のユーザー定義変数のIDです。

num (const int) 変数 'var' に対して参照可能なバーの数となる履歴バッファサイズを指定します。

例

```
//@version=5
indicator("max_bars_back")
close_() => close
depth() => 400
d = depth()
v = close_()
max_bars_back(v, 500)
out = if bar_index > 0
    v[d]
else
    v
plot(out)
```

リターン

void

備考

現時点では、'max\_bars\_back' は、'hl2', 'hlc3', 'ohlc4' といったビルトイン変数に適用することはできません。回避策として、'max\_bars\_back' を複数回呼び出して下さい（例.‘max\_bars\_back(hl2, 100)’を一度呼び出す代わりに、この関数を2回呼び出して下さい: ‘max\_bars\_back(high, 100), max\_bars\_back(low, 100)’）。

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) または [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) の 'max\_bars\_back' パラメータを使用すると、インジケーター内のすべての変数が影響を受けます。その結果、メモリが過剰に使用され、実行時に問題を引き起こす可能性があります。可能であれば（つまり原因が関数ではなく変数の場合）、代わりに [max\_bars\_back](https://jp.tradingview.com/pine-script-reference/v5/#fun_max_bars_back) 関数を使用してください。

こちらもご覧ください

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator)

### minute()

2個の多重定義

構文と多重定義

[```\\
minute(time) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_minute-0) [```\\
minute(time, timezone) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_minute-1)

引数

time (series int) ミリ秒におけるUNIX時間。

リターン

UNIX時間で提供される（取引所のタイムゾーンでの）分。

備考

UNIX時間は1970年1月1日00:00:00 (UTC) から経過したミリ秒数です。

こちらもご覧ください

[minute](https://jp.tradingview.com/pine-script-reference/v5/#var_minute) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#fun_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#fun_month) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#fun_hour) [second](https://jp.tradingview.com/pine-script-reference/v5/#fun_second)

### month()

2個の多重定義

構文と多重定義

[```\\
month(time) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_month-0) [```\\
month(time, timezone) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_month-1)

引数

time (series int) ミリ秒におけるUNIX時間。

リターン

UNIX時間で提供される（取引所のタイムゾーンでの）月。

備考

UNIX時間は1970年1月1日00:00:00 (UTC) から経過したミリ秒数です。

この関数はバーの開始時刻に基づく月を返す事にご注意下さい。オーバーナイトセッションでは（例．月曜のセッションが日曜日の17:00 UTC-4に始まるEURUSD）、この値は取引日の月よりも1つ少なくなる可能性があります。

こちらもご覧ください

[month](https://jp.tradingview.com/pine-script-reference/v5/#var_month) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#fun_year) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#fun_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#fun_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#fun_second)

### na()

2個の多重定義

`x` が [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) であるかを判定します。

構文と多重定義

[```\\
na(x) → series bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_na-0) [```\\
na(x) → simple bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_na-1)

引数

x (<arg\_type>) 確認する値。

例

```
//@version=5
indicator("na")
// Use the `na()` function to test for `na`.
plot(na(close[1]) ? close : close[1])
// ALTERNATIVE
// `nz()` also tests `close[1]` for `na`. It returns `close[1]` if it is not `na`, and `close` if it is.
plot(nz(close[1], close))
```

リターン

`x` が [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) であれば [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を返します。そうでなければ [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。

こちらもご覧ください

[na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) [fixnan](https://jp.tradingview.com/pine-script-reference/v5/#fun_fixnan) [nz](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz)

### nz()

16個の多重定義

NaN値を系列の0（または指定された値）に置き換えます。

構文と多重定義

[```\\
nz(source) → simple color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-0) [```\\
nz(source) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-1) [```\\
nz(source) → series color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-2) [```\\
nz(source) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-3) [```\\
nz(source) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-4) [```\\
nz(source) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-5) [```\\
nz(source, replacement) → simple color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-6) [```\\
nz(source, replacement) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-7) [```\\
nz(source, replacement) → series color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-8) [```\\
nz(source, replacement) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-9) [```\\
nz(source, replacement) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-10) [```\\
nz(source, replacement) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-11) [```\\
nz(source) → simple bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-12) [```\\
nz(source) → series bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-13) [```\\
nz(source, replacement) → simple bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-14) [```\\
nz(source, replacement) → series bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_nz-15)

引数

source (simple color) 処理を行う系列の値。

例

```
//@version=5
indicator("nz", overlay=true)
plot(nz(ta.sma(close, 100)))
```

リターン

`source`の値が`na`でない場合は、その値が返されます。`source`の値が`na`である場合は、0を返すか、`replacement`が使用されている場合はその引数を返します。

こちらもご覧ください

[na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) [na](https://jp.tradingview.com/pine-script-reference/v5/#fun_na) [fixnan](https://jp.tradingview.com/pine-script-reference/v5/#fun_fixnan)

### runtime.error()

呼び出されると、引数 `message` で指定されたエラーメッセージとともにランタイムエラーを発生させます。

構文

```
runtime.error(message) → void
```

引数

message (series string) エラーメッセージ。

### second()

2個の多重定義

構文と多重定義

[```\\
second(time) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_second-0) [```\\
second(time, timezone) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_second-1)

引数

time (series int) ミリ秒におけるUNIX時間。

リターン

UNIX時間で提供される（取引所のタイムゾーンでの）秒。

備考

UNIX時間は1970年1月1日00:00:00 (UTC) から経過したミリ秒数です。

こちらもご覧ください

[second](https://jp.tradingview.com/pine-script-reference/v5/#var_second) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#fun_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#fun_month) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#fun_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#fun_minute)

### str.contains()

3個の多重定義

`source` の文字列が `str` の部分文字列を含んでいれば true を、そうでなければ false を返します。

構文と多重定義

[```\\
str.contains(source, str) → const bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.contains-0) [```\\
str.contains(source, str) → simple bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.contains-1) [```\\
str.contains(source, str) → series bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.contains-2)

引数

source (const string) ソース文字列。

str (const string) 検索対象の部分文字列。

例

```
//@version=5
indicator("str.contains")
// If the current chart is a continuous futures chart, e.g “BTC1!”, then the function will return true, false otherwise.
var isFutures = str.contains(syminfo.tickerid, "!")
plot(isFutures ? 1 : 0)
```

リターン

`str` が `source` の文字列中にあれば true、なければ false。

こちらもご覧ください

[str.pos](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.pos) [str.match](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.match)

### str.endswith()

3個の多重定義

`source` の文字列が `str` で指定した部分文字列で終わっていれば true を、そうでなければ false を返します。

構文と多重定義

[```\\
str.endswith(source, str) → const bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.endswith-0) [```\\
str.endswith(source, str) → simple bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.endswith-1) [```\\
str.endswith(source, str) → series bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.endswith-2)

引数

source (const string) ソース文字列。

str (const string) 検索対象の部分文字列。

リターン

`source` の文字列が `str` で指定した部分文字列で終わっていれば true、そうでなければ false。

こちらもご覧ください

[str.startswith](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.startswith)

### str.format()

2個の多重定義

フォーマット文字列には、リテラルテキストと、フォーマットされる値ごとに波括弧 {} で囲まれた1つのプレースホルダーを含めることができます。各プレースホルダーは、置き換えられる必須引数の (0から始まる) インデックスと、オプションのフォーマット指定子で構成されます。インデックスは、str.format の引数リストにおける引数の位置を表します。

構文と多重定義

[```\\
str.format(formatString, arg0, arg1, ...) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.format-0) [```\\
str.format(formatString, arg0, arg1, ...) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.format-1)

引数

formatString (simple string) フォーマット文字列。

arg0, arg1, ... (simple int/float/bool/string) フォーマットする値。

例

```
//@version=5
indicator("str.format", overlay=true)
// The format specifier inside the curly braces accepts certain modifiers:
// - Specify the number of decimals to display:
s1 = str.format("{0,number,#.#}", 1.34) // returns: 1.3
label.new(bar_index, close, text=s1)
// - Round a float value to an integer:
s2 = str.format("{0,number,integer}", 1.34) // returns: 1
label.new(bar_index - 1, close, text=s2)
// - Display a number in currency:
s3 = str.format("{0,number,currency}", 1.34) // returns: $1.34
label.new(bar_index - 2, close, text=s3)
// - Display a number as a percentage:
s4 = str.format("{0,number,percent}", 0.5) // returns: 50%
label.new(bar_index - 3, close, text=s4)
// EXAMPLES WITH SEVERAL ARGUMENTS
// returns: Number 1 is not equal to 4
s5 = str.format("Number {0} is not {1} to {2}", 1, "equal", 4)
label.new(bar_index - 4, close, text=s5)
// returns: 1.34 != 1.3
s6 = str.format("{0} != {0, number, #.#}", 1.34)
label.new(bar_index - 5, close, text=s6)
// returns: 1 is equal to 1, but 2 is equal to 2
s7 = str.format("{0, number, integer} is equal to 1, but {1, number, integer} is equal to 2", 1.34, 1.52)
label.new(bar_index - 6, close, text=s7)
// returns: The cash turnover amounted to $1,340,000.00
s8 = str.format("The cash turnover amounted to {0, number, currency}", 1340000)
label.new(bar_index - 7, close, text=s8)
// returns: Expected return is 10% - 20%
s9 = str.format("Expected return is {0, number, percent} - {1, number, percent}", 0.1, 0.2)
label.new(bar_index - 8, close, text=s9)
```

リターン

フォーマットされた文字列。

備考

デフォルトでは、フォーマットされた数値は小数点以下3桁まで表示され、末尾のゼロは表示されません。

`formatString` の引数として使用される文字列であれば、シングルクォート (') を含めることができます。しかしながら、想定外のフォーマット結果を避けるためには、その文字列のシングルクォートをすべて対にしておく必要があります。

引用符で囲まれていないパターン内の波括弧は、バランスが取れていなければなりません。例えば、"ab {0} de" と "ab '}' de" は有効なパターンですが、"ab {0'}' de", "ab } de" や "''{''" は有効なパターンではありません。

### str.format\_time()

`time` のタイムスタンプを `format` と `timezone` に従ってフォーマットされた文字列に変換します。

構文

```
str.format_time(time, format, timezone) → series string
```

引数

time (series int) ミリ秒におけるUNIX時間。

format (series string) 返される文字列中の `time` の日付/時刻表現を指定するフォーマット文字列です。文字列の中で使われている文字はシングルクォーテーション `'` でエスケープされているものを除き、全てフォーマットトークンとみなされ、フォーマットの指示として使用されます。備考のセクションで非常に便利なトークンをリストにしておりますのでご参照ください。オプション引数です。デフォルトは "yyyy-MM-T'HH:mm:ssZ" でISO 8601規格に準拠した表示となっています。

timezone (series string) UTC/GMT表記 (例. "UTC-5", "GMT+0530") または [IANAタイムゾーン・データベース名](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) (例. "America/New\_York") で指定したタイムゾーンで戻り値を調整することができます。オプション引数で、デフォルトは [syminfo.timezone](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.timezone) です。

例

```
//@version=5
indicator("str.format_time")
if timeframe.change("1D")
    formattedTime = str.format_time(time, "yyyy-MM-dd HH:mm", syminfo.timezone)
    label.new(bar_index, high, formattedTime)
```

リターン

フォーマットされた文字列。

備考

`M`, `d`, `h`, `H`, `m`, `s` のトークンは2つ重ねて先頭にゼロを生成できます。例えば1月は、`1` であれば `M` と表示され、`MM` であれば `01` と表示されます。

非常によく使用されるフォーマットトークンは以下のとおりです:

y - 年です。`yy`を使うと西暦の下2桁が、`yyyy`を使うと4桁全てが出力されます。2000年は`yy`であれば `00` 、`yyyy` であれば `2000` となります。

M - 月です。小文字の `m` と混同しないようにしてください \- これは「分」を表します。

d - 日です。

a - AM/PMを後置します。

h - 12時間形式の時間です。このフォーマットでは、一日の最後の1時間は `11` になります。

H - 24時間形式の時間です。このフォーマットでは、一日の最後の1時間は `23` になります。

m - 分です。

s - 秒です。

S - 1秒の端数です。

Z - タイムゾーンです。UTCからのオフセットがHHmmで示され，その前に `+` もしくは `-` が付きます。

### str.length()

3個の多重定義

文字列の文字数を整数で返します。

構文と多重定義

[```\\
str.length(string) → const int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.length-0) [```\\
str.length(string) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.length-1) [```\\
str.length(string) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.length-2)

引数

string (const string) ソース文字列。

リターン

ソース文字列の文字数。

### str.lower()

3個の多重定義

すべての文字を小文字に変換した新しい文字列を返します。

構文と多重定義

[```\\
str.lower(source) → const string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.lower-0) [```\\
str.lower(source) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.lower-1) [```\\
str.lower(source) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.lower-2)

引数

source (const string) 変換対象の文字列。

リターン

すべての文字が小文字に変換された新しい文字列。

こちらもご覧ください

[str.upper](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.upper)

### str.match()

2個の多重定義

引数 `source` の文字列が引数 `regex` の正規表現とマッチする場合は、その新しい文字列を返し、そうでない場合は空の文字列を返します。

構文と多重定義

[```\\
str.match(source, regex) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.match-0) [```\\
str.match(source, regex) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.match-1)

引数

source (simple string) ソース文字列。

regex (simple string) 文字列にマッチした正規表現。

例

```
//@version=5
indicator("str.match")

s = input.string("It's time to sell some NASDAQ:AAPL!")

// finding first substring that matches regular expression "[\w]+:[\w]+"
var string tickerid = str.match(s, "[\\w]+:[\\w]+")

if barstate.islastconfirmedhistory
    label.new(bar_index, high, text = tickerid) // "NASDAQ:AAPL"
```

リターン

引数 `source` の文字列が引数 `regex` の正規表現とマッチする場合は、その新しい文字列。そうでない場合は空の文字列。

備考

この関数は `source` 文字列中に現れた最初の [正規表現](https://en.wikipedia.org/wiki/Regular_expression#Perl_and_PCRE) の発生を返します。

`regex` の文字列中にあるバックスラッシュ "\\" は、追加のバックスラッシュでエスケープする必要があります。例. "\\\d" は正規表現では "\\d" を表します。

こちらもご覧ください

[str.contains](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.contains) [str.substring](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.substring)

### str.pos()

3個の多重定義

文字列 `str` が `source` の文字列の中で最初に現れる位置を返し、そうでない場合は 'na' を返します。

構文と多重定義

[```\\
str.pos(source, str) → const int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.pos-0) [```\\
str.pos(source, str) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.pos-1) [```\\
str.pos(source, str) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.pos-2)

引数

source (const string) ソース文字列。

str (const string) 検索対象の部分文字列。

リターン

`str` における、文字列 `source` の位置。

備考

文字列のインデックスは0から始まります。

こちらもご覧ください

[str.contains](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.contains) [str.match](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.match) [str.substring](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.substring)

### str.repeat()

4個の多重定義

反復される各インスタンスの間に `separator` を挿入し、ソースの文字列を `repeat` の回数だけ反復して、`source` の文字列を含む新しい文字列を構築する。

構文と多重定義

[```\\
str.repeat(source, repeat, separator) → const string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.repeat-0) [```\\
str.repeat(source, repeat, separator) → input string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.repeat-1) [```\\
str.repeat(source, repeat, separator) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.repeat-2) [```\\
str.repeat(source, repeat, separator) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.repeat-3)

引数

source (const string) 反復対象の文字列

repeat (const int) `source` の文字列の反復回数。0以上の値が必要です。

separator (const string) 反復される値の間に挿入する文字列。オプションです。デフォルトは空の文字列です。

例

```
//@version=5
indicator("str.repeat")
repeat = str.repeat("?", 3, ",") // Returns "?,?,?"
label.new(bar_index,close,repeat)
```

備考

`source` が [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) の場合、 [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

### str.replace()

3個の多重定義

N回目の `target` 文字列を `replacement` 文字列に置き換えた新しい文字列を返します。Nは `occurrence` で指定します。

構文と多重定義

[```\\
str.replace(source, target, replacement, occurrence) → const string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.replace-0) [```\\
str.replace(source, target, replacement, occurrence) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.replace-1) [```\\
str.replace(source, target, replacement, occurrence) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.replace-2)

引数

source (const string) ソース文字列。

target (const string) 置換される文字列。

replacement (const string) ターゲット文字列の代わりに挿入する文字列。

occurrence (const int) 置換するターゲット文字列のN番目の出現箇所。インデックスの付与は、最初にマッチした文字列を0として開始されます。オプションです。デフォルトは0です。

例

```
//@version=5
indicator("str.replace")
var source = "FTX:BTCUSD / FTX:BTCEUR"

// Replace first occurrence of "FTX" with "BINANCE" replacement string
var newSource = str.replace(source, "FTX",  "BINANCE", 0)

if barstate.islastconfirmedhistory
    // Display "BINANCE:BTCUSD / FTX:BTCEUR"
    label.new(bar_index, high, text = newSource)
```

リターン

処理された文字列。

こちらもご覧ください

[str.replace\_all](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.replace_all) [str.match](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.match)

### str.replace\_all()

2個の多重定義

ソース文字列にターゲット文字列が出現する度に置換文字列で置き換えられます。

構文と多重定義

[```\\
str.replace_all(source, target, replacement) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.replace_all-0) [```\\
str.replace_all(source, target, replacement) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.replace_all-1)

引数

source (simple string) ソース文字列。

target (simple string) 置換される文字列。

replacement (simple string) ターゲット文字列が出現する度に置換する文字列。

リターン

処理された文字列。

### str.split()

文字列を部分文字列の配列に分割してその配列IDを返します。

構文

```
str.split(string, separator) → array<string>
```

引数

string (series string) ソース文字列。

separator (series string) 各部分文字列を区切る文字列。

リターン

文字列配列のID。

### str.startswith()

3個の多重定義

`source` の文字列が `str` で指定した部分文字列で始まっていれば true を、そうでなければ false を返します。

構文と多重定義

[```\\
str.startswith(source, str) → const bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.startswith-0) [```\\
str.startswith(source, str) → simple bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.startswith-1) [```\\
str.startswith(source, str) → series bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.startswith-2)

引数

source (const string) ソース文字列。

str (const string) 検索対象の部分文字列。

リターン

`source` の文字列が `str` で指定した部分文字列で始まっていれば true、そうでなければ false を返します。

こちらもご覧ください

[str.endswith](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.endswith)

### str.substring()

6個の多重定義

`source` 文字列の部分文字列となっている新しい文字列を返します。部分文字列は `begin_pos` で指定されたインデックスの文字から始まり、 `source` 文字列 の 'end\_pos - 1' までの長さになります。

構文と多重定義

[```\\
str.substring(source, begin_pos) → const string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.substring-0) [```\\
str.substring(source, begin_pos) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.substring-1) [```\\
str.substring(source, begin_pos) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.substring-2) [```\\
str.substring(source, begin_pos, end_pos) → const string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.substring-3) [```\\
str.substring(source, begin_pos, end_pos) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.substring-4) [```\\
str.substring(source, begin_pos, end_pos) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.substring-5)

引数

source (const string) 部分文字列の抽出元となるソース文字列。

begin\_pos (const int) 抽出された部分文字列の開始位置。これは包括的です（抽出された部分文字列はその位置の文字を含みます）。

例

```
//@version=5
indicator("str.substring", overlay = true)
sym= input.symbol("NASDAQ:AAPL")
pos = str.pos(sym, ":")  // Get position of ":" character
tkr= str.substring(sym, pos+1) // "AAPL"
if barstate.islastconfirmedhistory
    label.new(bar_index, high, text = tkr)
```

リターン

ソース文字列から抽出された部分文字列。

備考

文字列のインデックスは 0 から始まります。 `begin_pos` が `end_pos` と等しい場合には、この関数は空の文字列を返します。

こちらもご覧ください

[str.contains](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.contains) [str.pos](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.pos) [str.match](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.match)

### str.tonumber()

4個の多重定義

`string` で表された値を "float" に変換します。

構文と多重定義

[```\\
str.tonumber(string) → const float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tonumber-0) [```\\
str.tonumber(string) → input float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tonumber-1) [```\\
str.tonumber(string) → simple float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tonumber-2) [```\\
str.tonumber(string) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tonumber-3)

引数

string (const string) 整数値または浮動小数点値の表現を含む文字列。

リターン

`string` で "float" に相当する値。この値が適切な形式の整数値または浮動小数点数でない場合、この関数は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

### str.tostring()

4個の多重定義

構文と多重定義

[```\\
str.tostring(value, format) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tostring-0) [```\\
str.tostring(value, format) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tostring-1) [```\\
str.tostring(value) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tostring-2) [```\\
str.tostring(value) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tostring-3)

引数

value (simple int/float) その要素が文字列に変換されたときの値または配列の識別子。

format (simple string) フォーマット文字列。以下の format.\* 定数もご利用可能です: [format.mintick](https://jp.tradingview.com/pine-script-reference/v5/#const_format.mintick)、 [format.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_format.percent)、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume)。オプション引数。デフォルト値は '#.##########' です。

リターン

引数 `value` の文字列表現。

引数 `value` が文字列の場合、そのまま返されます。

`value` が na のとき、関数は "NaN "という文字列を返します。

備考

浮動小数点数値のフォーマットは必要に応じて値が丸めることができます。例えば、str.tostring(3.99, '#') は "4" を返します。

ゼロパディングして表示するには、'#' の代わりに '0' を使用します。例．'#.000'。

[format.mintick](https://jp.tradingview.com/pine-script-reference/v5/#const_format.mintick) を使用する場合、その値は [syminfo.mintick](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.mintick) で余りなく割れる値の中で最も近い数値に丸められます。文字列は末尾にゼロを付けて返されます。

x引数が文字列の場合、同じ文字列の値が返されます。

Bool型の引数は、true または false が返されます。

x が na の場合、この関数は "NaN" を返します。

### str.trim()

4個の多重定義

`source` の左右に位置する空白やその他の制御文字（たとえば、“\\n”、“\\t”、など）をすべて取り除いて、新しい文字列を構築します。

構文と多重定義

[```\\
str.trim(source) → const string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.trim-0) [```\\
str.trim(source) → input string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.trim-1) [```\\
str.trim(source) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.trim-2) [```\\
str.trim(source) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.trim-3)

引数

source (const string) トリム対象の文字列

例

```
//@version=5
indicator("str.trim")
trim = str.trim("    abc    ") // Returns "abc"
label.new(bar_index,close,trim)
```

備考

トリム後の結果が空の場合、または `source` が [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) の場合は、空の文字列 ("") を返します。

### str.upper()

3個の多重定義

すべての文字を大文字に変換した新しい文字列を返します。

構文と多重定義

[```\\
str.upper(source) → const string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.upper-0) [```\\
str.upper(source) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.upper-1) [```\\
str.upper(source) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.upper-2)

引数

source (const string) 変換対象の文字列。

リターン

すべての文字が大文字に変換された新しい文字列。

こちらもご覧ください

[str.lower](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.lower)

### strategy()

スクリプトの宣言文です。スクリプトをストラテジーとして定義し、ストラテジーに関連する複数のプロパティを設定します。

構文

```
strategy(title, shorttitle, overlay, format, precision, scale, pyramiding, calc_on_order_fills, calc_on_every_tick, max_bars_back, backtest_fill_limits_assumption, default_qty_type, default_qty_value, initial_capital, currency, slippage, commission_type, commission_value, process_orders_on_close, close_entries_rule, margin_long, margin_short, explicit_plot_zorder, max_lines_count, max_labels_count, max_boxes_count, calc_bars_count, risk_free_rate, use_bar_magnifier, fill_orders_on_standard_ohlc, max_polylines_count, dynamic_requests, behind_chart) → void
```

引数

title (const string) スクリプトのタイトルです。`shorttitle` 引数を指定しない場合、チャート上に表示され、スクリプトを公開する際の投稿のデフォルトのタイトルになります。

shorttitle (const string) チャート上のスクリプトの表示名です。指定した場合、ほとんどのチャート関連のウィンドウで`title`引数を置き換えます。オプションです。デフォルトは`title`引数で指定したタイトルです。

overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、ストラテジーはメインチャート上に表示されます。 [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合には、別のペインに追加されます。エントリーとエグジットのストラテジー固有のラベルは、この設定に関係なくメインチャート上に表示されます。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

format (const string) スクリプトで表示する値の形式を指定します。利用できる値は: [format.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_format.inherit), [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price), [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume), [format.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_format.percent) です。オプションです。デフォルトは [format.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_format.inherit) です。

precision (const int) スクリプトの値の浮動小数点以下の表示桁数を指定します。16以下の正の整数である必要があります。`format` が [format.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_format.inherit) に設定され `precision` が指定されている場合、フォーマットには代わりに [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price) が設定されます。関数の `format` パラメーターで [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) が使用されている場合、 [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) で定義された浮動小数点の精度についてのルールが他の精度の設定よりも優先されるため、`precision` パラメーターは結果に影響しません。オプションです。デフォルトでは、チャートのシンボルの精度が継承されます。

scale (const scale\_type) 使用する価格スケール。利用できる値は: [scale.right](https://jp.tradingview.com/pine-script-reference/v5/#const_scale.right), [scale.left](https://jp.tradingview.com/pine-script-reference/v5/#const_scale.left), [scale.none](https://jp.tradingview.com/pine-script-reference/v5/#const_scale.none) です。 [scale.none](https://jp.tradingview.com/pine-script-reference/v5/#const_scale.none) は、`overlay = true` と組み合わせた場合でのみ利用できます。オプションです。デフォルトは、チャートと同じ価格スケールを使用します。

pyramiding (const int) 同じ方向のエントリーの最大数です。値が 0 の場合、同じ方向へのエントリー注文は1つだけ開くことができ、追加のエントリー注文は拒否されます。この設定は、ストラテジーの設定の「プロパティ」タブでも変更できます。オプションの引数です。デフォルトは 0 です。

calc\_on\_order\_fills (const bool) 注文が約定した後にストラテジーの再計算を行うかどうかを指定します。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、バーのクローズでのみ計算するのではなく、注文が約定された後に再計算します。この設定は、ストラテジーの設定の「プロパティ」タブでも変更可能です。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

calc\_on\_every\_tick (const bool) ストラテジーをリアルタイムの各ティックごとに再計算するかどうかを指定します。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、ストラテジーがリアルタイムバーで動作している時に、チャートデータの更新ごとに再計算されます。 [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合、ストラテジーはリアルタイムのバーがクローズした時にのみ計算されます。この引数は、過去データでのストラテジーの計算には影響しません。この設定は、ストラテジーの設定の「プロパティ」タブでも変更できます。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

max\_bars\_back (const int) スクリプトが各変数／関数に対して保持する履歴バッファの期間です。これは、履歴参照演算子の `[]` を用いた時に参照できる過去の値の期間を決定するものです。通常、必要なバッファーのサイズは、Pine Script® のランタイムで自動的に検出されます。このパラメーターを使用する必要があるのは、自動検出に失敗してランタイムエラーが発生した場合のみです。履歴バッファの基本的な仕組みについての詳細は、 [ヘルプセンター](https://www.tradingview.com/chart/?solution=43000587849) をご覧ください。オプションです。デフォルトは 0 です。

backtest\_fill\_limits\_assumption (const int) 指値注文の実行の値をティック単位で指定します。これを使用した場合、市場価格が指値注文の水準を指定したティック数分上回った場合にのみ、指値注文が実行されます。オプションです。デフォルトは 0 です。

default\_qty\_type (const string) `default_qty_value` で使用する単位を指定します。利用可能な値は: 契約数/株式数/ロット数の場合は [strategy.fixed](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.fixed) 、通貨単位の場合は [strategy.cash](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.cash) 、投資可能な資産に対する割合の場合は [strategy.percent\_of\_equity](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.percent_of_equity) です。この設定は、ストラテジーの設定の「プロパティ」タブでも変更できます。オプションです。デフォルトは [strategy.fixed](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.fixed) です。

default\_qty\_value (const int/float) `default_qty_type` パラメーターで指定した単位で、デフォルトの取引数量を指定します。この設定は、ストラテジーの設定の「プロパティ」タブでも変更できます。オプションです。デフォルトは 1 です。

initial\_capital (const int/float) ストラテジーが取引可能な初期資金量を `currency` 単位で指定します。オプションです。デフォルトは 1000000 です。

currency (const string) ストラテジーで計算に使用する通貨を指定します。市場のポジションは、`currency` をチャートのシンボル通貨に変換して保有されることもあります。使用される変換レートは（計算が行われるバーから見て）前日のFX\_IDCペアの日次レートに基づいています。この設定は、ストラテジーの設定の「プロパティ」タブでも変更できます。オプションです。デフォルトは [currency.NONE](https://jp.tradingview.com/pine-script-reference/v5/#const_currency.NONE) で、この場合チャートの通貨が使用されます。利用可能な値は `currency.*` で表される名前空間の定数のうちの1つです。例えば [currency.USD](https://jp.tradingview.com/pine-script-reference/v5/#const_currency.USD) などが利用できます。

slippage (const int) スリッページをティック単位で指定します。成行/逆指値注文の発注価格がストラテジーに対して不利になるように、ここで指定した値が加算または減算されます。例えば、 [syminfo.mintick](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.mintick) が0.01で、`slippage`が5に設定されている場合、ロングの成行注文は実際の価格より5 \* 0.01 = 0.05ポイント高い価格で発注されることになります。この設定は、ストラテジーの設定の「プロパティ」タブでも変更できます。オプションの引数で、デフォルトは0です。

commission\_type (const string) `commission_value` で指定した値の表現形式を決定します。 [strategy.commission.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.commission.percent) は注文金額に対する割合、 [strategy.commission.cash\_per\_contract](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.commission.cash_per_contract) は1枚ごとの金額、 [strategy.commission.cash\_per\_order](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.commission.cash_per_order) は注文ごとの金額を表します。この設定は、ストラテジーの設定の「プロパティ」タブでも変更できます。オプションです。デフォルトは [strategy.commission.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.commission.percent) です。

commission\_value (const int/float) ストラテジーの注文に適用される手数料で、`commission_type` パラメーターで指定した値の単位で指定します。この設定はストラテジーの設定の「パラメーター」タブでも変更可能です。オプションです。デフォルトは 0 です。

process\_orders\_on\_close (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) に設定すると、バーが確定してストラテジーの計算が完了した後に、追加で注文の試行が行われます。注文が成行注文の場合には、ブローカーエミュレーターは次のバーの始値の前にその注文を実行します。注文が価格の条件に依存する場合には、注文は価格条件が合致する場合のみ約定されます。このオプションは現在のバーでポジションを閉じたい場合に便利です。この設定は、ストラテジーの設定ダイアログの「プロパティ」タブでも変更することができます。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

close\_entries\_rule (const string) 取引を決済する順序を決定します。利用可能な値は、"FIFO" と "ANY" です。"FIFO" (ファーストイン・ファーストアウト) はエントリー注文順、つまり決済注文は古いエントリー注文からクローズします。"ANY" は、 [strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) 関数の `from_entry` パラメーターに基づいて注文がクローズされます。"FIFO" は株式、先物、米国のFXで使用でき (NFAコンプライアンスルール 2-43b)、"ANY" は米国以外のFXで使用可能です。オプションの引数です。デフォルトは "FIFO" です。

margin\_long (const int/float) マージンロングとは、ロングポジションを保有する場合に現金または担保でカバーしなければならない銘柄の購入価格の割合のことです。正の値である必要があります。マージンコールをシミュレートするロジックは、 [ヘルプセンター](https://www.tradingview.com/chart/?solution=43000628599) に説明があります。この設定は、ストラテジーの設定の「プロパティ」タブでも変更できます。オプションの引数で、デフォルトは0です。0の場合、ポジションサイズについてストラテジーはいかなる制限もかけません。

margin\_short (const int/float) マージンショートとは、ショートポジションを保有する場合に現金または担保でカバーしなければならない銘柄の購入価格の割合のことです。正の値である必要があります。マージンコールをシミュレートするロジックは、 [ヘルプセンター](https://www.tradingview.com/chart/?solution=43000628599) に説明があります。この設定は、ストラテジーの設定の「プロパティ」タブでも変更できます。オプションの引数で、デフォルトは0です。0の場合、ポジションサイズについてストラテジーはいかなる制限もかけません。

explicit\_plot\_zorder (const bool) スクリプトのプロット、塗りつぶし、水平線がレンダリングされる順序を指定します。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトのコードの記載順に描画され、新しいプロットは、前のプロットの上に描画されます。これは `plot*()` 関数と [fill](https://jp.tradingview.com/pine-script-reference/v5/#fun_fill)、 [hline](https://jp.tradingview.com/pine-script-reference/v5/#fun_hline) にのみ適用されます。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

max\_lines\_count (const int) 直近で表示される [line](https://jp.tradingview.com/pine-script-reference/v5/#type_line) 描画の数。利用可能な値は、1 から 500 です。オプションでデフォルトは 50 です。

max\_labels\_count (const int) 直近で表示される [label](https://jp.tradingview.com/pine-script-reference/v5/#type_label) 描画の数。利用可能な値は、1 から 500 です。オプションでデフォルトは 50 です。

max\_boxes\_count (const int) 直近で表示される [box](https://jp.tradingview.com/pine-script-reference/v5/#type_box) 描画の数。利用可能な値は、1 から 500 です。オプションでデフォルトは 50 です。

calc\_bars\_count (const int) スクリプトの最初の計算の対象を、直近のバーのうち指定した本数だけに制限します。これを指定すると、スクリプトの設定の「パラメーター」タブにある「計算」セクションに 「計算バー数」のフィールドが追加されます。オプションです。デフォルトは 0 で、0の場合、利用可能なバーすべてでスクリプトが実行されます。

risk\_free\_rate (const int/float) リスクフリーレートとは、リスクが最小限もしくはゼロの投資での年間の変化率のことです。 [シャープレシオ](https://www.tradingview.com/support/solutions/43000681694) および [ソルティノレシオ](https://www.tradingview.com/support/solutions/43000681697) を計算するために使用されます。オプションです。デフォルトは 2 です。

use\_bar\_magnifier (const bool) true の場合、 [ブローカーエミュレーター](https://www.tradingview.com/pine-script-docs/concepts/strategies/#broker-emulator) はより現実的な結果を得るために、過去のバックテスト中に下位足のデータを利用します。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。 [Premium](https://www.tradingview.com/gopro/) アカウントのみこの機能にアクセス可能です。

fill\_orders\_on\_standard\_ohlc (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、平均足チャート上で実行するストラテジーに対して、価格の値を現実のものに近づけるため、実際のOHLC値を用いて注文を約定させます。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

max\_polylines\_count (const int) 直近で表示される [polyline](https://jp.tradingview.com/pine-script-reference/v5/#type_polyline) 描画の数。利用可能な値は、1 から 100 です。数値は概算で、指定した数より多くの描画が表示される場合があります。オプションでデフォルトは 50 です。

dynamic\_requests (const bool) `request.*()` の名前空間から、スクリプトによる関数の動的呼び出しを可能にするかどうかを指定します。`request.*()` の動的呼び出しは、条件構造 (例: [if](https://jp.tradingview.com/pine-script-reference/v5/#kw_if))、ループ (例: [for](https://jp.tradingview.com/pine-script-reference/v5/#kw_for)) およびエクスポートされた関数のローカルスコープ内で許可されます。さらに、こうした呼び出しでは「系列」の引数を使用できるパラメーターが多くあります。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。詳細については、ユーザーマニュアルの [「動的リクエスト」](https://www.tradingview.com/pine-script-docs/concepts/other-timeframes-and-data/#dynamic-requests) のセクションをご参照ください。

behind\_chart (const bool) スクリプトによるプロットや描画を、メインチャートのペインでチャートの背面に表示する ( [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合) か、前面に表示する ( [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合) かを制御します。オプションです。デフォルトは [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) です。

例

```
//@version=5
strategy("My strategy", overlay = true, margin_long = 100, margin_short = 100)

// Enter long by market if current open is greater than previous high.
if open > high[1]
    strategy.entry("Long", strategy.long, 1)
// Generate a full exit bracket (profit 10 points, loss 5 points per contract) from the entry named "Long".
strategy.exit("Exit", "Long", profit = 10, loss = 5)
```

備考

ストラテジーについての詳細は、 [ユーザーマニュアル](https://www.tradingview.com/pine-script-docs/concepts/strategies/) をご覧ください。

すべてのストラテジースクリプトには、必ず [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) の呼び出しを1つ含める必要があります。

`calc_on_every_tick = true` のパラメーターを使用するストラテジーは、過去バーとリアルタイムバーで異なって計算されることがあり、 [リペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) の要因となります。

ストラテジーは常にチャートの価格を使用して、ポジションのエントリーとエグジットを行います。非標準のチャートタイプ (平均足や練行足など) でストラテジーを使用すると、それらの価格は合成の擬似的なものであるため、誤解を招く結果になることがあります。したがって、非標準チャートでのバックテストは推奨されません。

こちらもご覧ください

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) [library](https://jp.tradingview.com/pine-script-reference/v5/#fun_library)

### string()

4個の多重定義

naをstringに型変換

構文と多重定義

[```\\
string(x) → const string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_string-0) [```\\
string(x) → input string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_string-1) [```\\
string(x) → simple string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_string-2) [```\\
string(x) → series string\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_string-3)

引数

x (const string) 指定した型に変換された値、通常は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

リターン

stringに型変換された後の引数の値。

こちらもご覧ください

[float](https://jp.tradingview.com/pine-script-reference/v5/#fun_float) [int](https://jp.tradingview.com/pine-script-reference/v5/#fun_int) [bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_bool) [color](https://jp.tradingview.com/pine-script-reference/v5/#fun_color) [line](https://jp.tradingview.com/pine-script-reference/v5/#fun_line) [label](https://jp.tradingview.com/pine-script-reference/v5/#fun_label)

### table()

naをtableに型変換します。

構文

```
table(x) → series table
```

引数

x (series table) 指定した型に変換された値、通常は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

リターン

テーブルに型変換した後の引数の値。

こちらもご覧ください

[float](https://jp.tradingview.com/pine-script-reference/v5/#fun_float) [int](https://jp.tradingview.com/pine-script-reference/v5/#fun_int) [bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_bool) [color](https://jp.tradingview.com/pine-script-reference/v5/#fun_color) [string](https://jp.tradingview.com/pine-script-reference/v5/#fun_string) [line](https://jp.tradingview.com/pine-script-reference/v5/#fun_line) [label](https://jp.tradingview.com/pine-script-reference/v5/#fun_label)

### time()

3個の多重定義

time 関数は、指定された時間足とセッションに対して現在のバーのUNIX時間を返します。タイムポイントがセッションから外れている場合は NaN を返します。

構文と多重定義

[```\\
time(timeframe, bars_back) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_time-0) [```\\
time(timeframe, session, bars_back) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_time-1) [```\\
time(timeframe, session, timezone, bars_back) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_time-2)

引数

timeframe (series string) 時間足。空の文字列は、現在のチャートの時間足として解釈されます。

bars\_back (series int) これが指定された場合、関数は指定された時間足で現在からN本分遡ったバーのタイムスタンプを返します。-1から-500までの負の数を渡して将来のバーが出現する想定時刻を要求することもできます。オプションです。デフォルトは0です。

例

```
//@version=5
indicator("Time", overlay=true)
// Try this on chart AAPL,1
timeinrange(res, sess) => not na(time(res, sess, "America/New_York")) ? 1 : 0
plot(timeinrange("1", "1300-1400"), color=color.red)

// This plots 1.0 at every start of 10 minute bar on a 1 minute chart:
newbar(res) => ta.change(time(res)) == 0 ? 0 : 1
plot(newbar("10"))
```

セッションの設定時には、時間と分だけでなく、そのセッションに含まれる曜日も指定できます。

曜日が指定されていない場合は、日曜日 (1) から土曜日 (7) のセッションが設定されます。つまり、 "1100-2000" は "1100-1200:1234567".と同じになります。

曜日を指定することで変更を加えることができます。例えば、24時間・週7日取引されるシンボルにおいて、以下のスクリプトは土曜と日曜に色付けを行いません。

例

```
//@version=5
indicator("Time", overlay=true)
t1 = time(timeframe.period, "0000-0000:23456")
bgcolor(not na(t1) ? color.new(color.blue, 90) : na)
```

1つの `session` 引数に対して、カンマ区切りで異なるセッションを複数含めることができます。例えば、以下のスクリプトは、10:00から11:00までと、14:00から15:00までのバーをハイライト表示します (平日のみ)。

例

```
//@version=5
indicator("Time", overlay=true)
t1 = time(timeframe.period, "1000-1100,1400-1500:23456")
bgcolor(not na(t1) ? color.new(color.blue, 90) : na)
```

リターン

UNIX時間。

備考

UNIX時間は1970年1月1日00:00:00 (UTC) から経過したミリ秒数です。

こちらもご覧ください

[time](https://jp.tradingview.com/pine-script-reference/v5/#var_time)

### time\_close()

3個の多重定義

指定された時間足とセッションにおいて、現在のバーの終値のUNIX時間を返します。ティックチャートや価格ベースのチャート（練行足、カギ足、新値足、ポイント＆フィギュア、レンジ）では、最新のリアルタイムのバーについて [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) のタイムスタンプを返します（将来の確定時間が予測できないため）が、それ以前のバーについてはいずれも定義どおりのタイムスタンプが返されます。

構文と多重定義

[```\\
time_close(timeframe, bars_back) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_time_close-0) [```\\
time_close(timeframe, session, bars_back) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_time_close-1) [```\\
time_close(timeframe, session, timezone, bars_back) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_time_close-2)

引数

timeframe (series string) 時間足。空の文字列はチャートの現在の時間足として解釈されます。

bars\_back (series int) これが指定された場合、関数は指定された時間足で現在からN本分遡ったバーのタイムスタンプを返します。-1から-500までの負の数を渡して将来のバーが出現する想定時刻を要求することもできます。オプションです。デフォルトは0です。

例

```
//@version=5
indicator("Time", overlay=true)
t1 = time_close(timeframe.period, "1200-1300", "America/New_York")
bgcolor(not na(t1) ? color.new(color.blue, 90) : na)
```

リターン

UNIX時間。

備考

UNIX時間は1970年1月1日00:00:00 (UTC) から経過したミリ秒数です。

こちらもご覧ください

[time\_close](https://jp.tradingview.com/pine-script-reference/v5/#var_time_close)

### timestamp()

5個の多重定義

timestamp関数は、指定された日時のUNIX時間を返します。

構文と多重定義

[```\\
timestamp(dateString) → const int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_timestamp-0) [```\\
timestamp(year, month, day, hour, minute, second) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_timestamp-1) [```\\
timestamp(year, month, day, hour, minute, second) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_timestamp-2) [```\\
timestamp(timezone, year, month, day, hour, minute, second) → simple int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_timestamp-3) [```\\
timestamp(timezone, year, month, day, hour, minute, second) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_timestamp-4)

引数

dateString (const string) 日付と、オプションで時刻とタイムゾーンを含む文字列。フォーマットは、 [IETF RFC 2822](https://tools.ietf.org/html/rfc2822#section-3.3)、または [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) 標準 ("DD MMM YYYY hh:mm:ss ±hhmm" または "YYYY-MM-DDThh:mm:ss±hh:mm"。例．"20 Feb 2020" または "2020-02-20") に準拠している必要があります。時刻が指定されない場合は "00:00" が使用され、タイムゾーンが指定されない場合は GMT+0 が使用されます。これは、取引所のタイムゾーンで時刻を返す通常の関数の動作とは異なることにご注意ください。

例

```
//@version=5
indicator("timestamp")
plot(timestamp(2016, 01, 19, 09, 30), linewidth=3, color=color.green)
plot(timestamp(syminfo.timezone, 2016, 01, 19, 09, 30), color=color.blue)
plot(timestamp(2016, 01, 19, 09, 30), color=color.yellow)
plot(timestamp("GMT+6", 2016, 01, 19, 09, 30))
plot(timestamp(2019, 06, 19, 09, 30, 15), color=color.lime)
plot(timestamp("GMT+3", 2019, 06, 19, 09, 30, 15), color=color.fuchsia)
plot(timestamp("Feb 01 2020 22:10:05"))
plot(timestamp("2011-10-10T14:48:00"))
plot(timestamp("04 Dec 1995 00:12:00 GMT+5"))
```

リターン

UNIX時間。

備考

UNIX時間は1970年1月1日00:00:00 (UTC) から経過したミリ秒数です。

こちらもご覧ください

[time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time)

### weekofyear()

2個の多重定義

構文と多重定義

[```\\
weekofyear(time) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_weekofyear-0) [```\\
weekofyear(time, timezone) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_weekofyear-1)

引数

time (series int) ミリ秒におけるUNIX時間。

リターン

UNIX時間で提供される（取引所のタイムゾーンでの）週番号。

備考

UNIX時間は1970年1月1日00:00:00 (UTC) から経過したミリ秒数です。

この関数はバーの開始時刻に基づく週を返す事にご注意下さい。オーバーナイトセッションでは（例．月曜のセッションが日曜日の17:00 UTC-4に始まるEURUSD）、この値は取引日の週よりも1つ少なくなる可能性があります。

こちらもご覧ください

[weekofyear](https://jp.tradingview.com/pine-script-reference/v5/#var_weekofyear) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [year](https://jp.tradingview.com/pine-script-reference/v5/#fun_year) [month](https://jp.tradingview.com/pine-script-reference/v5/#fun_month) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#fun_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#fun_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#fun_second)

### year()

2個の多重定義

構文と多重定義

[```\\
year(time) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_year-0) [```\\
year(time, timezone) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_year-1)

引数

time (series int) ミリ秒におけるUNIX時間。

リターン

UNIX時間で提供される（取引所のタイムゾーンでの）年。

備考

UNIX時間は1970年1月1日00:00:00 (UTC) から経過したミリ秒数です。

この関数はバーの開始時刻に基づく年を返す事にご注意下さい。オーバーナイトセッションでは（例．月曜のセッションが日曜日の17:00 UTC-4に始まるEURUSD）、この値は取引日の年よりも1つ少なくなる可能性があります。

こちらもご覧ください

[year](https://jp.tradingview.com/pine-script-reference/v5/#var_year) [time](https://jp.tradingview.com/pine-script-reference/v5/#fun_time) [month](https://jp.tradingview.com/pine-script-reference/v5/#fun_month) [dayofmonth](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofmonth) [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) [hour](https://jp.tradingview.com/pine-script-reference/v5/#fun_hour) [minute](https://jp.tradingview.com/pine-script-reference/v5/#fun_minute) [second](https://jp.tradingview.com/pine-script-reference/v5/#fun_second)


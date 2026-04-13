## 注釈

### @description

[library](https://jp.tradingview.com/pine-script-reference/v5/#fun_library) の宣言文を使用するスクリプトのカスタム説明を設定します。このアノテーションと一緒に提供されるテキストは、投稿ダイアログの "説明" 部分の事前入力に使用されます。

例

```
//@version=5
// @description Provides a tool to quickly output a label on the chart.
library("MyLibrary")

// @function Outputs a label with `labelText` on the bar's high.
// @param labelText (series string) The text to display on the label.
// @returns Drawn label.
export drawLabel(string labelText) =>
    label.new(bar_index, high, text = labelText)
```

### @enum

enum宣言の上に配置した場合、enumのカスタム説明が追加されます。Pineエディタのオートサジェストはこの説明を使用して、ユーザーが列挙型の名前の上にマウスを置いた時にその説明を表示します。ライブラリスクリプトで使用した場合、 [export](https://jp.tradingview.com/pine-script-reference/v5/#kw_export) のキーワードを使用したすべての列挙型の説明が、投稿ダイアログの "説明" 部分に事前入力されます。

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

### @field

[type](https://jp.tradingview.com/pine-script-reference/v5/#kw_type) または [enum](https://jp.tradingview.com/pine-script-reference/v5/#kw_enum) 宣言の上に配置した場合、type または enum のフィールドにカスタムの説明文が追加されます。その後に、ユーザーがその説明文にしたがうフィールド名を指定することになります。

Pineエディタのオートサジェストはこの説明を使用して、ユーザーがタイプ名またはフィールド名の上にカーソルを置いた時にその説明を表示します。 [library](https://jp.tradingview.com/pine-script-reference/v5/#fun_library) スクリプトで使用した場合、 [export](https://jp.tradingview.com/pine-script-reference/v5/#kw_export) のキーワードを使用したすべてのタイプの説明が、投稿ダイアログの "説明" 部分に事前入力されます。

例

```
//@version=5
indicator("New high over the last 20 bars", overlay = true)

//@type A point on a chart.
//@field index The index of the bar where the point is located, i.e., its `x` coordinate.
//@field price The price where the point is located, i.e., its `y` coordinate.
type Point
    int index
    float price

//@variable If the current `high` is the highest over the last 20 bars, returns a new `Point` instance, `na` otherwise.
Point highest = na

if ta.highestbars(high, 20) == 0
    highest := Point.new(bar_index, high)
    label.new(highest.index, highest.price, str.tostring(highest.price))
```

### @function

関数宣言の上に配置した場合、関数のカスタム説明が追加されます。

Pineエディタのオートサジェストはこの説明を使用して、ユーザーが関数名の上にカーソルを置いた時にその説明を表示します。 [library](https://jp.tradingview.com/pine-script-reference/v5/#fun_library) スクリプトで使用した場合、 [export](https://jp.tradingview.com/pine-script-reference/v5/#kw_export) のキーワードを使用したすべての関数の説明が、投稿ダイアログの "説明" 部分に事前入力されます。

例

```
//@version=5
// @description Provides a tool to quickly output a label on the chart.
library("MyLibrary")

// @function Outputs a label with `labelText` on the bar's high.
// @param labelText (series string) The text to display on the label.
// @returns Drawn label.
export drawLabel(string labelText) =>
    label.new(bar_index, high, text = labelText)
```

### @param

関数宣言の上に配置した場合、関数パラメーターのカスタム説明が追加されます。その後に、ユーザーはパラメーター名とその説明を指定します。

Pineエディタのオートサジェストはこの説明を使用して、ユーザーが関数名の上にカーソルを置いた時にその説明を表示します。 [library](https://jp.tradingview.com/pine-script-reference/v5/#fun_library) スクリプトで使用した場合、 [export](https://jp.tradingview.com/pine-script-reference/v5/#kw_export) のキーワードを使用したすべての関数の説明が、投稿ダイアログの "説明" 部分に事前入力されます。

例

```
//@version=5
// @description Provides a tool to quickly output a label on the chart.
library("MyLibrary")

// @function Outputs a label with `labelText` on the bar's high.
// @param labelText (series string) The text to display on the label.
// @returns Drawn label.
export drawLabel(string labelText) =>
    label.new(bar_index, high, text = labelText)
```

### @returns

関数宣言の上に配置した場合、関数の戻りのカスタム説明が追加されます。

Pineエディタのオートサジェストはこの説明を使用して、ユーザーが関数名の上にカーソルを置いた時にその説明を表示します。 [library](https://jp.tradingview.com/pine-script-reference/v5/#fun_library) スクリプトで使用した場合、 [export](https://jp.tradingview.com/pine-script-reference/v5/#kw_export) のキーワードを使用したすべての関数の説明が、投稿ダイアログの "説明" 部分に事前入力されます。

例

```
//@version=5
// @description Provides a tool to quickly output a label on the chart.
library("MyLibrary")

// @function Outputs a label with `labelText` on the bar's high.
// @param labelText (series string) The text to display on the label.
// @returns Drawn label.
export drawLabel(string labelText) =>
    label.new(bar_index, high, text = labelText)
```

### @strategy\_alert\_message

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) スクリプト内で使用した場合、アラート作成ダイアログの "メッセージ" 部分に事前入力として、デフォルトメッセージが提供されます。

例

```
//@version=5
strategy("My strategy", overlay=true, margin_long=100, margin_short=100)
//@strategy_alert_message Strategy alert on symbol {{ticker}}

longCondition = ta.crossover(ta.sma(close, 14), ta.sma(close, 28))
if (longCondition)
    strategy.entry("My Long Entry Id", strategy.long)
strategy.exit("Exit", "My Long Entry Id", profit = 10 / syminfo.mintick, loss = 10 / syminfo.mintick)
```

### @type

タイプ宣言の上に配置した場合、タイプのカスタム説明が追加されます。

Pineエディタのオートサジェストはこの説明を使用して、ユーザーがタイプ名の上にカーソルを置いた時にその説明を表示します。 [library](https://jp.tradingview.com/pine-script-reference/v5/#fun_library) スクリプトで使用した場合、 [export](https://jp.tradingview.com/pine-script-reference/v5/#kw_export) のキーワードを使用したすべてのタイプの説明が、投稿ダイアログの "説明" 部分に事前入力されます。

例

```
//@version=5
indicator("New high over the last 20 bars", overlay = true)

//@type A point on a chart.
//@field index The index of the bar where the point is located, i.e., its `x` coordinate.
//@field price The price where the point is located, i.e., its `y` coordinate.
type Point
    int index
    float price

//@variable If the current `high` is the highest over the last 20 bars, returns a new `Point` instance, `na` otherwise.
Point highest = na

if ta.highestbars(high, 20) == 0
    highest := Point.new(bar_index, high)
    label.new(highest.index, highest.price, str.tostring(highest.price))
```

### @variable

関数宣言の上に配置した場合、変数のカスタム説明が追加されます。

Pineエディタのオートサジェストはこの説明を使用して、ユーザーが変数名の上にカーソルを置いた時にその説明を表示します。

例

```
//@version=5
indicator("New high over the last 20 bars", overlay = true)

//@type A point on a chart.
//@field index The index of the bar where the point is located, i.e., its `x` coordinate.
//@field price The price where the point is located, i.e., its `y` coordinate.
type Point
    int index
    float price

//@variable If the current `high` is the highest over the last 20 bars, returns a new `Point` instance, `na` otherwise.
Point highest = na

if ta.highestbars(high, 20) == 0
    highest := Point.new(bar_index, high)
    label.new(highest.index, highest.price, str.tostring(highest.price))
```

### @version=

スクリプトで使用する Pine Script® のバージョンを指定します。このバージョンの番号は、コードを編集して保存した時に更新されるスクリプトのバージョンの番号とは異なります。

例

```
//@version=5
indicator("Pine v5 Indicator")
plot(close)
```

例

```
//This indicator has no version annotation, so it will try to use v1.
//Pine Script® v1 has no function named `indicator()`, so the script will not compile.
indicator("Pine v1 Indicator")
plot(close)
```

備考


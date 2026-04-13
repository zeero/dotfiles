### strategy.cancel()

特定のIDを持つ未決済または未約定の注文をキャンセルします。複数の未決済注文が同じIDを共有している場合、そのIDを`id`の引数としてこのコマンドを呼び出すと、すべての注文がキャンセルされます。スクリプトが条件が満たされた注文IDを表す`id`でこのコマンドを呼び出しても何も影響はありません。

このコマンドは、価格ベースの注文（たとえば、 [指値注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#limit-orders)）を扱う場合にきわめて有効です。このコマンドを呼び出して [成行注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#market-orders) をキャンセルすることもできますが、注文を発注するコマンドと同じティックで執行される場合に限ります。

構文

```
strategy.cancel(id) → void
```

引数

id (series string) 未約定の注文のうち、キャンセルを行う注文の識別子です。

例

```
//@version=5
strategy(title = "Order cancellation demo")

conditionForBuy = open > high[1]
if conditionForBuy
    strategy.entry("Long", strategy.long, 1, limit = low) // Enter long using limit order at low price of current bar if `conditionForBuy` is `true`.
if not conditionForBuy
    strategy.cancel("Long") // Cancel the entry order with name "Long" if `conditionForBuy` is `false`.
```

### strategy.cancel\_all()

識別子に関係なく、保留中もしくは未約定の注文をすべてキャンセルします。

このコマンドは、価格ベースの注文（たとえば、 [指値注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#limit-orders)）を扱う場合にきわめて有効です。このコマンドを呼び出して [成行注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#market-orders) をキャンセルすることもできますが、注文を発注するコマンドと同じティックで執行される場合に限ります。

構文

```
strategy.cancel_all() → void
```

例

```
//@version=5
strategy(title = "Cancel all orders demo")
conditionForBuy1 = open > high[1]
if conditionForBuy1
    strategy.entry("Long entry 1", strategy.long, 1, limit = low) // Enter long using a limit order if `conditionForBuy1` is `true`.
conditionForBuy2 = conditionForBuy1 and open[1] > high[2]
float lowest2 = ta.lowest(low, 2)
if conditionForBuy2
    strategy.entry("Long entry 2", strategy.long, 1, limit = lowest2) // Enter long using a limit order if `conditionForBuy2` is `true`.
conditionForStopTrading = open < lowest2
if conditionForStopTrading
    strategy.cancel_all() // Cancel both limit orders if `conditionForStopTrading` is `true`.
```

### strategy.close()

特定のIDを持つエントリー注文で建てられたポジションについて、その一部を決済する注文を作成します。ポジション内の複数のエントリーが同一のIDを共有している場合、このコマンドの呼び出しが`id`引数としてそのIDを使用すると、このコマンドから最初に開始された注文の取引から、そのすべてのエントリーに注文作成が適用されます。

このコマンドは常に [成行注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#market-orders) を生成します。価格ベースの注文（たとえば、 [損切り注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#take-profit-and-stop-loss)）を使用してポジションを決済するには、 [strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) のコマンドを使用します。

構文

```
strategy.close(id, comment, qty, qty_percent, alert_message, immediately, disable_alert) → void
```

引数

id (series string) 未決済取引のうち決済を行う取引のエントリー識別子。

comment (series string) オプションです。約定済みの注文に関する追加のメモです。値が空の文字列でなければ、ストラテジーテスターとチャートは注文に対して自動生成される決済の識別子の代わりにここで指定したテキストを表示します。デフォルトは空の文字列です。

qty (series int/float) オプションです。決済注文が成立したときに決済する契約数／株数／ロット数／ユニット数です。指定すると`qty_percent`の代わりにこの値を使用して注文サイズを決定します。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で、注文サイズは`qty_percent`の値に依存します。

qty\_percent (series int/float) オプションです。0から100の間の値で決済注文が成立したときに決済する未決済取引について、その数量の割合をパーセント値で表したものです。この割合の計算は、`id`のエントリー識別子を持つ未決済取引の合計サイズに依存します。`qty`の値が [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) でなければ、コマンドはこのパラメーターを無視します。デフォルトは100です。

alert\_message (series string) オプションです。注文約定時に発動するアラートのカスタムテキストを表します。「アラートの作成」ダイアログボックスの「メッセージ」フィールドに`{{strategy.order.alert_message}}`のプレースホルダーが含まれている場合、アラートメッセージはそのプレースホルダーをこのテキストに置き換えます。デフォルトは空の文字列です。

immediately (series bool) オプションです。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、ストラテジーの注文発注時と同じティックで決済注文が実行されます。なお、次のバーが開始されるティックに実行を制限するストラテジーのプロパティは無視されます。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

disable\_alert (series bool) オプションで、コマンドの注文作成時点で [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) が指定されていると、ストラテジーは注文約定時にアラートをトリガーしません。このパラメータは "series" 値を受け付けるので、どの注文が実行されたときにアラートをトリガーするかをユーザーが制御できます。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
strategy("Partial close strategy",  margin_long = 100, margin_short = 100)

// Calculate a 14-bar and 28-bar moving average of `close` prices.
float sma14 = ta.sma(close, 14)
float sma28 = ta.sma(close, 28)

// Place a market order to enter a long position when `sma14` crosses over `sma28`.
if ta.crossover(sma14, sma28)
    strategy.entry("My Long Entry ID", strategy.long)

// Place a market order to close the long trade when `sma14` crosses under `sma28`.
if ta.crossunder(sma14, sma28)
    strategy.close("My Long Entry ID", "50% market close", qty_percent = 50)

// Plot the position size.
plot(strategy.position_size)
```

備考

ポジションが複数の未決済取引で構成され、かつ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) の宣言文中の`close_entries_rule`が "FIFO"（デフォルト）である場合、 [strategy.close](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.close) の呼び出しは、未決済取引のうち最初に開始されたポジションから決済します。この動作は`id`の値が異なる未決済取引のエントリーIDであっても適用されます。ただし、その場合でも決済注文の最大サイズは`id`の識別子を持つ注文で開始された取引に依存します。詳細については、ユーザーマニュアルの [こちら](https://www.tradingview.com/pine-script-docs/concepts/strategies/#closing-a-market-position) のセクションをご参照ください。

### strategy.close\_all()

2個の多重定義

未決済ポジションを完全に決済する注文を作成します。未決済またはそれに追加したエントリー注文の識別子に関係なく決済注文が作成されます。

このコマンドは常に [成行注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#market-orders) を生成します。価格ベースの注文（たとえば、 [損切り注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#take-profit-and-stop-loss)）を使用してポジションを決済するには、 [strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) のコマンドを使用します。

構文と多重定義

[```\\
strategy.close_all(comment, alert_message) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.close_all-0) [```\\
strategy.close_all(comment, alert_message, immediately, disable_alert) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.close_all-1)

引数

comment (series string) オプションです。約定済みの注文に関する追加のメモです。値が空の文字列でなければ、ストラテジーテスターとチャートは注文に対して自動生成される決済の識別子の代わりにここで指定したテキストを表示します。デフォルトは空の文字列です。

alert\_message (series string) オプションです。注文約定時に発動するアラートのカスタムテキストを表します。「アラートの作成」ダイアログボックスの「メッセージ」フィールドに`{{strategy.order.alert_message}}`のプレースホルダーが含まれている場合、アラートメッセージはそのプレースホルダーをこのテキストに置き換えます。デフォルトは空の文字列です。

例

```
//@version=5
strategy("Multi-entry close strategy",  margin_long = 100, margin_short = 100)

// Calculate a 14-bar and 28-bar moving average of `close` prices.
float sma14 = ta.sma(close, 14)
float sma28 = ta.sma(close, 28)

// Place a market order to enter a long trade every time `sma14` crosses over `sma28`.
if ta.crossover(sma14, sma28)
    strategy.order("My Long Entry ID " + str.tostring(strategy.opentrades), strategy.long)

// Place a market order to close the entire position every 500 bars.
if bar_index % 500 == 0
    strategy.close_all()

// Plot the position size.
plot(strategy.position_size)
```

### strategy.closedtrades.commission()

クローズトレードのエントリー手数料と決済手数料の合計を [strategy.account\_currency](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.account_currency) で示して返します。

構文

```
strategy.closedtrades.commission(trade_num) → series float
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("`strategy.closedtrades.commission` Example", commission_type = strategy.commission.percent, commission_value = 0.1)

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

// Plot total fees for the latest closed trade.
plot(strategy.closedtrades.commission(strategy.closedtrades - 1))
```

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) [strategy.opentrades.commission](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.opentrades.commission)

### strategy.closedtrades.entry\_bar\_index()

クローズトレードのエントリーのバーインデックスを返します。

構文

```
strategy.closedtrades.entry_bar_index(trade_num) → series int
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("strategy.closedtrades.entry_bar_index Example")
// Enter long trades on three rising bars; exit on two falling bars.
if ta.rising(close, 3)
    strategy.entry("Long", strategy.long)
if ta.falling(close, 2)
    strategy.close("Long")
// Function that calculates the average amount of bars in a trade.
avgBarsPerTrade() =>
    sumBarsPerTrade = 0
    for tradeNo = 0 to strategy.closedtrades - 1
        // Loop through all closed trades, starting with the oldest.
        sumBarsPerTrade += strategy.closedtrades.exit_bar_index(tradeNo) - strategy.closedtrades.entry_bar_index(tradeNo) + 1
    result = nz(sumBarsPerTrade / strategy.closedtrades)
plot(avgBarsPerTrade())
```

こちらもご覧ください

[strategy.closedtrades.exit\_bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.exit_bar_index) [strategy.opentrades.entry\_bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.opentrades.entry_bar_index)

### strategy.closedtrades.entry\_comment()

クローズトレードのエントリーのコメントメッセージを返します。
この`trade_num`でのエントリーが存在しない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

構文

```
strategy.closedtrades.entry_comment(trade_num) → series string
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("`strategy.closedtrades.entry_comment()` Example", overlay = true)

stopPrice = open * 1.01

longCondition = ta.crossover(ta.sma(close, 14), ta.sma(close, 28))

if (longCondition)
    strategy.entry("Long", strategy.long, stop = stopPrice, comment = str.tostring(stopPrice, "#.####"))
    strategy.exit("EXIT", trail_points = 1000, trail_offset = 0)

var testTable = table.new(position.top_right, 1, 3, color.orange, border_width = 1)

if barstate.islastconfirmedhistory or barstate.isrealtime
    table.cell(testTable, 0, 0, 'Last closed trade:')
    table.cell(testTable, 0, 1, "Order stop price value: " + strategy.closedtrades.entry_comment(strategy.closedtrades - 1))
    table.cell(testTable, 0, 2, "Actual Entry Price: " + str.tostring(strategy.closedtrades.entry_price(strategy.closedtrades - 1)))
```

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) [strategy.closedtrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.closedtrades)

### strategy.closedtrades.entry\_id()

クローズトレードのエントリーのIDを返します。

構文

```
strategy.closedtrades.entry_id(trade_num) → series string
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("strategy.closedtrades.entry_id Example", overlay = true)

// Enter a short position and close at the previous to last bar.
if bar_index == 1
    strategy.entry("Short at bar #" + str.tostring(bar_index), strategy.short)
if bar_index == last_bar_index - 2
    strategy.close_all()

// Display ID of the last entry position.
if barstate.islastconfirmedhistory
    label.new(last_bar_index, high, "Last Entry ID is: " + strategy.closedtrades.entry_id(strategy.closedtrades - 1))
```

リターン

クローズトレードのエントリーのIDを返します。

備考

この関数は、trade\_num が 0 から strategy.closedtrades-1 の範囲外である場合、na を返します。

こちらもご覧ください

[strategy.closedtrades.entry\_bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.entry_bar_index) [strategy.closedtrades.entry\_price](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.entry_price) [strategy.closedtrades.entry\_time](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.entry_time)

### strategy.closedtrades.entry\_price()

クローズトレードのエントリーの価格を返します。

構文

```
strategy.closedtrades.entry_price(trade_num) → series float
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("strategy.closedtrades.entry_price Example 1")

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

// Return the entry price for the latest  entry.
entryPrice = strategy.closedtrades.entry_price(strategy.closedtrades - 1)

plot(entryPrice, "Long entry price")
```

例

```
// Calculates the average profit percentage for all closed trades.
//@version=5
strategy("strategy.closedtrades.entry_price Example 2")

// Strategy calls to create single short and long trades
if bar_index == last_bar_index - 15
    strategy.entry("Long Entry",  strategy.long)
else if bar_index == last_bar_index - 10
    strategy.close("Long Entry")
    strategy.entry("Short", strategy.short)
else if bar_index == last_bar_index - 5
    strategy.close("Short")

// Calculate profit for both closed trades.
profitPct = 0.0
for tradeNo = 0 to strategy.closedtrades - 1
    entryP = strategy.closedtrades.entry_price(tradeNo)
    exitP = strategy.closedtrades.exit_price(tradeNo)
    profitPct += (exitP - entryP) / entryP * strategy.closedtrades.size(tradeNo) * 100

// Calculate average profit percent for both closed trades.
avgProfitPct = nz(profitPct / strategy.closedtrades)

plot(avgProfitPct)
```

こちらもご覧ください

[strategy.closedtrades.entry\_price](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.entry_price) [strategy.closedtrades.exit\_price](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.exit_price) [strategy.closedtrades.size](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.size) [strategy.closedtrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.closedtrades)

### strategy.closedtrades.entry\_time()

クローズトレードのエントリー時刻を、ミリ秒単位で表されるUNIX時間で返します。

構文

```
strategy.closedtrades.entry_time(trade_num) → series int
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("strategy.closedtrades.entry_time Example", overlay = true)

// Enter long trades on three rising bars; exit on two falling bars.
if ta.rising(close, 3)
    strategy.entry("Long", strategy.long)
if ta.falling(close, 2)
    strategy.close("Long")

// Calculate the average trade duration
avgTradeDuration() =>
    sumTradeDuration = 0
    for i = 0 to strategy.closedtrades - 1
        sumTradeDuration += strategy.closedtrades.exit_time(i) - strategy.closedtrades.entry_time(i)
    result = nz(sumTradeDuration / strategy.closedtrades)

// Display average duration converted to seconds and formatted using 2 decimal points
if barstate.islastconfirmedhistory
    label.new(bar_index, high, str.tostring(avgTradeDuration() / 1000, "#.##") + " seconds")
```

こちらもご覧ください

[strategy.opentrades.entry\_time](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.opentrades.entry_time) [strategy.closedtrades.exit\_time](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.exit_time) [time](https://jp.tradingview.com/pine-script-reference/v5/#var_time)

### strategy.closedtrades.exit\_bar\_index()

クローズトレードの決済のバーインデックスを返します。

構文

```
strategy.closedtrades.exit_bar_index(trade_num) → series int
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("strategy.closedtrades.exit_bar_index Example 1")

// Strategy calls to place a single short trade. We enter the trade at the first bar and exit the trade at 10 bars before the last chart bar.
if bar_index == 0
    strategy.entry("Short",  strategy.short)
if bar_index == last_bar_index - 10
    strategy.close("Short")

// Calculate the amount of bars since the last closed trade.
barsSinceClosed = strategy.closedtrades > 0 ? bar_index - strategy.closedtrades.exit_bar_index(strategy.closedtrades - 1) : na

plot(barsSinceClosed, "Bars since last closed trade")
```

例

```
// Calculates the average amount of bars per trade.
//@version=5
strategy("strategy.closedtrades.exit_bar_index Example 2")

// Enter long trades on three rising bars; exit on two falling bars.
if ta.rising(close, 3)
    strategy.entry("Long", strategy.long)
if ta.falling(close, 2)
    strategy.close("Long")

// Function that calculates the average amount of bars per trade.
avgBarsPerTrade() =>
    sumBarsPerTrade = 0
    for tradeNo = 0 to strategy.closedtrades - 1
        // Loop through all closed trades, starting with the oldest.
        sumBarsPerTrade += strategy.closedtrades.exit_bar_index(tradeNo) - strategy.closedtrades.entry_bar_index(tradeNo) + 1
    result = nz(sumBarsPerTrade / strategy.closedtrades)

plot(avgBarsPerTrade())
```

こちらもご覧ください

[bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#var_bar_index) [last\_bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#var_last_bar_index)

### strategy.closedtrades.exit\_comment()

クローズトレードの決済のコメントメッセージを返します。
この`trade_num`でのエントリーが存在しない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

構文

```
strategy.closedtrades.exit_comment(trade_num) → series string
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("`strategy.closedtrades.exit_comment()` Example", overlay = true)

longCondition = ta.crossover(ta.sma(close, 14), ta.sma(close, 28))
if (longCondition)
    strategy.entry("Long", strategy.long)
    strategy.exit("Exit", stop = open * 0.95, limit = close * 1.05, trail_points = 100, trail_offset = 0, comment_profit = "TP", comment_loss = "SL", comment_trailing = "TRAIL")

exitStats() =>
    int slCount = 0
    int tpCount = 0
    int trailCount = 0

    if strategy.closedtrades > 0
        for i = 0 to strategy.closedtrades - 1
            switch strategy.closedtrades.exit_comment(i)
                "TP"    => tpCount    += 1
                "SL"    => slCount    += 1
                "TRAIL" => trailCount += 1
    [slCount, tpCount, trailCount]

var testTable = table.new(position.top_right, 1, 4, color.orange, border_width = 1)

if barstate.islastconfirmedhistory
    [slCount, tpCount, trailCount] = exitStats()
    table.cell(testTable, 0, 0, "Closed trades (" + str.tostring(strategy.closedtrades) +") stats:")
    table.cell(testTable, 0, 1, "Stop Loss: " + str.tostring(slCount))
    table.cell(testTable, 0, 2, "Take Profit: " + str.tostring(tpCount))
    table.cell(testTable, 0, 3, "Trailing Stop: " + str.tostring(trailCount))
```

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) [strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) [strategy.close](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.close) [strategy.closedtrades](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades)

### strategy.closedtrades.exit\_id()

クローズトレードの決済のIDを返します。

構文

```
strategy.closedtrades.exit_id(trade_num) → series string
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("strategy.closedtrades.exit_id Example", overlay = true)

// Strategy calls to create single short and long trades
if bar_index == last_bar_index - 15
    strategy.entry("Long Entry",  strategy.long)
else if bar_index == last_bar_index - 10
    strategy.entry("Short Entry", strategy.short)

// When a new open trade is detected then we create the exit strategy corresponding with the matching entry id
// We detect the correct entry id by determining if a position is long or short based on the position quantity
if ta.change(strategy.opentrades) != 0
    posSign = strategy.opentrades.size(strategy.opentrades - 1)
    strategy.exit(posSign > 0 ? "SL Long Exit" : "SL Short Exit", strategy.opentrades.entry_id(strategy.opentrades - 1), stop = posSign > 0 ? high - ta.tr : low + ta.tr)

// When a new closed trade is detected then we place a label above the bar with the exit info
if ta.change(strategy.closedtrades) != 0
    msg = "Trade closed by: " + strategy.closedtrades.exit_id(strategy.closedtrades - 1)
    label.new(bar_index, high + (3 * ta.tr), msg)
```

リターン

クローズトレードの決済のIDを返します。

備考

この関数は、trade\_num が 0 から strategy.closedtrades-1 の範囲外である場合、na を返します。

こちらもご覧ください

[strategy.closedtrades.exit\_bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.exit_bar_index) [strategy.closedtrades.exit\_price](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.exit_price) [strategy.closedtrades.exit\_time](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.exit_time)

### strategy.closedtrades.exit\_price()

クローズトレードの決済の価格を返します。

構文

```
strategy.closedtrades.exit_price(trade_num) → series float
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("strategy.closedtrades.exit_price Example 1")

// We are creating a long trade every 5 bars
if bar_index % 5 == 0
    strategy.entry("Long",  strategy.long)
strategy.close("Long")

// Return the exit price from the latest closed trade.
exitPrice = strategy.closedtrades.exit_price(strategy.closedtrades - 1)

plot(exitPrice, "Long exit price")
```

例

```
// Calculates the average profit percentage for all closed trades.
//@version=5
strategy("strategy.closedtrades.exit_price Example 2")

// Strategy calls to create single short and long trades.
if bar_index == last_bar_index - 15
    strategy.entry("Long Entry",  strategy.long)
else if bar_index == last_bar_index - 10
    strategy.close("Long Entry")
    strategy.entry("Short", strategy.short)
else if bar_index == last_bar_index - 5
    strategy.close("Short")

// Calculate profit for both closed trades.
profitPct = 0.0
for tradeNo = 0 to strategy.closedtrades - 1
    entryP = strategy.closedtrades.entry_price(tradeNo)
    exitP = strategy.closedtrades.exit_price(tradeNo)
    profitPct += (exitP - entryP) / entryP * strategy.closedtrades.size(tradeNo) * 100

// Calculate average profit percent for both closed trades.
avgProfitPct = nz(profitPct / strategy.closedtrades)

plot(avgProfitPct)
```

こちらもご覧ください

[strategy.closedtrades.entry\_price](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.entry_price)

### strategy.closedtrades.exit\_time()

クローズトレードの決済時刻を、ミリ秒単位で表されるUNIX時間で返します。

構文

```
strategy.closedtrades.exit_time(trade_num) → series int
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("strategy.closedtrades.exit_time Example 1")

// Enter long trades on three rising bars; exit on two falling bars.
if ta.rising(close, 3)
    strategy.entry("Long", strategy.long)
if ta.falling(close, 2)
    strategy.close("Long")

// Calculate the average trade duration.
avgTradeDuration() =>
    sumTradeDuration = 0
    for i = 0 to strategy.closedtrades - 1
        sumTradeDuration += strategy.closedtrades.exit_time(i) - strategy.closedtrades.entry_time(i)
    result = nz(sumTradeDuration / strategy.closedtrades)

// Display average duration converted to seconds and formatted using 2 decimal points.
if barstate.islastconfirmedhistory
    label.new(bar_index, high, str.tostring(avgTradeDuration() / 1000, "#.##") + " seconds")
```

例

```
// Reopens a closed trade after X seconds.
//@version=5
strategy("strategy.closedtrades.exit_time Example 2")

// Strategy calls to emulate a single long trade at the first bar.
if bar_index == 0
    strategy.entry("Long", strategy.long)

reopenPositionAfter(timeSec) =>
    if strategy.closedtrades > 0
        if time - strategy.closedtrades.exit_time(strategy.closedtrades - 1) >= timeSec * 1000
            strategy.entry("Long", strategy.long)

// Reopen last closed position after 120 sec.
reopenPositionAfter(120)

if ta.change(strategy.opentrades) != 0
    strategy.exit("Long", stop = low * 0.9, profit = high * 2.5)
```

こちらもご覧ください

[strategy.closedtrades.entry\_time](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.entry_time)

### strategy.closedtrades.max\_drawdown()

クローズトレードの最大ドローダウン、つまりトレードで起こり得る最大の損失を [strategy.account\_currency](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.account_currency) で示して返します。

構文

```
strategy.closedtrades.max_drawdown(trade_num) → series float
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("`strategy.closedtrades.max_drawdown` Example")

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

// Get the biggest max trade drawdown value from all of the closed trades.
maxTradeDrawDown() =>
    maxDrawdown = 0.0
    for tradeNo = 0 to strategy.closedtrades - 1
        maxDrawdown := math.max(maxDrawdown, strategy.closedtrades.max_drawdown(tradeNo))
    result = maxDrawdown

plot(maxTradeDrawDown(), "Biggest max drawdown")
```

備考

この関数は、trade\_num が 0 から strategy.closedtrades - 1 の範囲内にない場合、na を返します。

こちらもご覧ください

[strategy.opentrades.max\_drawdown](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.opentrades.max_drawdown) [strategy.max\_drawdown](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_drawdown)

### strategy.closedtrades.max\_drawdown\_percent()

終了したトレードの最大ドローダウン、つまり、そのトレードで起こり得た最大損失を、下記の式で算出される割合で返します: `Lowest Value During Trade  / (Entry Price x Quantity) * 100`

構文

```
strategy.closedtrades.max_drawdown_percent(trade_num) → series float
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

こちらもご覧ください

[strategy.closedtrades.max\_drawdown](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.max_drawdown) [strategy.max\_drawdown](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_drawdown)

### strategy.closedtrades.max\_runup()

クローズトレードの最大資産増加幅、つまりトレードで得ることが可能な最大利益を [strategy.account\_currency](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.account_currency) で示して返します。

構文

```
strategy.closedtrades.max_runup(trade_num) → series float
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("`strategy.closedtrades.max_runup` Example")

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

// Get the biggest max trade runup value from all of the closed trades.
maxTradeRunUp() =>
    maxRunup = 0.0
    for tradeNo = 0 to strategy.closedtrades - 1
        maxRunup := math.max(maxRunup, strategy.closedtrades.max_runup(tradeNo))
    result = maxRunup

plot(maxTradeRunUp(), "Max trade runup")
```

こちらもご覧ください

[strategy.opentrades.max\_runup](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.opentrades.max_runup) [strategy.max\_runup](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_runup)

### strategy.closedtrades.max\_runup\_percent()

終了したトレードの最大資産増加幅、つまり、そのトレードで起こり得た最大利益を、下記の式で算出される割合で返します: `Highest Value During Trade / (Entry Price x Quantity) * 100`

構文

```
strategy.closedtrades.max_runup_percent(trade_num) → series float
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

こちらもご覧ください

[strategy.closedtrades.max\_runup](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.max_runup) [strategy.max\_runup](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_runup)

### strategy.closedtrades.profit()

クローズトレードの損益を [strategy.account\_currency](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.account_currency) で示したものを返します。損失は負の値で表されます。

構文

```
strategy.closedtrades.profit(trade_num) → series float
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("`strategy.closedtrades.profit` Example")

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

// Calculate average gross profit by adding the difference between gross profit and commission.
avgGrossProfit() =>
    sumGrossProfit = 0.0
    for tradeNo = 0 to strategy.closedtrades - 1
        sumGrossProfit += strategy.closedtrades.profit(tradeNo) - strategy.closedtrades.commission(tradeNo)
    result = nz(sumGrossProfit / strategy.closedtrades)

plot(avgGrossProfit(), "Average gross profit")
```

こちらもご覧ください

[strategy.opentrades.profit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.opentrades.profit) [strategy.closedtrades.commission](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.commission)

### strategy.closedtrades.profit\_percent()

終了したトレードの損益を割合で返します。損失は負の値で表されます。

構文

```
strategy.closedtrades.profit_percent(trade_num) → series float
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

こちらもご覧ください

[strategy.closedtrades.profit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.profit)

### strategy.closedtrades.size()

クローズトレードの方向と約定数を返します。値が \> 0 の場合、市場ポジションはロング、値が < 0 の場合、市場ポジションはショートだったことになります。

構文

```
strategy.closedtrades.size(trade_num) → series float
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("`strategy.closedtrades.size` Example 1")

// We calculate the max amt of shares we can buy.
amtShares = math.floor(strategy.equity / close)
// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long, qty = amtShares)
if bar_index % 20 == 0
    strategy.close("Long")

// Plot the number of contracts traded in the last closed trade.
plot(strategy.closedtrades.size(strategy.closedtrades - 1), "Number of contracts traded")
```

例

```
// Calculates the average profit percentage for all closed trades.
//@version=5
strategy("`strategy.closedtrades.size` Example 2")

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

// Calculate profit for both closed trades.
profitPct = 0.0
for tradeNo = 0 to strategy.closedtrades - 1
    entryP = strategy.closedtrades.entry_price(tradeNo)
    exitP = strategy.closedtrades.exit_price(tradeNo)
    profitPct += (exitP - entryP) / entryP * strategy.closedtrades.size(tradeNo) * 100

// Calculate average profit percent for both closed trades.
avgProfitPct = nz(profitPct / strategy.closedtrades)

plot(avgProfitPct)
```

こちらもご覧ください

[strategy.opentrades.size](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.opentrades.size) [strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size) [strategy.closedtrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.closedtrades) [strategy.opentrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.opentrades)

### strategy.convert\_to\_account()

現在チャート上で扱われているシンボルの通貨 ( [syminfo.currency](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.currency)) から、ストラテジーが使用する通貨 ( [strategy.account\_currency](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.account_currency)) へ値を変換します。

構文

```
strategy.convert_to_account(value) → series float
```

引数

value (series int/float) 変換される値。

例

```
//@version=5
strategy("`strategy.convert_to_account` Example 1", currency = currency.EUR)

plot(close, "Close price using default currency")
plot(strategy.convert_to_account(close), "Close price converted to strategy currency")
```

例

```
// Calculates the "Buy and hold return" using your account's currency.
//@version=5
strategy("`strategy.convert_to_account` Example 2", currency = currency.EUR)

dateInput = input.time(timestamp("20 Jul 2021 00:00 +0300"), "From Date", confirm = true)

buyAndHoldReturnPct(fromDate) =>
    if time >= fromDate
        money = close * syminfo.pointvalue
        var initialBal = strategy.convert_to_account(money)
        (strategy.convert_to_account(money) - initialBal) / initialBal * 100

plot(buyAndHoldReturnPct(dateInput))
```

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) [strategy.convert\_to\_symbol](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.convert_to_symbol)

### strategy.convert\_to\_symbol()

ストラテジーが使用する通貨 ( [strategy.account\_currency](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.account_currency)) から、現在チャート上で扱われているシンボルの通貨 ( [syminfo.currency](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.currency)) へ値を変換します。

構文

```
strategy.convert_to_symbol(value) → series float
```

引数

value (series int/float) 変換される値。

例

```
//@version=5
strategy("`strategy.convert_to_symbol` Example", currency = currency.EUR)

// Calculate the max qty we can buy using current chart's currency.
calcContracts(accountMoney) =>
    math.floor(strategy.convert_to_symbol(accountMoney) / syminfo.pointvalue / close)

// Return max qty we can buy using 300 euros
qt = calcContracts(300)

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars using our custom qty.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long, qty = qt)
if bar_index % 20 == 0
    strategy.close("Long")
```

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) [strategy.convert\_to\_account](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.convert_to_account)

### strategy.default\_entry\_qty()

[strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) や [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order) からのエントリー注文が指定した `fill_price` の値で満たされた時に、デフォルトの注文数量を単位で計算します。この計算は `default_qty_type`、`default_qty_value`、`currency` などのストラテジーのプロパティや、 [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 関数内のパラメーターおよびストラテジー設定の「プロパティ」タブ内のパラメーター表示に依存します。

構文

```
strategy.default_entry_qty(fill_price) → series float
```

引数

fill\_price (series int/float) デフォルトの注文数量の計算対象となる約定価格。

例

```
//@version=5
strategy("Supertrend Strategy", overlay = true, default_qty_type = strategy.percent_of_equity, default_qty_value = 15)

//@variable The length of the ATR calculation.
atrPeriod = input(10, "ATR Length")
//@variable The ATR multiplier.
factor = input.float(3.0, "Factor", step = 0.01)
//@variable The tick offset of the stop order.
stopOffsetInput = input.int(100, "Tick offset for entry stop")

// Get the direction of the SuperTrend.
[_, direction] = ta.supertrend(factor, atrPeriod)

if ta.change(direction) < 0
    //@variable The stop price of the entry order.
    stopPrice = close + syminfo.mintick * stopOffsetInput
    //@variable The expected default fill quantity at the `stopPrice`. This value may not reflect actual qty of the filled order, because fill price may be different.
    calculatedQty = strategy.default_entry_qty(stopPrice)
    strategy.entry("My Long Entry Id", strategy.long, stop = stopPrice)
    label.new(bar_index, stopPrice, str.format("Stop set at {0}\nExpected qty at {0}: {1}", math.round_to_mintick(stopPrice), calculatedQty))

if ta.change(direction) > 0
    strategy.close_all()
```

備考

この関数はストラテジーによるシミュレーション上のオープンポジションについて考慮しません。たとえば、ストラテジーのスクリプトに10単位の `qty` を伴うロング注文のオープンポジションがある場合、 [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) 関数を使用して5単位の `qty` を伴うショート注文をシミュレートすると、スクリプトはポジションを反転させるために15単位の売りを要求します。しかし、この関数はオープントレードを考慮しないため、このような場合でも5を返します。

この値は、計算されたデフォルトの注文数量を表します。

注文発注コマンドが関数呼び出しの際に新しい `qty` 値を明示的に渡すことによって、デフォルト値が上書きされます。

### strategy.entry()

新しくポジションを建てたり追加する新規注文を作成します。同一の `id` を持つ未決済注文が存在する場合は、このコマンドを呼び出すことによってその注文が変更されます。

結果として作成される注文のタイプは、`limit` と `stop` のパラメーターによって決定されます。この呼び出しに `limit` または `stop` の引数が含まれていない場合は、次のティックで執行される [成行注文が](https://www.tradingview.com/pine-script-docs/concepts/strategies/#market-orders) 作成されます。この呼び出しで `limit` が指定され、 `stop` が指定されていない場合は [指値注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#limit-orders) が発注され、市場価格が `limit` またはそれより有利な価格（買い注文の場合はそれより低く、売り注文の場合はそれより高い価格）に到達した後に執行されます。`stop` が指定され、`limit` が指定されていない場合は [逆指値注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#stop-and-stop-limit-orders) が発注され、市場価格が `stop` またはそれより不利な価格（買い注文の場合はそれより高く、売り注文の場合はそれより低い価格）に達した後に執行されます。この呼び出しに `limit` と `stop` の引数が含まれている場合は [ストップリミット注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#stop-and-stop-limit-orders) が作成され、市場価格が `stop` またはそれよりも不利な価格に到達した後に限り `limit` で指値注文が生成されます。

このコマンドからの注文は、 [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order) からの注文とは異なり、 [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 宣言文の `pyramiding` パラメータの影響を受けます。ピラミッディングはポジションごとにどれだけのオープンエントリーを同時に許容するかその数を指定します。たとえば、`pyramiding = 3` の場合、ストラテジーは最大3つまで未決済トレードを保持することができ、少なくとも1つの既存の取引がクローズするまで、このコマンドは追加でトレードをオープンする注文作成ができないことになっています。

デフォルトでは、ストラテジーがこのコマンドから現在のマーケットポジションと逆方向の注文を実行すると、そのポジションを反転させます。たとえば、5個のロングポジションを建てている場合、`qty` が5、`direction` が [strategy.short](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.short) のこのコマンドからの注文は、10個の売りをトリガーしてロングポジションを決済すると同時に、新たに5つのショートポジションを建てます。 [strategy.risk\_allow\_entry\_in](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.risk_allow_entry_in) 関数で許容される方向を指定することによって、この動作を変更することができます。

構文

```
strategy.entry(id, direction, qty, limit, stop, oca_name, oca_type, comment, alert_message, disable_alert) → void
```

引数

id (series string) 注文の識別子で、ストラテジーによる注文約定後のトレードにおいてエントリーIDに対応するものです。注文成立後にストラテジーが新しいポジションを建てる場合、注文IDは [strategy.position\_entry\_name](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_entry_name) の値になります。ストラテジーのコマンドは注文IDを参照することによって、未執行の注文について変更やキャンセルを行うことができ、また未決済のトレードを指定して決済注文を生成することができます。ストラテジーテスターとチャートには、コマンドが `comment` の値を指定しない限りこの注文IDが表示されます。

direction (series strategy\_direction) トレードの方向。可能な値は、ロングの場合は [strategy.long](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.long)、ショートの場合は [strategy.short](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.short) です。

qty (series int/float) オプションです。注文が約定した結果、未決済の状態になる契約／株／ロット／ユニット数を表します。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で、この場合、コマンドは [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 宣言文の `default_qty_type` と `default_qty_value` パラメータを使用して数量を決定します。

limit (series int/float) オプションで、注文の指値を指定します。指定した場合、コマンドは指値注文またはストップリミット注文を作成しますが、`stop`の値も指定されているかどうかで注文の種類が決まります。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で、これは結果として発注される注文が指値注文またはストップリミット注文ではないことを意味します。

stop (series int/float) オプションで、注文の逆指値を指定します。指定した場合、コマンドは逆指値注文またはストップリミット注文を作成しますが、`limit`の値も指定されているかどうかで注文の種類が決まります。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で、これは結果として発注される注文が逆指値注文またはストップリミット注文ではないことを意味します。

oca\_name (series string) オプションで、ワン・キャンセル・オール（OCA: One-Cancels-All）注文を形成するグループの名前です。同じ`oca_name`および`oca_type`パラメータを持つ未執行注文が約定すると、その注文はグループ内の未約定注文すべてに影響を与えます。デフォルトは空の文字列で、これはその注文がOCAのグループに属さないことを意味します。

oca\_type (input string) オプションで、ある未決済の注文について、同じ`oca_name`と`oca_type`の値を持つ別の未執行注文が執行されたときの動作を指定しまする。可能な値は [strategy.oca.cancel](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.oca.cancel)、 [strategy.oca.reduce](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.oca.reduce)、 [strategy.oca.none](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.oca.none) です。デフォルトは [strategy.oca.none](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.oca.none) です。

comment (series string) オプションです。約定済みの注文に関する追加のメモです。値が空の文字列でなければ、ストラテジーテスターとチャートは注文に対して指定された`id`の代わりにここで指定したテキストを表示します。デフォルトは空の文字列です。

alert\_message (series string) オプションです。注文約定時に発動するアラートのカスタムテキストを表します。「アラートの作成」ダイアログボックスの「メッセージ」フィールドに`{{strategy.order.alert_message}}`のプレースホルダーが含まれている場合、アラートメッセージはそのプレースホルダーをこのテキストに置き換えます。デフォルトは空の文字列です。

disable\_alert (series bool) オプションで、コマンドの注文作成時点で [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) が指定されていると、ストラテジーは注文約定時にアラートをトリガーしません。このパラメータは "series" 値を受け付けるので、どの注文が実行されたときにアラートをトリガーするかをユーザーが制御できます。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
strategy("Market order strategy", overlay = true, margin_long = 100, margin_short = 100)

// Calculate a 14-bar and 28-bar moving average of `close` prices.
float sma14 = ta.sma(close, 14)
float sma28 = ta.sma(close, 28)

// Place a market order to close the short trade and enter a long position when `sma14` crosses over `sma28`.
if ta.crossover(sma14, sma28)
    strategy.entry("My Long Entry ID", strategy.long)

// Place a market order to close the long trade and enter a short position when `sma14` crosses under `sma28`.
if ta.crossunder(sma14, sma28)
    strategy.entry("My Short Entry ID", strategy.short)
```

例

```
//@version=5
strategy("Limit order strategy", overlay=true, margin_long=100, margin_short=100)

//@variable The distance from the `close` price for each limit order.
float limitOffsetInput = input.int(100, "Limit offset, in ticks", 1) * syminfo.mintick

//@function Draws a label and line at the specified `price` to visualize a limit order's level.
drawLimit(float price, bool isLong) =>
    color col = isLong ? color.blue : color.red
    label.new(
         bar_index, price, (isLong ? "Long" : "Short") + " limit order created",
         style = label.style_label_right, color = col, textcolor = color.white
     )
    line.new(bar_index, price, bar_index + 1, price, extend = extend.right, style = line.style_dashed, color = col)

//@function Stops the `l` line from extending further.
method stopExtend(line l) =>
    l.set_x2(bar_index)
    l.set_extend(extend.none)

// Initialize two `line` variables to reference limit line IDs.
var line longLimit  = na
var line shortLimit = na

// Calculate a 14-bar and 28-bar moving average of `close` prices.
float sma14 = ta.sma(close, 14)
float sma28 = ta.sma(close, 28)

if ta.crossover(sma14, sma28)
    // Cancel any unfilled sell orders with the specified ID.
    strategy.cancel("My Short Entry ID")
    //@variable The limit price level. Its value is `limitOffsetInput` ticks below the current `close`.
    float limitLevel = close - limitOffsetInput
    // Place a long limit order to close the short trade and enter a long position at the `limitLevel`.
    strategy.entry("My Long Entry ID", strategy.long, limit = limitLevel)
    // Make new drawings for the long limit and stop extending the `shortLimit` line.
    longLimit := drawLimit(limitLevel, isLong = true)
    shortLimit.stopExtend()

if ta.crossunder(sma14, sma28)
    // Cancel any unfilled buy orders with the specified ID.
    strategy.cancel("My Long Entry ID")
    //@variable The limit price level. Its value is `limitOffsetInput` ticks above the current `close`.
    float limitLevel = close + limitOffsetInput
    // Place a short limit order to close the long trade and enter a short position at the `limitLevel`.
    strategy.entry("My Short Entry ID", strategy.short, limit = limitLevel)
    // Make new drawings for the short limit and stop extending the `shortLimit` line.
    shortLimit := drawLimit(limitLevel, isLong = false)
    longLimit.stopExtend()
```

### strategy.exit()

未決済ポジションを決済する価格ベースの注文を作成します。同じ`id`を持つ未決済の決済注文が存在する場合、このコマンドを呼び出すとそれらの注文が変更されます。このコマンドは、指定したパラメータに応じて決済注文を生成でき、そのタイプも複数あります。ただし、 [成行注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#market-orders) は生成されません。成行注文でポジションを決済するには、 [strategy.close](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.close) または [strategy.close\_all](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.close_all) を使用します。

このコマンドの呼び出しに`profit`または`limit`の引数が含まれている場合、指定された価格水準かそれより有利な価格 (ロングトレードではより高い、ショートトレードではより低い価格) で該当の取引を決済する [利益確定](https://www.tradingview.com/pine-script-docs/concepts/strategies/#take-profit-and-stop-loss) 注文が作成されます。このコマンドに`loss`または`stop`の引数が含まれている場合、指定された価格水準かそれより不利な価格 (ロングトレードではより低い、ショートトレードではより高い価格) で該当の取引を決済する [ストップロス](https://www.tradingview.com/pine-script-docs/concepts/strategies/#take-profit-and-stop-loss) 注文が作成されます。`profit`または`limit`、および`loss`または`stop`の引数を指定してこのコマンドを呼び出すと、両方の注文タイプを持つ注文ブラケットが作成されます。

このコマンドは`trail_price`または`trail_points`の引数と`trail_offset`の引数を指定すると、 [トレーリングストップ](https://www.tradingview.com/pine-script-docs/concepts/strategies/#trailing-stops) 注文を作成できます。トレーリングストップ注文は、価格がエントリー価格から`trail_points`のティック分だけ移動した時、または`trail_price`の価格水準にタッチした時に有効になります。一旦有効になると、そのトレードの利益が新しく高値に到達するたびに逆指値が`trail_offset`のティック分だけ市場価格の上下に追随します。トレードの利益が新たに高値を更新しない限り、逆指値は動きません。

このコマンドの呼び出しはストラテジーが注文を満たすかキャンセルするまで、その各々がポジションの一部を決済予約していきます。たとえば、50枚の未決済ポジションがあり [strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) の呼び出しに20枚の`qty`が指定されている場合、その呼び出しの注文は、全ポジションのうち20枚について予約を行います。2番目の呼び出しが50枚の`qty`で、呼び出しの注文のうち最初の1つが約定した場合でも、最大で30枚を決済できます。この動作は [strategy.close](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.close) や [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order) などの他のコマンドからの注文には影響しません。

作成されたエントリー注文の実行前にこのコマンドの呼び出しが行われた場合は、ストラテジーは待機状態になり、エントリー注文の実行後になるまで決済注文を作成しません。

構文

```
strategy.exit(id, from_entry, qty, qty_percent, profit, limit, loss, stop, trail_price, trail_points, trail_offset, oca_name, comment, comment_profit, comment_loss, comment_trailing, alert_message, alert_profit, alert_loss, alert_trailing, disable_alert) → void
```

引数

id (series string) 注文の識別子で、ストラテジーによる注文約定後のトレードにおいて決済IDに対応するものです。ストラテジーのコマンドは注文IDを参照することによって、未執行の決済注文については変更やキャンセルを行うことができます。ストラテジーテスターとチャートには、コマンドが`comment*`の引数を含まない限りこの注文IDが表示されます。

from\_entry (series string) オプションです。決済するトレードのエントリー時の注文IDを表します。指定したエントリーIDを持つ未決済取引が複数ある場合、このコマンドは呼び出し前または呼び出し時に存在しているエントリーすべてに対して決済注文を生成します。デフォルトは空の文字列で、この場合、コマンドは未決済トレードのすべてに対して決済注文を生成しポジションを決済します。

qty (series int/float) オプションです。決済注文の約定時に決済の対象となる契約／株／ロット／ユニット数を表します。指定がある場合、コマンドは`qty_percent`の代わりにこの値を用いて注文サイズを決定します。決済注文では保持しているポジションからここで指定された数量分を予約します。つまり、ストラテジーがこれらの注文を満たすかキャンセルするまで、このコマンドに対する他の呼び出しがこの部分に対して決済することができないことになります。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で、この場合、注文サイズは`qty_percent`の値に依存します。

qty\_percent (series int/float) オプションです。0から100までの間の値で、決済注文の約定時に決済対象となる未決済トレードの数量について、そのパーセント値を表します。決済注文は該当する未決済トレードからここで指定した割合だけを予約します。ストラテジーがこれらの注文を完了またはキャンセルするまで、このコマンドの他の呼び出しはこの部分を決済できません。パーセント値の計算は、他のストラテジーによる [strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) の呼び出しの予約分は考慮に入れず、該当する未決済取引の合計サイズに依存します。`qty`の値が [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) でない場合、コマンドはこのパラメータを無視します。デフォルトは100です。

profit (series int/float) オプションです。利益確定ラインまでの距離をティックで表したものです。指定がある場合、このコマンドはエントリー価格から有利な方向に`profit`のティック数だけ離れた場所にトレードを決済する指値注文を作成します。注文はここで計算された価格かそれよりも有利な価格で執行されます。`limit`の値が [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) でない場合、コマンドはこのパラメーターを無視します。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

limit (series int/float) オプションです。利益確定の価格です。指定がある場合、コマンドは`profit`のパラメーターを無視して、この価格かそれよりも有利な価格でトレードを決済する指値注文を作成します。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

loss (series int/float) オプションです。損切りラインまでの距離をティックで表したものです。指定がある場合、このコマンドはエントリー価格から不利な方向に`loss`のティック数だけ離れた場所にトレードを決済する逆指値注文を作成します。注文はここで計算された価格かそれよりも不利な価格で執行されます。`stop`の値が [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) でない場合、コマンドはこのパラメーターを無視します。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

stop (series int/float) オプションです。損切りの価格です。指定がある場合、コマンドは`loss`のパラメーターを無視して、この価格かそれよりも不利な価格でトレードを決済する逆指値注文を作成します。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

trail\_price (series int/float) オプションです。トレーリングストップを有効化する水準の価格です。指定があれば、コマンドは`trail_points`のパラメーターを無視して、市場価格がこの値に到達した際にトレーリングストップ注文を有効にします。トレーリングストップの初期値は有効化する水準から不利な方向に`trail_offset`のティック数だけ離れた値になります。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

trail\_points (series int/float) オプションです。トレーリングストップを有効化する距離をティック数で表したものです。この値が正であれば、トレードのエントリー価格から有利な方向に`trail_points`のティック数だけ離れた位置に市場価格が動いた時に、コマンドはトレーリングストップ注文を作成します。この値が負であれば、エントリー価格から不利な方向に`trail_points`の絶対値のティック数だけ離れた位置に市場価格が動いた時に、コマンドはトレーリングストップ注文を作成します。`trail_price`の値が [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) でなければ、コマンドはこのパラメーターを無視します。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

trail\_offset (series int/float) オプションです。トレーリングストップのオフセットを表します。市場価格が`trail_price`または`trail_points`で定義された有効化の水準に到達すると、このコマンドはその水準から不利な方向に`trail_offset`の初期値のティック数だけ離れた位置にトレーリングストップを作成します。有効になった後は、利益が最高値になる位置から指定された距離を保ちながら、そのトレードの利益が新高値に到達するたびにトレーリングストップが市場価格の方へと動いていきます。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

oca\_name (series string) オプションです。コマンドの利益確定／損切り／トレーリングストップ注文が属するワン・キャンセル・オール（OCA: One-Cancels-All）グループの名前です。このコマンドからの注文はすべて、 [strategy.oca.reduce](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.oca.reduce) タイプです。同じ`oca_name`を持つこのOCAタイプの注文が約定すると、ストラテジーはOCAグループ内の他の未約定注文のサイズを約定した数量分だけ削減します。デフォルトは空の文字列です。この場合、ストラテジーが自動的にOCAの名前を割り当てます。また、その結果として生じる注文では、その注文自体の数量削減や他のコマンドからの注文による削減ができません。

comment (series string) オプションです。約定済みの注文に関する追加のメモです。値が空の文字列でなければ、ストラテジーテスターとチャートは注文に対して指定された`id`の代わりにここで指定したテキストを表示します。注文に適用される`comment_*`のパラメーターに対する引数が呼び出しに含まれている場合、この値は無視されます。デフォルトは空の文字列です。

comment\_profit (series string) オプションです。約定済みの注文に関する追加のメモです。値が空の文字列でなければ、ストラテジーテスターとチャートは注文に対して指定された`id`または`comment`の代わりにここで指定したテキストを表示します。コマンドの利益確定注文が`profit`または`limit`のパラメーターを使用している場合に限り、このコメントが適用されます。デフォルトは空の文字列です。

comment\_loss (series string) オプションです。約定済みの注文に関する追加のメモです。値が空の文字列でなければ、ストラテジーテスターとチャートは注文に対して指定された`id`または`comment`の代わりにここで指定したテキストを表示します。コマンドの損切り注文が`loss`または`stop`のパラメーターを使用している場合に限り、このコメントが適用されます。デフォルトは空の文字列です。

comment\_trailing (series string) オプションです。約定済みの注文に関する追加のメモです。値が空の文字列でなければ、ストラテジーテスターとチャートは注文に対して指定された`id`または`comment`の代わりにここで指定したテキストを表示します。コマンドのトレーリングストップ注文が`trail_price`、`trail_points`または`trail_offset`のパラメーターを使用している場合に限り、このコメントが適用されます。デフォルトは空の文字列です。

alert\_message (series string) オプションです。注文約定時に発動するアラートのカスタムテキストを表します。「アラートの作成」ダイアログボックスの「メッセージ」フィールドに`{{strategy.order.alert_message}}`のプレースホルダーが含まれている場合、アラートメッセージはそのプレースホルダーをこのテキストに置き換えます。注文へと適用される他の`alert_*`のパラメータの引数が呼び出しに含まれている場合、コマンドはこの値を無視します。デフォルトは空の文字列です。

alert\_profit (series string) オプションです。注文約定時に発動するアラートのカスタムテキストを表します。「アラートの作成」ダイアログボックスの「メッセージ」フィールドに`{{strategy.order.alert_message}}`のプレースホルダーが含まれている場合、アラートメッセージはそのプレースホルダーをこのテキストに置き換えます。このメッセージは、`profit`または`limit`のパラメータを使って作成されたコマンドの利益確定注文にのみ適用されます。デフォルトは空の文字列です。

alert\_loss (series string) オプションです。注文約定時に発動するアラートのカスタムテキストを表します。「アラートの作成」ダイアログボックスの「メッセージ」フィールドに`{{strategy.order.alert_message}}`のプレースホルダーが含まれている場合、アラートメッセージはそのプレースホルダーをこのテキストに置き換えます。このメッセージは、`loss`または`stop`のパラメータを使って作成されたコマンドのストップロス注文にのみ適用されます。デフォルトは空の文字列です。

alert\_trailing (series string) オプションです。注文約定時に発動するアラートのカスタムテキストを表します。「アラートの作成」ダイアログボックスの「メッセージ」フィールドに`{{strategy.order.alert_message}}`のプレースホルダーが含まれている場合、アラートメッセージはそのプレースホルダーをこのテキストに置き換えます。このメッセージは、`trail_price`または`trail_points`、および`trail_offset`のパラメータを使って作成されたコマンドのトレーリングストップ注文にのみ適用されます。デフォルトは空の文字列です。

disable\_alert (series bool) オプションで、コマンドの注文作成時点で [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) が指定されていると、ストラテジーは注文約定時にアラートをトリガーしません。このパラメータは "series" 値を受け付けるので、どの注文が実行されたときにアラートをトリガーするかをユーザーが制御できます。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
strategy("Exit bracket strategy", overlay = true, margin_long = 100, margin_short = 100)

// Inputs that define the profit and loss amount of each trade as a tick distance from the entry price.
int profitDistanceInput = input.int(100, "Profit distance, in ticks", 1)
int lossDistanceInput   = input.int(100, "Loss distance, in ticks", 1)

// Variables to track the take-profit and stop-loss price.
var float takeProfit = na
var float stopLoss   = na

// Calculate a 14-bar and 28-bar moving average of `close` prices.
float sma14 = ta.sma(close, 14)
float sma28 = ta.sma(close, 28)

if ta.crossover(sma14, sma28) and strategy.opentrades == 0
    // Place a market order to enter a long position.
    strategy.entry("My Long Entry ID", strategy.long)
    // Place a take-profit and stop-loss order when the entry order fills.
    strategy.exit("My Long Exit ID", "My Long Entry ID", profit = profitDistanceInput, loss = lossDistanceInput)

if ta.change(strategy.opentrades) == 1
    //@variable The long entry price.
    float entryPrice = strategy.opentrades.entry_price(0)
    // Update the `takeProfit` and `stopLoss` values.
    takeProfit := entryPrice + profitDistanceInput * syminfo.mintick
    stopLoss   := entryPrice - lossDistanceInput * syminfo.mintick

if ta.change(strategy.closedtrades) == 1
    // Reset the `takeProfit` and `stopLoss`.
    takeProfit := na
    stopLoss   := na

// Plot the `takeProfit` and `stopLoss`.
plot(takeProfit, "Take-profit level", color.green, 2, plot.style_linebr)
plot(stopLoss, "Stop-loss level", color.red, 2, plot.style_linebr)
```

例

```
//@version=5
strategy("Trailing stop strategy", overlay = true, margin_long = 100, margin_short = 100)

//@variable The distance required to activate the trailing stop.
float activationDistanceInput = input.int(100, "Trail activation distance, in ticks") * syminfo.mintick
//@variable The number of ticks the trailing stop follows behind the price as it reaches new peaks.
int trailDistanceInput = input.int(100, "Trail distance, in ticks")

//@function Draws a label and line at the specified `price` to visualize a trailing stop order's activation level.
drawActivation(float price) =>
    label.new(
         bar_index, price, "Activation level", style = label.style_label_right,
         color = color.gray, textcolor = color.white
     )
    line.new(
         bar_index, price, bar_index + 1, price, extend = extend.right, style = line.style_dashed, color = color.gray
     )

//@function Stops the `l` line from extending further.
method stopExtend(line l) =>
    l.set_x2(bar_index)
    l.set_extend(extend.none)

// The activation line, active trailing stop price, and active trailing stop flag.
var line activationLine     = na
var float trailingStopPrice = na
var bool isActive           = false

if bar_index % 100 == 0 and strategy.opentrades == 0
    trailingStopPrice := na
    isActive          := false
    // Place a market order to enter a long position.
    strategy.entry("My Long Entry ID", strategy.long)
    //@variable The activation level's price.
    float activationPrice = close + activationDistanceInput
    // Create a trailing stop order that activates the defined number of ticks above the entry price.
    strategy.exit(
         "My Long Exit ID", "My Long Entry ID", trail_price = activationPrice, trail_offset = trailDistanceInput,
         oca_name = "Exit"
     )
    // Create new drawings at the `activationPrice`.
    activationLine := drawActivation(activationPrice)

// Logic for trailing stop visualization.
if strategy.opentrades == 1
    // Stop extending the `activationLine` when the stop activates.
    if not isActive and high > activationLine.get_price(bar_index)
        isActive := true
        activationLine.stopExtend()
    // Update the `trailingStopPrice` while the trailing stop is active.
    if isActive
        float offsetPrice = high - trailDistanceInput * syminfo.mintick
        trailingStopPrice := math.max(nz(trailingStopPrice, offsetPrice), offsetPrice)

// Close the trade with a market order if the trailing stop does not activate before the next 300th bar.
if not isActive and bar_index % 300 == 0
    strategy.close_all("Market close")

// Reset the `trailingStopPrice` and `isActive` flags when the trade closes, and stop extending the `activationLine`.
if ta.change(strategy.closedtrades) > 0
    if not isActive
        activationLine.stopExtend()
    trailingStopPrice := na
    isActive          := false

// Plot the `trailingStopPrice`.
plot(trailingStopPrice, "Trailing stop", color.red, 3, plot.style_linebr)
```

備考

[strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) のコマンドを1回呼び出すと、呼び出しの`from_entry`の値に応じて、未決済ポジションの複数のエントリーに対して決済注文を生成できます。呼び出しに`from_entry`の引数が含まれていない場合、呼び出し後に開始された取引であっても、ポジションが決済されるまでのすべての未決済取引に対して決済注文が作成されます。詳細については、ユーザーマニュアルの [こちら](https://www.tradingview.com/pine-script-docs/concepts/strategies/#exits-for-multiple-entries) のセクションをご参照ください。

ポジションが複数の未決済取引で構成され、かつ [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) の宣言文中の`close_entries_rule`が "FIFO"（デフォルト）である場合、 [strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) の呼び出しからの注文は、未決済取引のうち最初に開始されたポジションから決済します。この動作は`from_entry`の値が異なる未決済取引のエントリーIDであっても適用されます。ただし、その場合でも決済注文の最大サイズは`from_entry`のIDを持つ注文で開始された取引に依存します。詳細については、ユーザーマニュアルの [こちら](https://www.tradingview.com/pine-script-docs/concepts/strategies/#closing-a-market-position) のセクションをご参照ください。

[strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) の呼び出しに損切り (stop-loss) 注文とトレーリングストップ注文を作成する引数が含まれている場合、両方の注文が「ストップ (stop)」タイプであるため、コマンドは先に条件が満たされる注文だけを配置します。

### strategy.opentrades.commission()

オープントレードのエントリー手数料と決済手数料の合計を [strategy.account\_currency](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.account_currency) で示して返します。

構文

```
strategy.opentrades.commission(trade_num) → series float
```

引数

trade\_num (series int) オープントレードの番号です。最初のトレードの番号は 0 です。

例

```
// Calculates the gross profit or loss for the current open position.
//@version=5
strategy("`strategy.opentrades.commission` Example", commission_type = strategy.commission.percent, commission_value = 0.1)

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

// Calculate gross profit or loss for open positions only.
tradeOpenGrossPL() =>
    sumOpenGrossPL = 0.0
    for tradeNo = 0 to strategy.opentrades - 1
        sumOpenGrossPL += strategy.opentrades.profit(tradeNo) - strategy.opentrades.commission(tradeNo)
    result = sumOpenGrossPL

plot(tradeOpenGrossPL())
```

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) [strategy.closedtrades.commission](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.commission)

### strategy.opentrades.entry\_bar\_index()

オープントレードのエントリーのバーインデックスを返します。

構文

```
strategy.opentrades.entry_bar_index(trade_num) → series int
```

引数

trade\_num (series int) オープントレードの番号です。最初のトレードの番号は 0 です。

例

```
// Wait 10 bars and then close the position.
//@version=5
strategy("`strategy.opentrades.entry_bar_index` Example")

barsSinceLastEntry() =>
    strategy.opentrades > 0 ? bar_index - strategy.opentrades.entry_bar_index(strategy.opentrades - 1) : na

// Enter a long position if there are no open positions.
if strategy.opentrades == 0
    strategy.entry("Long",  strategy.long)

// Close the long position after 10 bars.
if barsSinceLastEntry() >= 10
    strategy.close("Long")
```

こちらもご覧ください

[strategy.closedtrades.entry\_bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.entry_bar_index) [strategy.closedtrades.exit\_bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.exit_bar_index)

### strategy.opentrades.entry\_comment()

オープントレードのエントリーのコメントメッセージを返します。
この`trade_num`でのエントリーが存在しない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

構文

```
strategy.opentrades.entry_comment(trade_num) → series string
```

引数

trade\_num (series int) オープントレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("`strategy.opentrades.entry_comment()` Example", overlay = true)

stopPrice = open * 1.01

longCondition = ta.crossover(ta.sma(close, 14), ta.sma(close, 28))

if (longCondition)
    strategy.entry("Long", strategy.long, stop = stopPrice, comment = str.tostring(stopPrice, "#.####"))

var testTable = table.new(position.top_right, 1, 3, color.orange, border_width = 1)

if barstate.islastconfirmedhistory or barstate.isrealtime
    table.cell(testTable, 0, 0, 'Last entry stats')
    table.cell(testTable, 0, 1, "Order stop price value: " + strategy.opentrades.entry_comment(strategy.opentrades - 1))
    table.cell(testTable, 0, 2, "Actual Entry Price: " + str.tostring(strategy.opentrades.entry_price(strategy.opentrades - 1)))
```

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) [strategy.opentrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.opentrades)

### strategy.opentrades.entry\_id()

オープントレードのエントリーのIDを返します。

構文

```
strategy.opentrades.entry_id(trade_num) → series string
```

引数

trade\_num (series int) オープントレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("`strategy.opentrades.entry_id` Example", overlay = true)

// We enter a long position when 14 period sma crosses over 28 period sma.
// We enter a short position when 14 period sma crosses under 28 period sma.
longCondition = ta.crossover(ta.sma(close, 14), ta.sma(close, 28))
shortCondition = ta.crossunder(ta.sma(close, 14), ta.sma(close, 28))

// Strategy calls to enter a long or short position when the corresponding condition is met.
if longCondition
    strategy.entry("Long entry at bar #" + str.tostring(bar_index), strategy.long)
if shortCondition
    strategy.entry("Short entry at bar #" + str.tostring(bar_index), strategy.short)

// Display ID of the latest open position.
if barstate.islastconfirmedhistory
    label.new(bar_index, high + (2 * ta.tr),  "Last opened position is \n " + strategy.opentrades.entry_id(strategy.opentrades - 1))
```

リターン

オープントレードのエントリーのIDを返します。

備考

この関数は、trade\_num が 0 to strategy.opentrades-1 の範囲外である場合、na を返します。

こちらもご覧ください

[strategy.opentrades.entry\_bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.opentrades.entry_bar_index) [strategy.opentrades.entry\_price](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.opentrades.entry_price) [strategy.opentrades.entry\_time](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.opentrades.entry_time)

### strategy.opentrades.entry\_price()

オープントレードのエントリーの価格を返します。

構文

```
strategy.opentrades.entry_price(trade_num) → series float
```

引数

trade\_num (series int) オープントレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("strategy.opentrades.entry_price Example 1", overlay = true)

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if ta.crossover(close, ta.sma(close, 14))
    strategy.entry("Long", strategy.long)

// Return the entry price for the latest closed trade.
currEntryPrice = strategy.opentrades.entry_price(strategy.opentrades - 1)
currExitPrice = currEntryPrice * 1.05

if high >= currExitPrice
    strategy.close("Long")

plot(currEntryPrice, "Long entry price", style = plot.style_linebr)
plot(currExitPrice, "Long exit price", color.green, style = plot.style_linebr)
```

例

```
// Calculates the average price for the open position.
//@version=5
strategy("strategy.opentrades.entry_price Example 2", pyramiding = 2)

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

// Calculates the average price for the open position.
avgOpenPositionPrice() =>
    sumOpenPositionPrice = 0.0
    for tradeNo = 0 to strategy.opentrades - 1
        sumOpenPositionPrice += strategy.opentrades.entry_price(tradeNo) * strategy.opentrades.size(tradeNo) / strategy.position_size
    result = nz(sumOpenPositionPrice / strategy.opentrades)

plot(avgOpenPositionPrice())
```

こちらもご覧ください

[strategy.closedtrades.exit\_price](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.exit_price)

### strategy.opentrades.entry\_time()

オープントレードのエントリー時刻を、ミリ秒単位で表されるUNIX時間で返します。

構文

```
strategy.opentrades.entry_time(trade_num) → series int
```

引数

trade\_num (series int) オープントレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("strategy.opentrades.entry_time Example")

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

// Calculates duration in milliseconds since the last position was opened.
timeSinceLastEntry()=>
    strategy.opentrades > 0 ? (time - strategy.opentrades.entry_time(strategy.opentrades - 1)) : na

plot(timeSinceLastEntry() / 1000 * 60 * 60 * 24, "Days since last entry")
```

こちらもご覧ください

[strategy.closedtrades.entry\_time](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.entry_time) [strategy.closedtrades.exit\_time](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.exit_time)

### strategy.opentrades.max\_drawdown()

オープントレードの最大ドローダウン、つまりトレードで起こり得る最大の損失を [strategy.account\_currency](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.account_currency) で示して返します。

構文

```
strategy.opentrades.max_drawdown(trade_num) → series float
```

引数

trade\_num (series int) オープントレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("strategy.opentrades.max_drawdown Example 1")

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

// Plot the max drawdown of the latest open trade.
plot(strategy.opentrades.max_drawdown(strategy.opentrades - 1), "Max drawdown of the latest open trade")
```

例

```
// Calculates the max trade drawdown value for all open trades.
//@version=5
strategy("`strategy.opentrades.max_drawdown` Example 2", pyramiding = 100)

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

// Get the biggest max trade drawdown value from all of the open trades.
maxTradeDrawDown() =>
    maxDrawdown = 0.0
    for tradeNo = 0 to strategy.opentrades - 1
        maxDrawdown := math.max(maxDrawdown, strategy.opentrades.max_drawdown(tradeNo))
    result = maxDrawdown

plot(maxTradeDrawDown(), "Biggest max drawdown")
```

備考

この関数は、trade\_num が 0 から strategy.closedtrades - 1 の範囲内にない場合、na を返します。

こちらもご覧ください

[strategy.closedtrades.max\_drawdown](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.max_drawdown) [strategy.max\_drawdown](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_drawdown)

### strategy.opentrades.max\_drawdown\_percent()

未決済のトレードの最大ドローダウン、つまり、そのトレードで起こり得る最大損失を、下記の式で算出される割合で返します: `Lowest Value During Trade  / (Entry Price x Quantity) * 100`

構文

```
strategy.opentrades.max_drawdown_percent(trade_num) → series float
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

こちらもご覧ください

[strategy.opentrades.max\_drawdown](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.opentrades.max_drawdown) [strategy.max\_drawdown](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_drawdown)

### strategy.opentrades.max\_runup()

オープントレードの最大資産増加幅、つまりトレードで得ることが可能な最大利益を [strategy.account\_currency](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.account_currency) で示して返します。

構文

```
strategy.opentrades.max_runup(trade_num) → series float
```

引数

trade\_num (series int) オープントレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("strategy.opentrades.max_runup Example 1")

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

// Plot the max runup of the latest open trade.
plot(strategy.opentrades.max_runup(strategy.opentrades - 1), "Max runup of the latest open trade")
```

例

```
// Calculates the max trade runup value for all open trades.
//@version=5
strategy("strategy.opentrades.max_runup Example 2", pyramiding = 100)

// Enter a long position every 30 bars.
if bar_index % 30 == 0
    strategy.entry("Long", strategy.long)

// Calculate biggest max trade runup value from all of the open trades.
maxOpenTradeRunUp() =>
    maxRunup = 0.0
    for tradeNo = 0 to strategy.opentrades - 1
        maxRunup := math.max(maxRunup, strategy.opentrades.max_runup(tradeNo))
    result = maxRunup

plot(maxOpenTradeRunUp(), "Biggest max runup of all open trades")
```

こちらもご覧ください

[strategy.closedtrades.max\_runup](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.max_runup) [strategy.max\_drawdown](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_drawdown)

### strategy.opentrades.max\_runup\_percent()

未決済トレードの最大資産増加幅、つまり、そのトレードで起こり得る最大利益を、下記の式で算出される割合で返します: `Highest Value During Trade / (Entry Price x Quantity) * 100`

構文

```
strategy.opentrades.max_runup_percent(trade_num) → series float
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

こちらもご覧ください

[strategy.opentrades.max\_runup](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.opentrades.max_runup) [strategy.max\_runup](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.max_runup)

### strategy.opentrades.profit()

オープントレードの損益を [strategy.account\_currency](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.account_currency) で示して返します。損失はマイナスの数値で表示されます。

構文

```
strategy.opentrades.profit(trade_num) → series float
```

引数

trade\_num (series int) オープントレードの番号です。最初のトレードの番号は 0 です。

例

```
// Returns the profit of the last open trade.
//@version=5
strategy("`strategy.opentrades.profit` Example 1", commission_type = strategy.commission.percent, commission_value = 0.1)

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

plot(strategy.opentrades.profit(strategy.opentrades - 1), "Profit of the latest open trade")
```

例

```
// Calculates the profit for all open trades.
//@version=5
strategy("`strategy.opentrades.profit` Example 2", pyramiding = 5)

// Strategy calls to enter 5 long positions every 2 bars.
if bar_index % 2 == 0
    strategy.entry("Long", strategy.long, qty = 5)

// Calculate open profit or loss for the open positions.
tradeOpenPL() =>
    sumProfit = 0.0
    for tradeNo = 0 to strategy.opentrades - 1
        sumProfit += strategy.opentrades.profit(tradeNo)
    result = sumProfit

plot(tradeOpenPL(), "Profit of all open trades")
```

こちらもご覧ください

[strategy.closedtrades.profit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.profit) [strategy.openprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.openprofit) [strategy.netprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.netprofit) [strategy.grossprofit](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.grossprofit)

### strategy.opentrades.profit\_percent()

未決済のトレードの損益を割合で返します。損失は負の値で表されます。

構文

```
strategy.opentrades.profit_percent(trade_num) → series float
```

引数

trade\_num (series int) クローズトレードの番号です。最初のトレードの番号は 0 です。

こちらもご覧ください

[strategy.opentrades.profit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.opentrades.profit)

### strategy.opentrades.size()

オープントレードの方向と約定数を返します。値が \> 0 の場合、市場ポジションはロング、値が < 0 の場合、市場ポジションはショートだったことを意味します。

構文

```
strategy.opentrades.size(trade_num) → series float
```

引数

trade\_num (series int) オープントレードの番号です。最初のトレードの番号は 0 です。

例

```
//@version=5
strategy("`strategy.opentrades.size` Example 1")

// We calculate the max amt of shares we can buy.
amtShares = math.floor(strategy.equity / close)
// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long, qty = amtShares)
if bar_index % 20 == 0
    strategy.close("Long")

// Plot the number of contracts in the latest open trade.
plot(strategy.opentrades.size(strategy.opentrades - 1), "Amount of contracts in latest open trade")
```

例

```
// Calculates the average profit percentage for all open trades.
//@version=5
strategy("`strategy.opentrades.size` Example 2")

// Strategy calls to enter long trades every 15 bars and exit long trades every 20 bars.
if bar_index % 15 == 0
    strategy.entry("Long", strategy.long)
if bar_index % 20 == 0
    strategy.close("Long")

// Calculate profit for all open trades.
profitPct = 0.0
for tradeNo = 0 to strategy.opentrades - 1
    entryP = strategy.opentrades.entry_price(tradeNo)
    exitP = close
    profitPct += (exitP - entryP) / entryP * strategy.opentrades.size(tradeNo) * 100

// Calculate average profit percent for all open trades.
avgProfitPct = nz(profitPct / strategy.opentrades)
plot(avgProfitPct)
```

こちらもご覧ください

[strategy.closedtrades.size](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.closedtrades.size) [strategy.position\_size](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_size) [strategy.opentrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.opentrades) [strategy.closedtrades](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.closedtrades)

### strategy.order()

ポジションの新規／追加／決済注文を作成します。同じ`id`の未決済注文が存在する場合、このコマンドを呼び出すとその注文が変更されます。

結果として作成される注文のタイプは、`limit` と `stop` のパラメーターによって決定されます。この呼び出しに `limit` または `stop` の引数が含まれていない場合は、次のティックで執行される [成行注文が](https://www.tradingview.com/pine-script-docs/concepts/strategies/#market-orders) 作成されます。この呼び出しで `limit` が指定され、 `stop` が指定されていない場合は [指値注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#limit-orders) が発注され、市場価格が `limit` またはそれより有利な価格（買い注文の場合はそれより低く、売り注文の場合はそれより高い価格）に到達した後に執行されます。`stop` が指定され、`limit` が指定されていない場合は [逆指値注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#stop-and-stop-limit-orders) が発注され、市場価格が `stop` またはそれより不利な価格（買い注文の場合はそれより高く、売り注文の場合はそれより低い価格）に達した後に執行されます。この呼び出しに `limit` と `stop` の引数が含まれている場合は [ストップリミット注文](https://www.tradingview.com/pine-script-docs/concepts/strategies/#stop-and-stop-limit-orders) が作成され、市場価格が `stop` またはそれよりも不利な価格に到達した後に限り `limit` で指値注文が生成されます。

このコマンドからの注文は、 [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) からの注文とは異なり、 [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 宣言文の`pyramiding`パラメータの影響を受けません。この関数を呼び出すことで、ストラテジーは同じ方向にいくつでもトレードを開始することができます。

このコマンドは、 [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) のようにエントリー注文のみを作成するわけではないため、 未決済ポジションを自動的に反転させることはありません。たとえば、5個のロングポジションがある場合、このコマンドで`qty`が5、`direction`が [strategy.short](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.short) の注文を出すと、5個分の売りがトリガーされポジションが決済されます。

構文

```
strategy.order(id, direction, qty, limit, stop, oca_name, oca_type, comment, alert_message, disable_alert) → void
```

引数

id (series string) 注文の識別子で、ストラテジーによる注文約定後のトレードにおいてエントリーIDまたは決済IDに対応するものです。注文成立後にストラテジーが新しいポジションを建てる場合、注文IDは [strategy.position\_entry\_name](https://jp.tradingview.com/pine-script-reference/v5/#var_strategy.position_entry_name) の値になります。ストラテジーのコマンドは注文IDを参照することによって、未執行の注文について変更やキャンセルを行うことができ、また未決済のトレードを指定して決済注文を生成することができます。ストラテジーテスターとチャートには、コマンドが`comment`の値を指定しない限りこの注文IDが表示されます。

direction (series strategy\_direction) トレードの方向。可能な値は、ロングの場合は [strategy.long](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.long)、ショートの場合は [strategy.short](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.short) です。

qty (series int/float) オプションです。注文約定時にトレードの対象となる契約／株／ロット／ユニット数を表します。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で、この場合、コマンドは [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) 宣言文の`default_qty_type`と`default_qty_value`パラメータを使用して数量を決定します。

limit (series int/float) オプションで、注文の指値を指定します。指定した場合、コマンドは指値注文またはストップリミット注文を作成しますが、`stop`の値も指定されているかどうかで注文の種類が決まります。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で、これは結果として発注される注文が指値注文またはストップリミット注文ではないことを意味します。

stop (series int/float) オプションで、注文の逆指値を指定します。指定した場合、コマンドは逆指値注文またはストップリミット注文を作成しますが、`limit`の値も指定されているかどうかで注文の種類が決まります。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で、これは結果として発注される注文が逆指値注文またはストップリミット注文ではないことを意味します。

oca\_name (series string) オプションで、ワン・キャンセル・オール（OCA: One-Cancels-All）注文を形成するグループの名前です。同じ`oca_name`および`oca_type`パラメータを持つ未執行注文が約定すると、その注文はグループ内の未約定注文すべてに影響を与えます。デフォルトは空の文字列で、これはその注文がOCAのグループに属さないことを意味します。

oca\_type (input string) オプションで、ある未決済の注文について、同じ`oca_name`と`oca_type`の値を持つ別の未執行注文が執行されたときの動作を指定しまする。可能な値は [strategy.oca.cancel](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.oca.cancel)、 [strategy.oca.reduce](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.oca.reduce)、 [strategy.oca.none](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.oca.none) です。デフォルトは [strategy.oca.none](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.oca.none) です。

comment (series string) オプションです。約定済みの注文に関する追加のメモです。値が空の文字列でなければ、ストラテジーテスターとチャートは注文に対して指定された`id`の代わりにここで指定したテキストを表示します。デフォルトは空の文字列です。

alert\_message (series string) オプションです。注文約定時に発動するアラートのカスタムテキストを表します。「アラートの作成」ダイアログボックスの「メッセージ」フィールドに`{{strategy.order.alert_message}}`のプレースホルダーが含まれている場合、アラートメッセージはそのプレースホルダーをこのテキストに置き換えます。デフォルトは空の文字列です。

disable\_alert (series bool) オプションで、コマンドの注文作成時点で [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) が指定されていると、ストラテジーは注文約定時にアラートをトリガーしません。このパラメータは "series" 値を受け付けるので、どの注文が実行されたときにアラートをトリガーするかをユーザーが制御できます。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
strategy("Market order strategy", overlay = true, margin_long = 100, margin_short = 100)

// Calculate a 14-bar and 28-bar moving average of `close` prices.
float sma14 = ta.sma(close, 14)
float sma28 = ta.sma(close, 28)

// Place a market order to enter a long position when `sma14` crosses over `sma28`.
if ta.crossover(sma14, sma28) and strategy.position_size == 0
    strategy.order("My Long Entry ID", strategy.long)

// Place a market order to sell the same quantity as the long trade when `sma14` crosses under `sma28`,
// effectively closing the long position.
if ta.crossunder(sma14, sma28) and strategy.position_size > 0
    strategy.order("My Long Exit ID", strategy.short)
```

例

```
//@version=5
strategy("Limit and stop exit strategy", overlay = true, margin_long = 100, margin_short = 100)

//@variable The distance from the long entry price for each short limit order.
float shortOffsetInput = input.int(200, "Sell limit/stop offset, in ticks", 1) * syminfo.mintick

//@function Draws a label and line at the specified `price` to visualize a limit order's level.
drawLimit(float price, bool isLong, bool isStop = false) =>
    color col = isLong ? color.blue : color.red
    label.new(
         bar_index, price, (isLong ? "Long " : "Short ") + (isStop ? "stop" : "limit") + " order created",
         style = label.style_label_right, color = col, textcolor = color.white
     )
    line.new(bar_index, price, bar_index + 1, price, extend = extend.right, style = line.style_dashed, color = col)

//@function Stops the `l` line from extending further.
method stopExtend(line l) =>
    l.set_x2(bar_index)
    l.set_extend(extend.none)

// Initialize two `line` variables to reference limit and stop line IDs.
var line profitLimit = na
var line lossStop    = na

// Calculate a 14-bar and 28-bar moving average of `close` prices.
float sma14 = ta.sma(close, 14)
float sma28 = ta.sma(close, 28)

if ta.crossover(sma14, sma28) and strategy.position_size == 0
    // Place a market order to enter a long position.
    strategy.order("My Long Entry ID", strategy.long)

if strategy.position_size > 0 and strategy.position_size[1] == 0
    //@variable The entry price of the long trade.
    float entryPrice = strategy.opentrades.entry_price(0)
    // Calculate short limit and stop levels above and below the `entryPrice`.
    float profitLevel = entryPrice + shortOffsetInput
    float lossLevel   = entryPrice - shortOffsetInput
    // Place short limit and stop orders at the `profitLevel` and `lossLevel`.
    strategy.order("Profit", strategy.short, limit = profitLevel, oca_name = "Bracket", oca_type = strategy.oca.cancel)
    strategy.order("Loss", strategy.short, stop = lossLevel, oca_name = "Bracket", oca_type = strategy.oca.cancel)
    // Make new drawings for the `profitLimit` and `lossStop` lines.
    profitLimit := drawLimit(profitLevel, isLong = false)
    lossStop    := drawLimit(lossLevel, isLong = false, isStop = true)

if ta.change(strategy.closedtrades) > 0
    // Stop extending the `profitLimit` and `lossStop` lines.
    profitLimit.stopExtend()
    lossStop.stopExtend()
```

### strategy.risk.allow\_entry\_in()

この関数は、 [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) 関数でどの市場方向のポジションを開くことを許可するかを指定するために使用します。

構文

```
strategy.risk.allow_entry_in(value) → void
```

引数

value (simple string) 許可される方向。利用可能な値は、 [strategy.direction.all](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.direction.all), [strategy.direction.long](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.direction.long), [strategy.direction.short](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.direction.short) です。

例

```
//@version=5
strategy("strategy.risk.allow_entry_in")

strategy.risk.allow_entry_in(strategy.direction.long)
if open > close
    strategy.entry("Long", strategy.long)
// Instead of opening a short position with 10 contracts, this command will close long entries.
if open < close
    strategy.entry("Short", strategy.short, qty = 10)
```

### strategy.risk.max\_cons\_loss\_days()

このルールの目的は、指定した損失の連続日数を超えた場合に、すべての指値注文をキャンセルし、すべての保有ポジションを閉じて、新たな注文を止めることです。このルールはストラテジー全体に適用されます。

構文

```
strategy.risk.max_cons_loss_days(count, alert_message) → void
```

引数

count (simple int) 必須パラメーター。許容される損失の連続日数を指定します。

alert\_message (simple string) 「アラート作成」ダイアログボックスの「メッセージ」欄で {{strategy.order.alert\_message}} のプレースホルダーが用いられた際に、それを置き換えるアラートメッセージを設定するオプションパラメーター。

例

```
//@version=5
strategy("risk.max_cons_loss_days Demo 1")
strategy.risk.max_cons_loss_days(3) // No orders will be placed after 3 days, if each day is with loss.
plot(strategy.position_size)
```

### strategy.risk.max\_drawdown()

このルールの目的は、最大ドローダウンを決定することです。このルールはストラテジー全体に適用されます。一度、最大ドローダウン値に到達すると、すべての指値注文はキャンセルされ、すべての保有ポジションは閉じられ、新たな注文はできなくなります。

構文

```
strategy.risk.max_drawdown(value, type, alert_message) → void
```

引数

value (simple int/float) 必須パラメーター。最大ドローダウン値です。基軸通貨での金額または最大資産に対してのパーセンテージで指定します。資産に対する割合の場合、指定可能な値の範囲は0から100までです。

type (simple string) 必須のパラメーター。値の種類を指定します。 [strategy.percent\_of\_equity](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.percent_of_equity) または [strategy.cash](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.cash) のいずれかひとつを指定して下さい。注: もし 'strategy.percent\_of\_equity' が指定されているケースで、資産がゼロまたはマイナスに下がった場合には、すべての指値注文は取り消され、すべてのポジションが解消され、新規注文は発注できなくなります。

alert\_message (simple string) 「アラート作成」ダイアログボックスの「メッセージ」欄で {{strategy.order.alert\_message}} のプレースホルダーが用いられた際に、それを置き換えるアラートメッセージを設定するオプションパラメーター。

例

```
//@version=5
strategy("risk.max_drawdown Demo 1")
strategy.risk.max_drawdown(50, strategy.percent_of_equity) // set maximum drawdown to 50% of maximum equity
plot(strategy.position_size)
```

例

```
//@version=5
strategy("risk.max_drawdown Demo 2", currency = "EUR")
strategy.risk.max_drawdown(2000, strategy.cash)  // set maximum drawdown to 2000 EUR from maximum equity
plot(strategy.position_size)
```

### strategy.risk.max\_intraday\_filled\_orders()

このルールの目的は、1日あたりの注文の最大数を決定することです（チャートの時間足が日足より上位の場合は、1バーあたりです）。 このルールはストラテジー全体に適用されます。 一度、注文の最大数に到達すると、すべての指値注文はキャンセルされ、すべての保有ポジションは閉じられ、現在の取引セッションが終了するまでは、新たな注文はできなくなります。

構文

```
strategy.risk.max_intraday_filled_orders(count, alert_message) → void
```

引数

count (simple int) 必須パラメーター。一日あたりの約定する注文の最大数です。

alert\_message (simple string) 「アラート作成」ダイアログボックスの「メッセージ」欄で {{strategy.order.alert\_message}} のプレースホルダーが用いられた際に、それを置き換えるアラートメッセージを設定するオプションパラメーター。

例

```
//@version=5
strategy("risk.max_intraday_filled_orders Demo")
strategy.risk.max_intraday_filled_orders(10) // After 10 orders are filled, no more strategy orders will be placed (except for a market order to exit current open market position, if there is any).
if open > close
    strategy.entry("buy", strategy.long)
if open < close
    strategy.entry("sell", strategy.short)
```

### strategy.risk.max\_intraday\_loss()

一日の間に許容される最大損失。（基軸通貨での）金額または日中の最大資産に対するパーセンテージ (0 - 100) で指定します。

構文

```
strategy.risk.max_intraday_loss(value, type, alert_message) → void
```

引数

value (simple int/float) 必須のパラメーター。最大損失の値。(基軸通貨での) 金額または日中の最大資産に対するパーセンテージで指定します。資産に対するパーセンテージで指定する場合、設定可能な値の範囲は 0 ～ 100 です。

type (simple string) 必須のパラメーター。値の種類を指定します。 [strategy.percent\_of\_equity](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.percent_of_equity) または [strategy.cash](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.cash) のいずれかひとつを指定して下さい。注: もし [strategy.percent\_of\_equity](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.percent_of_equity) が指定されているケースで、資産がゼロまたはマイナスに下がった場合には、すべての未約定の注文は取り消され、すべてのポジションが解消され、新規注文は発注できなくなります。

alert\_message (simple string) 「アラート作成」ダイアログボックスの「メッセージ」欄で {{strategy.order.alert\_message}} のプレースホルダーが用いられた際に、それを置き換えるアラートメッセージを設定するオプションパラメーター。

例

```
// Sets the maximum intraday loss using the strategy's equity value.
//@version=5
strategy("strategy.risk.max_intraday_loss Example 1", overlay = false, default_qty_type = strategy.percent_of_equity, default_qty_value = 100)

// Input for maximum intraday loss %.
lossPct = input.float(10)

// Set maximum intraday loss to our lossPct input
strategy.risk.max_intraday_loss(lossPct, strategy.percent_of_equity)

// Enter Short at bar_index zero.
if bar_index == 0
    strategy.entry("Short", strategy.short)

// Store equity value from the beginning of the day
eqFromDayStart = ta.valuewhen(ta.change(dayofweek) > 0, strategy.equity, 0)

// Calculate change of the current equity from the beginning of the current day.
eqChgPct = 100 * ((strategy.equity - eqFromDayStart) / strategy.equity)

// Plot it
plot(eqChgPct)
hline(-lossPct)
```

例

```
// Sets the maximum intraday loss using the strategy's cash value.
//@version=5
strategy("strategy.risk.max_intraday_loss Example 2", overlay = false)

// Input for maximum intraday loss in absolute cash value of the symbol.
absCashLoss = input.float(5)

// Set maximum intraday loss to `absCashLoss` in account currency.
strategy.risk.max_intraday_loss(absCashLoss, strategy.cash)

// Enter Short at bar_index zero.
if bar_index == 0
    strategy.entry("Short", strategy.short)

// Store the open price value from the beginning of the day.
beginPrice = ta.valuewhen(ta.change(dayofweek) > 0, open, 0)

// Calculate the absolute price change for the current period.
priceChg = (close - beginPrice)

hline(absCashLoss)
plot(priceChg)
```

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) [strategy.percent\_of\_equity](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.percent_of_equity) [strategy.cash](https://jp.tradingview.com/pine-script-reference/v5/#const_strategy.cash)

### strategy.risk.max\_position\_size()

このルールの目的は、市場ポジションの最大サイズを決定することです。 ルールは [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) 関数に影響します。 'エントリー'数量は (必要な場合) 契約数／株数／ロット数／ユニット数に減らすことができますので、合計ポジションサイズは 'strategy.risk.max\_position\_size'で指定された値を超えられません。 少しでもルール違反があるようなら、注文は行われません。

構文

```
strategy.risk.max_position_size(contracts) → void
```

引数

contracts (simple int/float) 必須パラメーター。ポジションの契約数／株数／ロット数／ユニット数の最大数です。

例

```
//@version=5
strategy("risk.max_position_size Demo", default_qty_value = 100)
strategy.risk.max_position_size(10)
if open > close
    strategy.entry("buy", strategy.long)
plot(strategy.position_size)  // max plot value will be 10
```


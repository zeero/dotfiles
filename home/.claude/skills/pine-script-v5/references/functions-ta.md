### ta.alma()

2個の多重定義

アルノー・ルグー移動平均線 (ALMA)です。これは移動平均の加重にガウス分布を用います。

構文と多重定義

[```\\
ta.alma(series, length, offset, sigma) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.alma-0) [```\\
ta.alma(series, length, offset, sigma, floor) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.alma-1)

引数

series (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

offset (simple int/float) 滑らかさ (1に近い) と応答性 (0に近い) の間でトレードオフを調節します。

sigma (simple int/float) ALMAの滑らかさを変更します。 シグマが大きいほどより滑らかなALMAになります。

例

```
//@version=5
indicator("ta.alma", overlay=true)
plot(ta.alma(close, 9, 0.85, 6))

// same on pine, but much less efficient
pine_alma(series, windowsize, offset, sigma) =>
    m = offset * (windowsize - 1)
    //m = math.floor(offset * (windowsize - 1)) // Used as m when math.floor=true
    s = windowsize / sigma
    norm = 0.0
    sum = 0.0
    for i = 0 to windowsize - 1
        weight = math.exp(-1 * math.pow(i - m, 2) / (2 * math.pow(s, 2)))
        norm := norm + weight
        sum := sum + series[windowsize - i - 1] * weight
    sum / norm
plot(pine_alma(close, 9, 0.85, 6))
```

リターン

アルノー・ルグー移動平均線 (ALMA)。

備考

`source` 系列の `na` の値が計算に含まれ、`na` の結果が生成されます。

こちらもご覧ください

[ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma) [ta.ema](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.ema) [ta.rma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rma) [ta.wma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.wma) [ta.vwma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.vwma) [ta.swma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.swma)

### ta.atr()

atr関数 (アベレージ・トゥルー・レンジ) は、トゥルー・レンジのRMAを返します。トゥルー・レンジは max(high - low, abs(high - close\[1\]), abs(low - close\[1\])) です。

構文

```
ta.atr(length) → series float
```

引数

length (simple int) 期間 (バーをさかのぼる数)。

例

```
//@version=5
indicator("ta.atr")
plot(ta.atr(14))

//the same on pine
pine_atr(length) =>
    trueRange = na(high[1])? high-low : math.max(math.max(high - low, math.abs(high - close[1])), math.abs(low - close[1]))
    //true range can be also calculated with ta.tr(true)
    ta.rma(trueRange, length)

plot(pine_atr(14))
```

リターン

真の値幅の平均（アベレージ・トゥルー・レンジ）。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.tr](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.tr) [ta.rma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rma)

### ta.barssince()

最後に条件が true だった時からのバーの数を計算します。

構文

```
ta.barssince(condition) → series int
```

引数

condition (series bool) 確認の対象となる条件です。

例

```
//@version=5
indicator("ta.barssince")
// get number of bars since last color.green bar
plot(ta.barssince(close >= open))
```

リターン

条件が true だった時からのバーの数

備考

現在のバーより前に条件が満たされていない場合、関数は na を返します。

この変数／関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性がある事にご注意下さい。

こちらもご覧ください

[ta.lowestbars](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowestbars) [ta.highestbars](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highestbars) [ta.valuewhen](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.valuewhen) [ta.highest](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highest) [ta.lowest](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowest)

### ta.bb()

ボリンジャーバンド。ボリンジャーバンドはテクニカル分析ツールの一種で、銘柄価格の単純移動平均（SMA）から（正と負の方向に）2標準偏差離れてプロットされるラインから定義されます。各パラメーターはお好みに応じて調整可能です。

構文

```
ta.bb(series, length, mult) → [series float, series float, series float]
```

引数

series (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

mult (simple int/float) 標準偏差ファクター。

例

```
//@version=5
indicator("ta.bb")

[middle, upper, lower] = ta.bb(close, 5, 4)
plot(middle, color=color.yellow)
plot(upper, color=color.yellow)
plot(lower, color=color.yellow)

// the same on pine
f_bb(src, length, mult) =>
    float basis = ta.sma(src, length)
    float dev = mult * ta.stdev(src, length)
    [basis, basis + dev, basis - dev]

[pineMiddle, pineUpper, pineLower] = f_bb(close, 5, 4)

plot(pineMiddle)
plot(pineUpper)
plot(pineLower)
```

リターン

ボリンジャーバンド。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma) [ta.stdev](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.stdev) [ta.kc](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.kc)

### ta.bbw()

ボリンジャーバンド幅。ボリンジャーバンド幅は上下のボリンジャーバンドの差を中央のバンドで割ったものです。

構文

```
ta.bbw(series, length, mult) → series float
```

引数

series (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

mult (simple int/float) 標準偏差ファクター。

例

```
//@version=5
indicator("ta.bbw")

plot(ta.bbw(close, 5, 4), color=color.yellow)

// the same on pine
f_bbw(src, length, mult) =>
    float basis = ta.sma(src, length)
    float dev = mult * ta.stdev(src, length)
    ((basis + dev) - (basis - dev)) / basis

plot(f_bbw(close, 5, 4))
```

リターン

ボリンジャーバンド幅。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.bb](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.bb) [ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma) [ta.stdev](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.stdev)

### ta.cci()

CCI (商品チャネル指数) は、商品の典型的な価格とその単純移動平均との差を、典型的な価格の平均絶対偏差で割ったものです。CCIは、より読みやすい数字にするために、0.015の逆係数でスケーリングされます。

構文

```
ta.cci(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

リターン

過去の length の期間内における source のCCIを返します。

備考

`source` 系列の `na` の値は無視されます。

### ta.change()

6個の多重定義

現在の `source` の値を `length` 本前のバーの値と比較し、その差を返します。

構文と多重定義

[```\\
ta.change(source) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.change-0) [```\\
ta.change(source) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.change-1) [```\\
ta.change(source, length) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.change-2) [```\\
ta.change(source, length) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.change-3) [```\\
ta.change(source) → series bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.change-4) [```\\
ta.change(source, length) → series bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.change-5)

引数

source (series int) ソース系列。

例

```
//@version=5
indicator('Day and Direction Change', overlay = true)
dailyBarTime = time('1D')
isNewDay = ta.change(dailyBarTime) != 0
bgcolor(isNewDay ? color.new(color.green, 80) : na)

isGreenBar = close >= open
colorChange = ta.change(isGreenBar)
plotshape(colorChange, 'Direction Change')
```

リターン

値が数値の場合には差分。ソースが 'bool' の場合には、現在のソースが前のソースと異なるときに `true` を返します。

備考

`source` 系列の `na` の値が計算に含まれ、`na` の結果が生成されます。

こちらもご覧ください

[ta.mom](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.mom) [ta.cross](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.cross)

### ta.cmo()

シャンデ・モメンタム・オシレーター。直近の上昇と下降の値幅の合計の差を計算し、その結果を同じ期間のすべての値幅合計で割ります。

構文

```
ta.cmo(series, length) → series float
```

引数

series (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

例

```
//@version=5
indicator("ta.cmo")
plot(ta.cmo(close, 5), color=color.yellow)

// the same on pine
f_cmo(src, length) =>
    float mom = ta.change(src)
    float sm1 = math.sum((mom >= 0) ? mom : 0.0, length)
    float sm2 = math.sum((mom >= 0) ? 0.0 : -mom, length)
    100 * (sm1 - sm2) / (sm1 + sm2)

plot(f_cmo(close, 5))
```

リターン

シャンデ・モメンタム・オシレーター。

備考

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.rsi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rsi) [ta.stoch](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.stoch) [math.sum](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sum)

### ta.cog()

cog (重心) は統計とフィボナッチの黄金比に基づいたインジケーターです。

構文

```
ta.cog(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

例

```
//@version=5
indicator("ta.cog", overlay=true)
plot(ta.cog(close, 10))

// the same on pine
pine_cog(source, length) =>
    sum = math.sum(source, length)
    num = 0.0
    for i = 0 to length - 1
        price = source[i]
        num := num + price * (i + 1)
    -num / sum

plot(pine_cog(close, 10))
```

リターン

重心。

備考

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.stoch](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.stoch)

### ta.correlation()

相関係数 (CC) です。 2つの系列が [ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma) の値からどの程度乖離する傾向があるかを示します。

構文

```
ta.correlation(source1, source2, length) → series float
```

引数

source1 (series int/float) ソース系列。

source2 (series int/float) ターゲットの系列。

length (series int) 期間 (バーをさかのぼる数)。

リターン

相関係数 (CC)。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security)

### ta.cross()

構文

```
ta.cross(source1, source2) → series bool
```

引数

source1 (series int/float) 最初のデータ系列。

source2 (series int/float) 2番目のデータ系列。

リターン

2つの系列が互いに交差する場合は true、そうでない場合は false です。

こちらもご覧ください

[ta.change](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.change)

### ta.crossover()

現在のバーで `source1` の値が `source2` の値より大きく、前のバーでは `source1` の値が `source2` の値よりも小さかった場合、 `source1` の系列が `source2` の系列の上へクロスしたと定義されます。

構文

```
ta.crossover(source1, source2) → series bool
```

引数

source1 (series int/float) 最初のデータ系列。

source2 (series int/float) 2番目のデータ系列。

リターン

`source1` が `source2` の上へとクロスすれば true、そうでなければ false です。

### ta.crossunder()

現在のバーで `source1` の値が `source2` の値より小さく、前のバーでは `source1` の値が `source2` の値よりも大きかった場合、 `source1` の系列が `source2`の系列の下へクロスしたと定義されます。

構文

```
ta.crossunder(source1, source2) → series bool
```

引数

source1 (series int/float) 最初のデータ系列。

source2 (series int/float) 2番目のデータ系列。

リターン

`source1` が `source2` の下へクロスすれば true、そうでなければ false です。

### ta.cum()

`source` の累計 (合計) 。 `source` の全要素の合計です。

構文

```
ta.cum(source) → series float
```

引数

source (series int/float) 計算に使用されるソース。

リターン

すべての系列の合計。

こちらもご覧ください

[math.sum](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sum)

### ta.dev()

系列とその [ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma) との差を測定します。

構文

```
ta.dev(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

例

```
//@version=5
indicator("ta.dev")
plot(ta.dev(close, 10))

// the same on pine
pine_dev(source, length) =>
    mean = ta.sma(source, length)
    sum = 0.0
    for i = 0 to length - 1
        val = source[i]
        sum := sum + math.abs(val - mean)
    dev = sum/length
plot(pine_dev(close, 10))
```

リターン

過去の `length` バー分の期間における `source` の偏差。

備考

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.variance](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.variance) [ta.stdev](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.stdev)

### ta.dmi()

dmi関数はDMI（方向性指数）を返します。

構文

```
ta.dmi(diLength, adxSmoothing) → [series float, series float, series float]
```

引数

diLength (simple int) DIの期間。

adxSmoothing (simple int) ADXの平滑化期間。

例

```
//@version=5
indicator(title="Directional Movement Index", shorttitle="DMI", format=format.price, precision=4)
len = input.int(17, minval=1, title="DI Length")
lensig = input.int(14, title="ADX Smoothing", minval=1)
[diplus, diminus, adx] = ta.dmi(len, lensig)
plot(adx, color=color.red, title="ADX")
plot(diplus, color=color.blue, title="+DI")
plot(diminus, color=color.orange, title="-DI")
```

リターン

3つのDMIの系列の [タプル](https://www.tradingview.com/pine-script-docs/language/type-system/#tuples): プラスの方向性指数 (+DI) とマイナスの方向性指数 (-DI)、平均方向性指数 (ADX) です。

こちらもご覧ください

[ta.rsi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rsi) [ta.tsi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.tsi) [ta.mfi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.mfi)

### ta.ema()

ema関数は、指数平滑移動平均線を返します。ema では、重み付け係数が指数関数的に減少します。次の計算式を使って算出されます: `EMA = alpha * source + (1 - alpha) * EMA[1]` 、ただし `alpha = 2 / (length + 1)`。

構文

```
ta.ema(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (simple int) バーの数 (期間)。

例

```
//@version=5
indicator("ta.ema")
plot(ta.ema(close, 15))

//the same on pine
pine_ema(src, length) =>
    alpha = 2 / (length + 1)
    sum = 0.0
    sum := na(sum[1]) ? src : alpha * src + (1 - alpha) * nz(sum[1])
plot(pine_ema(close,15))
```

リターン

alpha = 2 / (length + 1) での `source` の指数平滑移動平均線。

備考

この変数／関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する可能性がある事にご注意下さい。

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma) [ta.rma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rma) [ta.wma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.wma) [ta.vwma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.vwma) [ta.swma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.swma) [ta.alma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.alma)

### ta.falling()

`source` の系列が、過去の `length` の期間で下降しているかをテストします。

構文

```
ta.falling(source, length) → series bool
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

リターン

現在の `source` 値が、過去バー `length` 本の期間内でどの `source` 値よりも小さい場合は true、そうでない場合は false を返します。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.rising](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rising)

### ta.highest()

2個の多重定義

指定された過去バーの範囲での最高値。

構文と多重定義

[```\\
ta.highest(length) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highest-0) [```\\
ta.highest(source, length) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highest-1)

引数

length (series int) バーの数 (期間)。

リターン

系列で最も高い値。

備考

引数が2つのバージョンでは、 `source` は処理する値の系列、`length` は過去のバーの数です。

引数が1つのバージョンでは、`length` は過去のバーの数です。アルゴリズムが`source` の系列として high を使用します。

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.lowest](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowest) [ta.lowestbars](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowestbars) [ta.highestbars](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highestbars) [ta.valuewhen](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.valuewhen) [ta.barssince](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.barssince)

### ta.highestbars()

2個の多重定義

指定された過去バーの範囲で最高値のバーのオフセット位置。

構文と多重定義

[```\\
ta.highestbars(length) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highestbars-0) [```\\
ta.highestbars(source, length) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highestbars-1)

引数

length (series int) バーの数 (期間)。

リターン

最高値のバー位置へのオフセット。

備考

引数が2つのバージョンでは、 `source` は処理する値の系列、`length` は過去のバーの数です。

引数が1つのバージョンでは、`length` は過去のバーの数です。アルゴリズムが`source` の系列として high を使用します。

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.lowest](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowest) [ta.highest](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highest) [ta.lowestbars](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowestbars) [ta.barssince](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.barssince) [ta.valuewhen](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.valuewhen)

### ta.hma()

hma関数はハル移動平均線を返します。

構文

```
ta.hma(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (simple int) バーの数。

例

```
//@version=5
indicator("Hull Moving Average")
src = input(defval=close, title="Source")
length = input(defval=9, title="Length")
hmaBuildIn = ta.hma(src, length)
plot(hmaBuildIn, title="Hull MA", color=#674EA7)
```

リターン

'source' の過去 'length' バーのハル移動平均線。

備考

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.ema](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.ema) [ta.rma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rma) [ta.wma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.wma) [ta.vwma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.vwma) [ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma)

### ta.kc()

2個の多重定義

ケルトナーチャネル。ケルトナーチャネルは、中央に移動平均線と上下に一定の距離でチャネルを表示するテクニカル分析インジケーターです。

構文と多重定義

[```\\
ta.kc(series, length, mult) → [series float, series float, series float]\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.kc-0) [```\\
ta.kc(series, length, mult, useTrueRange) → [series float, series float, series float]\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.kc-1)

引数

series (series int/float) 処理を行う系列の値。

length (simple int) バーの数 (期間)。

mult (simple int/float) 標準偏差ファクター。

例

```
//@version=5
indicator("ta.kc")

[middle, upper, lower] = ta.kc(close, 5, 4)
plot(middle, color=color.yellow)
plot(upper, color=color.yellow)
plot(lower, color=color.yellow)

// the same on pine
f_kc(src, length, mult, useTrueRange) =>
    float basis = ta.ema(src, length)
    float span = (useTrueRange) ? ta.tr : (high - low)
    float rangeEma = ta.ema(span, length)
    [basis, basis + rangeEma * mult, basis - rangeEma * mult]

[pineMiddle, pineUpper, pineLower] = f_kc(close, 5, 4, true)

plot(pineMiddle)
plot(pineUpper)
plot(pineLower)
```

リターン

ケルトナーチャネル。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.ema](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.ema) [ta.atr](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.atr) [ta.bb](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.bb)

### ta.kcw()

2個の多重定義

ケルトナーチャネル幅。ケルトナーチャネル幅は上下のケルトナーチャネルの差を中央のチャネルで割ったものです。

構文と多重定義

[```\\
ta.kcw(series, length, mult) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.kcw-0) [```\\
ta.kcw(series, length, mult, useTrueRange) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.kcw-1)

引数

series (series int/float) 処理を行う系列の値。

length (simple int) バーの数 (期間)。

mult (simple int/float) 標準偏差ファクター。

例

```
//@version=5
indicator("ta.kcw")

plot(ta.kcw(close, 5, 4), color=color.yellow)

// the same on pine
f_kcw(src, length, mult, useTrueRange) =>
    float basis = ta.ema(src, length)
    float span = (useTrueRange) ? ta.tr : (high - low)
    float rangeEma = ta.ema(span, length)

    ((basis + rangeEma * mult) - (basis - rangeEma * mult)) / basis

plot(f_kcw(close, 5, 4, true))
```

リターン

ケルトナーチャネル幅。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.kc](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.kc) [ta.ema](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.ema) [ta.atr](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.atr) [ta.bb](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.bb)

### ta.linreg()

線形回帰曲線。ユーザーが定義した期間において指定された価格に最も適合する線です。最小二乗法を用いて算出されます。linreg = intercept + slope \* (length - 1 - offset)。ここで、intercept と slope は `source` 系列の最小二乗法で計算された値となります。

構文

```
ta.linreg(source, length, offset) → series float
```

引数

source (series int/float) ソース系列。

length (series int) バーの数 (期間)。

offset (simple int) オフセット。

リターン

線形回帰曲線。

備考

`source` 系列の `na` の値が計算に含まれ、`na` の結果が生成されます。

### ta.lowest()

2個の多重定義

指定された過去バーの範囲での最安値。

構文と多重定義

[```\\
ta.lowest(length) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowest-0) [```\\
ta.lowest(source, length) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowest-1)

引数

length (series int) バーの数 (期間)。

リターン

系列で最も低い値。

備考

引数が2つのバージョンでは、 `source` は処理する値の系列、`length` は過去のバーの数です。

引数が1つのバージョンでは、`length` は過去のバーの数です。アルゴリズムが`source` の系列として low を使用します。

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.highest](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highest) [ta.lowestbars](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowestbars) [ta.highestbars](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highestbars) [ta.valuewhen](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.valuewhen) [ta.barssince](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.barssince)

### ta.lowestbars()

2個の多重定義

指定された過去バーの範囲で最安値のバーのオフセット位置。

構文と多重定義

[```\\
ta.lowestbars(length) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowestbars-0) [```\\
ta.lowestbars(source, length) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowestbars-1)

引数

length (series int) 過去のバーの数。

リターン

最安値のバー位置へのオフセット。

備考

引数が2つのバージョンでは、 `source` は処理する値の系列、`length` は過去のバーの数です。

引数が1つのバージョンでは、`length` は過去のバーの数です。アルゴリズムが`source` の系列として low を使用します。

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.lowest](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowest) [ta.highest](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highest) [ta.highestbars](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highestbars) [ta.barssince](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.barssince) [ta.valuewhen](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.valuewhen)

### ta.macd()

MACD (移動平均の収束・拡散) 。株価のトレンドの強さ、方向、勢い、期間の変化を明らかにする方法です。

構文

```
ta.macd(source, fastlen, slowlen, siglen) → [series float, series float, series float]
```

引数

source (series int/float) 処理を行う系列の値。

fastlen (simple int) 短期の期間のパラメーター

slowlen (simple int) 長期の期間のパラメーター

siglen (simple int) シグナル期間のパラメーター

例

```
//@version=5
indicator("MACD")
[macdLine, signalLine, histLine] = ta.macd(close, 12, 26, 9)
plot(macdLine, color=color.blue)
plot(signalLine, color=color.orange)
plot(histLine, color=color.red, style=plot.style_histogram)
```

1つの値のみ必要な場合は、以下のようにプレースホルダー '\_' を使用してください:

例

```
//@version=5
indicator("MACD")
[_, signalLine, _] = ta.macd(close, 12, 26, 9)
plot(signalLine, color=color.orange)
```

リターン

3つのMACD系列の [タプル](https://www.tradingview.com/pine-script-docs/language/type-system/#tuples): MACDライン、シグナルライン、ヒストグラムラインです。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma) [ta.ema](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.ema)

### ta.max()

チャートの最初から現在のバーまでの `source` の過去最高値を返します。

構文

```
ta.max(source) → series float
```

引数

source (series int/float) 計算に使用されるソース。

備考

`source` での [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) の発生は無視されます。

### ta.median()

2個の多重定義

系列の中央値を返します。

構文と多重定義

[```\\
ta.median(source, length) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.median-0) [```\\
ta.median(source, length) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.median-1)

引数

source (series int) 処理を行う系列の値。

length (series int) バーの数 (期間)。

リターン

系列の中央値。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

### ta.mfi()

マネーフローインデックス。マネーフローインデックス (MFI) は価格と出来高を利用して、アセットの買われすぎ／売られすぎの状態を判別するテクニカルオシレーターです。

構文

```
ta.mfi(series, length) → series float
```

引数

series (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

例

```
//@version=5
indicator("Money Flow Index")

plot(ta.mfi(hlc3, 14), color=color.yellow)

// the same on pine
pine_mfi(src, length) =>
    float upper = math.sum(volume * (ta.change(src) <= 0.0 ? 0.0 : src), length)
    float lower = math.sum(volume * (ta.change(src) >= 0.0 ? 0.0 : src), length)
    mfi = 100.0 - (100.0 / (1.0 + upper / lower))
    mfi

plot(pine_mfi(hlc3, 14))
```

リターン

マネーフローインデックス。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.rsi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rsi) [math.sum](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.sum)

### ta.min()

チャートの最初から現在のバーまでの `source` の過去最安値を返します。

構文

```
ta.min(source) → series float
```

引数

source (series int/float) 計算に使用されるソース。

備考

`source` での [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) の発生は無視されます。

### ta.mode()

2個の多重定義

系列の [最頻値](https://en.wikipedia.org/wiki/Mode_(statistics)) を返します。同じ頻度の値が複数ある場合は、最小の値を返します。

構文と多重定義

[```\\
ta.mode(source, length) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.mode-0) [```\\
ta.mode(source, length) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.mode-1)

引数

source (series int) 処理を行う系列の値。

length (series int) バーの数 (期間)。

リターン

`source`の最頻値。存在しない場合は、その代わりに最小値を返します。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

### ta.mom()

`source` の価格と過去バー `length` 本分さかのぼった `source` の価格間のモメンタム。これは単純に source - source\[length\] で求められます。

構文

```
ta.mom(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) 現在のバーから前のバーへのオフセット。

リターン

`source` の価格と過去バー `length` 本分さかのぼった `source` の価格間のモメンタム。

備考

`source` 系列の `na` の値が計算に含まれ、`na` の結果が生成されます。

こちらもご覧ください

[ta.change](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.change)

### ta.percentile\_linear\_interpolation()

最も近い2つのランク間の線形補間のメソッドを用いてパーセンタイルを計算します。

構文

```
ta.percentile_linear_interpolation(source, length, percentage) → series float
```

引数

source (series int/float) 処理を行う系列の値 (source)。

length (series int) 過去バーの数（期間）。

percentage (simple int/float) パーセンテージ、0～100の範囲の数値。

リターン

過去の `source` バー分の期間における `length` のパーセンタイル。

備考

このメソッドを用いて計算されたパーセンタイルは、必ずしも入力データセットに属さないことにご注意下さい。

`source` 系列の `na` の値が計算に含まれ、`na` の結果が生成されます。

こちらもご覧ください

[ta.percentile\_nearest\_rank](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.percentile_nearest_rank)

### ta.percentile\_nearest\_rank()

最も近いランクのメソッドを用いてパーセンタイルを計算します。

構文

```
ta.percentile_nearest_rank(source, length, percentage) → series float
```

引数

source (series int/float) 処理を行う系列の値 (source)。

length (series int) 過去バーの数（期間）。

percentage (simple int/float) パーセンテージ、0～100の範囲の数値。

リターン

過去の `source` バー分の期間における `length` のパーセンタイル。

備考

100未満の過去バーの数で最も近いランクのメソッドを用いると、同じ数値が複数のパーセンタイルに使用されることがあります。

最も近いランクのメソッドを使って計算されたパーセンタイルは必ず入力データセットに属します。

100番目のパーセンタイルは、入力データセットの中で最大値となるように定義されます。

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.percentile\_linear\_interpolation](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.percentile_linear_interpolation)

### ta.percentrank()

パーセントランクは、指定された系列の現在の値以下の過去の値がいくつあるかの割合です。

構文

```
ta.percentrank(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

リターン

過去の `length` バー分の期間における `source` のパーセントランク。

備考

`source` 系列の `na` の値が計算に含まれ、`na` の結果が生成されます。

### ta.pivot\_point\_levels()

指定された `type` と `anchor` を使用して、ピボットポイントのレベルを計算します。

構文

```
ta.pivot_point_levels(type, anchor, developing) → array<float>
```

引数

type (series string) ピボットポイントのレベルのタイプです。使用可能な値は、"Traditional"、"Fibonacci"、"Woodie"、"Classic"、"DM"、"Camarilla"です。

anchor (series bool) ピボットポイントの計算がリセットされるトリガー条件です。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合は計算がリセットされ、 [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合は前回リセット時の計算結果が保持されます。

developing (series bool) [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) の場合、前回のアンカー条件が [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の時に計算された値が使われます。アンカー条件が再び [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) になるまで、値は一定です。 [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、ピボットは更新します。つまり、最後のアンカーポイント（アンカー条件が [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) でない場合は最初のバー）と現在のバーの間で更新されるデータで常に再計算されることになります。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("Weekly Pivots", max_lines_count=500, overlay=true)
timeframe = "1W"
typeInput = input.string("Traditional", "Type", options=["Traditional", "Fibonacci", "Woodie", "Classic", "DM", "Camarilla"])
weekChange = timeframe.change(timeframe)
pivotPointsArray = ta.pivot_point_levels(typeInput, weekChange)
if weekChange
    for pivotLevel in pivotPointsArray
        line.new(time, pivotLevel, time + timeframe.in_seconds(timeframe) * 1000, pivotLevel, xloc=xloc.bar_time)
```

リターン

11個のピボットポイントの水準、つまり、\[P, R1, S1, R2, S2, R3, S3, R4, S4, R5, S5\] を表した数値を持つ `array<float>`。指定された `type` に存在しないレベルについては、 [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) 値を返します (たとえば、"DM" では P、R1、S1 のみが計算されます) 。

備考

`type` が "Woodie" に設定されている場合、`developing` パラメーターを `true` に設定することはできません。これはウッディーの計算がその期間の始値に依存しているためで、この場合ピボット値は有無のいずれかであり、更新がないことを意味します。一緒に使用すると、インジケーターはランタイムエラーを返します。

### ta.pivothigh()

2個の多重定義

この関数はピボットハイポイントの価格を返します。 ピボットハイポイントがない場合は'NaN'を返します。

構文と多重定義

[```\\
ta.pivothigh(leftbars, rightbars) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.pivothigh-0) [```\\
ta.pivothigh(source, leftbars, rightbars) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.pivothigh-1)

引数

leftbars (series int/float) 左の期間。

rightbars (series int/float) 右の期間。

例

```
//@version=5
indicator("PivotHigh", overlay=true)
leftBars = input(2)
rightBars=input(2)
ph = ta.pivothigh(leftBars, rightBars)
plot(ph, style=plot.style_cross, linewidth=3, color= color.red, offset=-rightBars)
```

リターン

ポイントの価格または 'NaN'。

備考

パラメーター 'leftbars' や 'rightbars' が系列の場合には、'source' 変数に [max\_bars\_back](https://jp.tradingview.com/pine-script-reference/v5/#fun_max_bars_back) 関数を利用する必要があります。

### ta.pivotlow()

2個の多重定義

この関数はピボットローポイントの価格を返します。 ピボットローポイントがない場合は 'NaN'を返します。

構文と多重定義

[```\\
ta.pivotlow(leftbars, rightbars) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.pivotlow-0) [```\\
ta.pivotlow(source, leftbars, rightbars) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.pivotlow-1)

引数

leftbars (series int/float) 左の期間。

rightbars (series int/float) 右の期間。

例

```
//@version=5
indicator("PivotLow", overlay=true)
leftBars = input(2)
rightBars=input(2)
pl = ta.pivotlow(close, leftBars, rightBars)
plot(pl, style=plot.style_cross, linewidth=3, color= color.blue, offset=-rightBars)
```

リターン

ポイントの価格または 'NaN'。

備考

パラメーター 'leftbars' や 'rightbars' が系列の場合には、'source' 変数に [max\_bars\_back](https://jp.tradingview.com/pine-script-reference/v5/#fun_max_bars_back) 関数を利用する必要があります。

### ta.range()

2個の多重定義

系列の最小値と最大値の差を返します。

構文と多重定義

[```\\
ta.range(source, length) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.range-0) [```\\
ta.range(source, length) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.range-1)

引数

source (series int) 処理を行う系列の値。

length (series int) バーの数 (期間)。

リターン

系列の最小値と最大値の差。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

### ta.rising()

`source` の系列が、過去の `length` の期間で上昇しているかをテストします。

構文

```
ta.rising(source, length) → series bool
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

リターン

現在の `source` 値が、過去バー `length` 本の期間内でどの `source` 値よりも大きい場合は true、そうでない場合は false を返します。

備考

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.falling](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.falling)

### ta.rma()

RSIで使用される移動平均線。係数α= 1 / 期間で計算される指数加重移動平均です。

構文

```
ta.rma(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (simple int) バーの数 (期間)。

例

```
//@version=5
indicator("ta.rma")
plot(ta.rma(close, 15))

//the same on pine
pine_rma(src, length) =>
    alpha = 1/length
    sum = 0.0
    sum := na(sum[1]) ? ta.sma(src, length) : alpha * src + (1 - alpha) * nz(sum[1])
plot(pine_rma(close, 15))
```

リターン

alpha = 1 / `length` での `source` の指数平滑移動平均線。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma) [ta.ema](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.ema) [ta.wma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.wma) [ta.vwma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.vwma) [ta.swma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.swma) [ta.alma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.alma) [ta.rsi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rsi)

### ta.roc()

`source` の現在値と `length` バー前の値の間の変化率 (変化の割合) を計算します。

以下の式で計算されます: 100 \* change(src, length) / src\[length\] 。

構文

```
ta.roc(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

リターン

過去の `length` バー分の期間における `source` のROC (変化率)。

備考

`source` 系列の `na` の値が計算に含まれ、`na` の結果が生成されます。

### ta.rsi()

相対力指数 (RSI) です。これは直近の `length` バーにおける `source` の上昇と下降の変化を `ta.rma()` を使って計算したものです。

構文

```
ta.rsi(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (simple int) バーの数 (期間)。

例

```
//@version=5
indicator("ta.rsi")
plot(ta.rsi(close, 7))

// same on pine, but less efficient
pine_rsi(x, y) =>
    u = math.max(x - x[1], 0) // upward ta.change
    d = math.max(x[1] - x, 0) // downward ta.change
    rs = ta.rma(u, y) / ta.rma(d, y)
    res = 100 - 100 / (1 + rs)
    res

plot(pine_rsi(close, 7))
```

リターン

RSI（相対力指数）。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.rma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rma)

### ta.sar()

パラボリックSAR (パラボリック・ストップ＆リバース) は、J・ウェルズ・ワイルダー・ジュニアによって考案された手法であり、トレード商品の市場価格の方向の潜在的な反転を見い出します。

構文

```
ta.sar(start, inc, max) → series float
```

引数

start (simple int/float) 開始。

inc (simple int/float) インクリメント。

max (simple int/float) 最大値。

例

```
//@version=5
indicator("ta.sar")
plot(ta.sar(0.02, 0.02, 0.2), style=plot.style_cross, linewidth=3)

// The same on Pine Script®
pine_sar(start, inc, max) =>
    var float result = na
    var float maxMin = na
    var float acceleration = na
    var bool isBelow = na
    bool isFirstTrendBar = false

    if bar_index == 1
        if close > close[1]
            isBelow := true
            maxMin := high
            result := low[1]
        else
            isBelow := false
            maxMin := low
            result := high[1]
        isFirstTrendBar := true
        acceleration := start

    result := result + acceleration * (maxMin - result)

    if isBelow
        if result > low
            isFirstTrendBar := true
            isBelow := false
            result := math.max(high, maxMin)
            maxMin := low
            acceleration := start
    else
        if result < high
            isFirstTrendBar := true
            isBelow := true
            result := math.min(low, maxMin)
            maxMin := high
            acceleration := start

    if not isFirstTrendBar
        if isBelow
            if high > maxMin
                maxMin := high
                acceleration := math.min(acceleration + inc, max)
        else
            if low < maxMin
                maxMin := low
                acceleration := math.min(acceleration + inc, max)

    if isBelow
        result := math.min(result, low[1])
        if bar_index > 1
            result := math.min(result, low[2])

    else
        result := math.max(result, high[1])
        if bar_index > 1
            result := math.max(result, high[2])

    result

plot(pine_sar(0.02, 0.02, 0.2), style=plot.style_cross, linewidth=3)
```

リターン

パラボリックSAR。

### ta.sma()

sma関数は、xの直近y値の合計をyで割った移動平均を返します。

構文

```
ta.sma(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

例

```
//@version=5
indicator("ta.sma")
plot(ta.sma(close, 15))

// same on pine, but much less efficient
pine_sma(x, y) =>
    sum = 0.0
    for i = 0 to y - 1
        sum := sum + x[i] / y
    sum
plot(pine_sma(close, 15))
```

リターン

過去の `length` バー分の期間における `source` の単純移動平均線を返します。

備考

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.ema](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.ema) [ta.rma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rma) [ta.wma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.wma) [ta.vwma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.vwma) [ta.swma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.swma) [ta.alma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.alma)

### ta.stdev()

構文

```
ta.stdev(source, length, biased) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

biased (series bool) どの推定を用いるかを決定します。オプション引数です。デフォルトは true です。

例

```
//@version=5
indicator("ta.stdev")
plot(ta.stdev(close, 5))

//the same on pine
isZero(val, eps) => math.abs(val) <= eps

SUM(fst, snd) =>
    EPS = 1e-10
    res = fst + snd
    if isZero(res, EPS)
        res := 0
    else
        if not isZero(res, 1e-4)
            res := res
        else
            15

pine_stdev(src, length) =>
    avg = ta.sma(src, length)
    sumOfSquareDeviations = 0.0
    for i = 0 to length - 1
        sum = SUM(src[i], -avg)
        sumOfSquareDeviations := sumOfSquareDeviations + sum * sum

    stdev = math.sqrt(sumOfSquareDeviations / length)
plot(pine_stdev(close, 5))
```

リターン

標準偏差。

備考

`biased` が true の場合、この関数は母集団全体のバイアスされた推定値を用いて計算し，false の場合はサンプルのバイアスされていない推定値を用います。

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.dev](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.dev) [ta.variance](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.variance)

### ta.stoch()

ストキャスティクスです。以下の計算式で算出されます: 100 \* (close - lowest(low, length)) / (highest(high, length) - lowest(low, length))。

構文

```
ta.stoch(source, high, low, length) → series float
```

引数

source (series int/float) ソース系列。

high (series int/float) 系列の高値。

low (series int/float) 系列の安値。

length (series int) 期間 (バーをさかのぼる数)。

リターン

ストキャスティクス。

備考

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.cog](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.cog)

### ta.supertrend()

スーパートレンドインジケーター。スーパートレンドはトレンドフォローのインジケーターです。

構文

```
ta.supertrend(factor, atrPeriod) → [series float, series float]
```

引数

factor (series int/float) ATRに掛ける乗数。

atrPeriod (simple int) ATRの期間。

例

```
//@version=5
indicator("Pine Script® Supertrend")

[supertrend, direction] = ta.supertrend(3, 10)
plot(direction < 0 ? supertrend : na, "Up direction", color = color.green, style=plot.style_linebr)
plot(direction > 0 ? supertrend : na, "Down direction", color = color.red, style=plot.style_linebr)

// The same on Pine Script®
pine_supertrend(factor, atrPeriod) =>
    src = hl2
    atr = ta.atr(atrPeriod)
    upperBand = src + factor * atr
    lowerBand = src - factor * atr
    prevLowerBand = nz(lowerBand[1])
    prevUpperBand = nz(upperBand[1])

    lowerBand := lowerBand > prevLowerBand or close[1] < prevLowerBand ? lowerBand : prevLowerBand
    upperBand := upperBand < prevUpperBand or close[1] > prevUpperBand ? upperBand : prevUpperBand
    int _direction = na
    float superTrend = na
    prevSuperTrend = superTrend[1]
    if na(atr[1])
        _direction := 1
    else if prevSuperTrend == prevUpperBand
        _direction := close > upperBand ? -1 : 1
    else
        _direction := close < lowerBand ? 1 : -1
    superTrend := _direction == -1 ? lowerBand : upperBand
    [superTrend, _direction]

[Pine_Supertrend, pineDirection] = pine_supertrend(3, 10)
plot(pineDirection < 0 ? Pine_Supertrend : na, "Up direction", color = color.green, style=plot.style_linebr)
plot(pineDirection > 0 ? Pine_Supertrend : na, "Down direction", color = color.red, style=plot.style_linebr)
```

リターン

2つのスーパートレンドの系列の [タプル](https://www.tradingview.com/pine-script-docs/language/type-system/#tuples): スーパートレンドのラインとトレンドの方向。可能な値は1 (下降方向) と -1 (上昇方向) です。

こちらもご覧ください

[ta.macd](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.macd)

### ta.swma()

固定期間の対称加重移動平均: 4\. 重み: \[1/6, 2/6, 2/6, 1/6\]。

構文

```
ta.swma(source) → series float
```

引数

source (series int/float) ソース系列。

例

```
//@version=5
indicator("ta.swma")
plot(ta.swma(close))

// same on pine, but less efficient
pine_swma(x) =>
    x[3] * 1 / 6 + x[2] * 2 / 6 + x[1] * 2 / 6 + x[0] * 1 / 6
plot(pine_swma(close))
```

リターン

対称加重移動平均線。

備考

`source` 系列の `na` の値が計算に含まれ、`na` の結果が生成されます。

こちらもご覧ください

[ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma) [ta.ema](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.ema) [ta.rma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rma) [ta.wma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.wma) [ta.vwma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.vwma) [ta.alma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.alma)

### ta.tr()

構文

```
ta.tr(handle_na) → series float
```

引数

handle\_na (simple bool) NaN値の扱いについて。もしtrueで前日の終値がNaNの場合、trは当日の高値－安値として計算されます。それ以外の場合 (falseの場合) 、trはNaNを返します。また、 [ta.atr](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.atr) は ta.tr(true) を使用しています。

リターン

トゥルーレンジ。math.max(high - low, math.abs(high - close\[1\]), math.abs(low - close\[1\])) となります。

備考

ta.tr(false) は [ta.tr](https://jp.tradingview.com/pine-script-reference/v5/#var_ta.tr) と全く同じです。

こちらもご覧ください

[ta.tr](https://jp.tradingview.com/pine-script-reference/v5/#var_ta.tr) [ta.atr](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.atr)

### ta.tsi()

トゥルー・ストレングス・インデックス。金融商品の基本的なモメンタムの移動平均を使用します。

構文

```
ta.tsi(source, short_length, long_length) → series float
```

引数

source (series int/float) ソース系列。

short\_length (simple int) 短期の期間。

long\_length (simple int) 長期の期間。

リターン

トゥルー・ストレングス・インデックス。\[-1,1\] の範囲の値。

備考

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

### ta.valuewhen()

4個の多重定義

直近のn番目に出現した `source` が true のバーの `condition` 系列の値を返します。

構文と多重定義

[```\\
ta.valuewhen(condition, source, occurrence) → series color\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.valuewhen-0) [```\\
ta.valuewhen(condition, source, occurrence) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.valuewhen-1) [```\\
ta.valuewhen(condition, source, occurrence) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.valuewhen-2) [```\\
ta.valuewhen(condition, source, occurrence) → series bool\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.valuewhen-3)

引数

condition (series bool) 検索する条件。

source (series color) 条件が合致したバーから返される値。

occurrence (simple int) 条件の発生回数。ナンバリングは0から始まり、時間をさかのぼっていきます。つまり、'0' は最も直近の `condition` の発生で、'1' は直近で2番目に発生を意味します。0以上の整数である必要があります。

例

```
//@version=5
indicator("ta.valuewhen")
slow = ta.sma(close, 7)
fast = ta.sma(close, 14)
// Get value of `close` on second most recent cross
plot(ta.valuewhen(ta.cross(slow, fast), close, 1))
```

備考

この関数は、すべてのバーで実行する必要があります。この関数を [for](https://jp.tradingview.com/pine-script-reference/v5/#kw_for) や [while](https://jp.tradingview.com/pine-script-reference/v5/#kw_while) のループ構造の中で使用することは推奨されません。予期しない動作が発生する可能性があります。この関数を使用すると、 [インジケーターのリペイント](https://www.tradingview.com/pine-script-docs/concepts/repainting/) が発生する場合がある点にご注意ください。

こちらもご覧ください

[ta.lowestbars](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowestbars) [ta.highestbars](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highestbars) [ta.barssince](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.barssince) [ta.highest](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.highest) [ta.lowest](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.lowest)

### ta.variance()

分散とは、系列の平均から求められる偏差の二乗の期待値 ( [ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma)) です。一連の数値がその平均からどの程度広がっているかを大まかに測定するものです。

構文

```
ta.variance(source, length, biased) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

biased (series bool) どの推定を用いるかを決定します。オプション引数です。デフォルトは true です。

リターン

過去の `length` バー分の期間における `source` の分散。

備考

`biased` が true の場合、この関数は母集団全体のバイアスされた推定値を用いて計算し，false の場合はサンプルのバイアスされていない推定値を用います。

`source` 系列の `na` の値は無視されます。この関数は `na` ではない値の `length` の量を計算します。

こちらもご覧ください

[ta.dev](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.dev) [ta.stdev](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.stdev)

### ta.vwap()

3個の多重定義

出来高加重平均価格。

構文と多重定義

[```\\
ta.vwap(source) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.vwap-0) [```\\
ta.vwap(source, anchor) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.vwap-1) [```\\
ta.vwap(source, anchor, stdev_mult) → [series float, series float, series float]\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.vwap-2)

引数

source (series int/float) VWAPの算出に使用するソース。

例

```
//@version=5
indicator("Simple VWAP")
vwap = ta.vwap(open)
plot(vwap)
```

例

```
//@version=5
indicator("Advanced VWAP")
vwapAnchorInput = input.string("Daily", "Anchor", options = ["Daily", "Weekly", "Monthly"])
stdevMultiplierInput = input.float(1.0, "Standard Deviation Multiplier")
anchorTimeframe = switch vwapAnchorInput
    "Daily"   => "1D"
    "Weekly"  => "1W"
    "Monthly" => "1M"
anchor = timeframe.change(anchorTimeframe)
[vwap, upper, lower] = ta.vwap(open, anchor, stdevMultiplierInput)
plot(vwap)
plot(upper, color = color.green)
plot(lower, color = color.green)
```

リターン

VWAPの系列、または `stdev_mult` が指定されている場合は \[vwap, upper\_band, lower\_band\] のタプル。

備考

計算が開始されるのは、アンカー条件が初めて [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) になった場合のみです。それまでは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を返します。

こちらもご覧ください

[ta.vwap](https://jp.tradingview.com/pine-script-reference/v5/#var_ta.vwap)

### ta.vwma()

vwma関数は、過去の `length` バー分の期間における `source` の出来高加重移動平均線を返します。これは、sma(source \* volume, length) / sma(volume, length) と同じです。

構文

```
ta.vwma(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

例

```
//@version=5
indicator("ta.vwma")
plot(ta.vwma(close, 15))

// same on pine, but less efficient
pine_vwma(x, y) =>
    ta.sma(x * volume, y) / ta.sma(volume, y)
plot(pine_vwma(close, 15))
```

リターン

過去の `length` バー分の期間における `source` の出来高加重移動平均線を返します。

備考

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma) [ta.ema](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.ema) [ta.rma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rma) [ta.wma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.wma) [ta.swma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.swma) [ta.alma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.alma)

### ta.wma()

wma関数は、過去 `length` バー (期間) における `source` の加重移動平均を返します。wmaでは重み付け係数が算術的に減少します。

構文

```
ta.wma(source, length) → series float
```

引数

source (series int/float) 処理を行う系列の値。

length (series int) バーの数 (期間)。

例

```
//@version=5
indicator("ta.wma")
plot(ta.wma(close, 15))

// same on pine, but much less efficient
pine_wma(x, y) =>
    norm = 0.0
    sum = 0.0
    for i = 0 to y - 1
        weight = (y - i) * y
        norm := norm + weight
        sum := sum + x[i] * weight
    sum / norm
plot(pine_wma(close, 15))
```

リターン

過去の `length` バー分の期間における `source` の加重移動平均線を返します。

備考

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.sma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.sma) [ta.ema](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.ema) [ta.rma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.rma) [ta.vwma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.vwma) [ta.swma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.swma) [ta.alma](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.alma)

### ta.wpr()

ウィリアムズ％R。このオシレーターは、過去 'length' バーの高値及び安値と現在の終値との位置関係を示します。

構文

```
ta.wpr(length) → series float
```

引数

length (series int) バーの数。

例

```
//@version=5
indicator("Williams %R", shorttitle="%R", format=format.price, precision=2)
plot(ta.wpr(14), title="%R", color=color.new(#ff6d00, 0))
```

リターン

ウィリアムズ％R。

備考

`source` 系列の `na` の値は無視されます。

こちらもご覧ください

[ta.mfi](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.mfi) [ta.cmo](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.cmo)


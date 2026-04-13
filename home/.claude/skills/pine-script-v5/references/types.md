## タイプ

### array

変数やパラメーターの型が「配列」であることを明示的に宣言するためのキーワードです。配列オブジェクト (またはID) は、 [array.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new%3Ctype%3E) や [array.from](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from) 関数で作成できます。

例

```
//@version=5
indicator("array", overlay=true)
array<float> a = na
a := array.new<float>(1, close)
plot(array.get(a, 0))
```

備考

配列オブジェクトは常に "series" 形式です。

こちらもご覧ください

[var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) [line](https://jp.tradingview.com/pine-script-reference/v5/#type_line) [label](https://jp.tradingview.com/pine-script-reference/v5/#type_label) [table](https://jp.tradingview.com/pine-script-reference/v5/#type_table) [box](https://jp.tradingview.com/pine-script-reference/v5/#type_box) [array.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new%3Ctype%3E) [array.from](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from)

### bool

変数やパラメーターの型が "bool" (ブール) であることを明示的に宣言するためのキーワードです。"Bool" 変数は [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true)、 [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false)、 [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) のいずれかの値を取ります。

例

```
//@version=5
indicator("bool")
bool b = true    // Same as `b = true`
b := na
plot(b ? open : close)
```

備考

変数宣言における型の明示は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で初期化される場合を除いて任意です。Pine Script® の型については、ユーザーマニュアルの [Type System](https://www.tradingview.com/pine-script-docs/language/type-system/) のページに詳しい説明があります。

こちらもご覧ください

[var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) [varip](https://jp.tradingview.com/pine-script-reference/v5/#kw_varip) [int](https://jp.tradingview.com/pine-script-reference/v5/#type_int) [float](https://jp.tradingview.com/pine-script-reference/v5/#type_float) [color](https://jp.tradingview.com/pine-script-reference/v5/#type_color) [string](https://jp.tradingview.com/pine-script-reference/v5/#type_string) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false)

### box

変数やパラメーターの型が "box" であることを明示的に宣言するためのキーワードです。ボックスオブジェクト（またはID）は [box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) 関数で作成できます。

例

```
//@version=5
indicator("box")
// Empty `box1` box ID.
var box box1 = na
// `box` type is unnecessary because `box.new()` returns a "box" type.
var box2 = box.new(na, na, na, na)
box3 = box.new(time, open, time + 60 * 60 * 24, close, xloc=xloc.bar_time)
```

備考

ボックスオブジェクトは常に "series" 形式です。

こちらもご覧ください

[var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) [line](https://jp.tradingview.com/pine-script-reference/v5/#type_line) [label](https://jp.tradingview.com/pine-script-reference/v5/#type_label) [table](https://jp.tradingview.com/pine-script-reference/v5/#type_table) [box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new)

### chart.point

変数やパラメーターの型を明示的に `chart.point` として宣言する為のキーワードです。スクリプトは、 [chart.point.from\_time](https://jp.tradingview.com/pine-script-reference/v5/#fun_chart.point.from_time)、 [chart.point.from\_index](https://jp.tradingview.com/pine-script-reference/v5/#fun_chart.point.from_index)、 [chart.point.now](https://jp.tradingview.com/pine-script-reference/v5/#fun_chart.point.now)、 [chart.point.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_chart.point.new) 関数を使用して `chart.point` インスタンスを生成します。

フィールド

index (series int) ポイントの x 座標、バーインデックスの値として示されます。

time (series float) ポイントの x 座標、ミリ秒単位におけるUNIX時間の値として示されます。

price (series float) ポイントの y 座標。

こちらもご覧ください

[polyline](https://jp.tradingview.com/pine-script-reference/v5/#type_polyline)

### color

変数やパラメーターの型が "color" であることを明示的に宣言するためのキーワードです。

例

```
//@version=5
indicator("color", overlay = true)

color textColor = color.green
color labelColor = #FF000080  // Red color (FF0000) with 50% transparency (80 which is half of FF).
if barstate.islastconfirmedhistory
    label.new(bar_index, high, text = "Label", color = labelColor, textcolor = textColor)

// When declaring variables with color literals, built-in constants(color.green) or functions (color.new(), color.rgb()), the "color" keyword for the type can be omitted.
c = color.rgb(0,255,0,0)
plot(close, color = c)
```

備考

色のリテラルは、#RRGGBB または #RRGGBBAA の形式を取ります。文字のペアは、00～FFの16進数（10進数では0～255）を表し、RR、GG、BBのペアは、色の赤、緑、青の成分の値を表しています。AA は色の透明度（アルファ成分）を表すオプションの値で、00 は透明、FF は不透明を表します。AA部分が指定されない場合は、FFが使用されます。16進数の文字は大文字でも小文字でも構いません。

変数宣言における型の明示は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で初期化される場合を除いて任意です。Pine Script® の型については、ユーザーマニュアルの [Type System](https://www.tradingview.com/pine-script-docs/language/type-system/) のページに詳しい説明があります。

こちらもご覧ください

[var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) [varip](https://jp.tradingview.com/pine-script-reference/v5/#kw_varip) [int](https://jp.tradingview.com/pine-script-reference/v5/#type_int) [float](https://jp.tradingview.com/pine-script-reference/v5/#type_float) [string](https://jp.tradingview.com/pine-script-reference/v5/#type_string) [color.rgb](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.rgb) [color.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_color.new)

### const

キーワード `const` は、変数とエクスポートされていない関数のパラメータに "const" 型修飾子を明示的に割り当てます。"series" 修飾子を伴う変数やパラメータは、コンパイル時に設定された値を参照しますが、スクリプトの実行中にこの値が変更されることはありません。

変数の宣言においては、通常、コンパイラーは変数への代入値に基づいて自動的に修飾された型を推測することができ、必要に応じて変数の修飾子をより強力なものへと自動的に変更することができます。型修飾子のヒエラルキーは、"const" < "input" < "simple" < "series" であり、"const" はこの中で最も弱いものになっています。

キーワード `const` で変数を明示的に宣言すると型修飾子が "const" に制限されるため、変数はこれよりも強い修飾子（たとえば "input"）の値を受け入れることができなくなります。変数に代入された値についても、スクリプトの実行中はどの時点であっても変更することはできません。

このキーワードを使って型修飾子を指定する場合は、typeキーワードも使用して許容される型を宣言する必要があります。

構文

```
[method ]<functionName>([const <paramType> ]<paramName>[ = <defaultValue>])

[var/varip ]const <variableType> <variableName> = <variableValue>
```

例

```
//@version=5
indicator("custom plot title")

//@function Concatenates two "const string" values.
concatStrings(const string x, const string y) =>
    const string result = x + y

//@variable The title of the plot.
const string myTitle = concatStrings("My ", "Plot")

plot(close, myTitle)
```

例

```
//@version=5
indicator("can't assign input to const")

//@variable A variable declared as "const float" that attempts to assign the result of `input.float()` as its value.
//          This declaration causes an error. The "input float" qualified type is stronger than "const float".
const float myVar = input.float(2.0)

plot(myVar)
```

備考

詳細については、ユーザーマニュアルの [型修飾子 (type qualifiers)](https://www.tradingview.com/pine-script-docs/language/type-system/#qualifiers) の項をご参照ください。

こちらもご覧ください

[simple](https://jp.tradingview.com/pine-script-reference/v5/#type_simple) [series](https://jp.tradingview.com/pine-script-reference/v5/#type_series)

### float

変数やパラメーターの型が "float" (浮動小数点) であることを明示的に宣言するためのキーワードです。

例

```
//@version=5
indicator("float")
float f = 3.14    // Same as `f = 3.14`
f := na
plot(f)
```

備考

変数宣言における型の明示は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で初期化される場合を除いて任意です。Pine Script® の型については、ユーザーマニュアルの [Type System](https://www.tradingview.com/pine-script-docs/language/type-system/) のページに詳しい説明があります。

こちらもご覧ください

[var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) [varip](https://jp.tradingview.com/pine-script-reference/v5/#kw_varip) [int](https://jp.tradingview.com/pine-script-reference/v5/#type_int) [bool](https://jp.tradingview.com/pine-script-reference/v5/#type_bool) [color](https://jp.tradingview.com/pine-script-reference/v5/#type_color) [string](https://jp.tradingview.com/pine-script-reference/v5/#type_string)

### int

変数やパラメーターの型が "int" (整数) であることを明示的に宣言するためのキーワードです。

例

```
//@version=5
indicator("int")
int i = 14    // Same as `i = 14`
i := na
plot(i)
```

備考

変数宣言における型の明示は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で初期化される場合を除いて任意です。Pine Script® の型については、ユーザーマニュアルの [Type System](https://www.tradingview.com/pine-script-docs/language/type-system/) のページに詳しい説明があります。

こちらもご覧ください

[var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) [varip](https://jp.tradingview.com/pine-script-reference/v5/#kw_varip) [float](https://jp.tradingview.com/pine-script-reference/v5/#type_float) [bool](https://jp.tradingview.com/pine-script-reference/v5/#type_bool) [color](https://jp.tradingview.com/pine-script-reference/v5/#type_color) [string](https://jp.tradingview.com/pine-script-reference/v5/#type_string)

### label

変数やパラメーターの型が "label" であることを明示的に宣言するためのキーワードです。ラベルオブジェクト（またはID）は [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) 関数で作成できます。

例

```
//@version=5
indicator("label")
// Empty `label1` label ID.
var label label1 = na
// `label` type is unnecessary because `label.new()` returns "label" type.
var label2 = label.new(na, na, na)
if barstate.islastconfirmedhistory
    label3 = label.new(bar_index, high, text = "label3 text")
```

備考

ラベルオブジェクトは常に "series" 形式です。

こちらもご覧ください

[var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) [line](https://jp.tradingview.com/pine-script-reference/v5/#type_line) [box](https://jp.tradingview.com/pine-script-reference/v5/#type_box) [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### line

変数やパラメーターの型が "line" であることを明示的に宣言するためのキーワードです。ラインオブジェクト（またはID）は [line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) 関数で作成できます。

例

```
//@version=5
indicator("line")
// Empty `line1` line ID.
var line line1 = na
// `line` type is unnecessary because `line.new()` returns "line" type.
var line2 = line.new(na, na, na, na)
line3 = line.new(bar_index - 1, high, bar_index, high, extend = extend.right)
```

備考

ラインオブジェクトは常に "series" 形式です。

こちらもご覧ください

[var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) [label](https://jp.tradingview.com/pine-script-reference/v5/#type_label) [box](https://jp.tradingview.com/pine-script-reference/v5/#type_box) [line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### linefill

変数やパラメーターの型が "linefill" であることを明示的に宣言するためのキーワードです。linefillオブジェクト（またはID）は [linefill.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_linefill.new) 関数で作成できます。

例

```
//@version=5
indicator("linefill", overlay=true)
// Empty `linefill1` line ID.
var linefill linefill1 = na
// `linefill` type is unnecessary because `linefill.new()` returns "linefill" type.
var linefill2 = linefill.new(na, na, na)

if barstate.islastconfirmedhistory
    line1 = line.new(bar_index - 10, high+1, bar_index, high+1, extend = extend.right)
    line2 = line.new(bar_index - 10, low+1, bar_index, low+1, extend = extend.right)
    linefill3 = linefill.new(line1, line2, color = color.new(color.green, 80))
```

備考

linefillオブジェクトは常に "series" 形式です。

こちらもご覧ください

[var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) [line](https://jp.tradingview.com/pine-script-reference/v5/#type_line) [label](https://jp.tradingview.com/pine-script-reference/v5/#type_label) [table](https://jp.tradingview.com/pine-script-reference/v5/#type_table) [box](https://jp.tradingview.com/pine-script-reference/v5/#type_box) [linefill.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_linefill.new)

### map

変数やパラメーターの "map" 型を明示的に宣言するためのキーワードです。マップオブジェクト（またはID）は、 [map.new<type,type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.new%3Ctype,type%3E) 関数で作成できます。

例

```
//@version=5
indicator("map", overlay=true)
map<int, float> a = na
a := map.new<int, float>()
a.put(bar_index, close)
label.new(bar_index, a.get(bar_index), "Current close")
```

備考

マップオブジェクトは常に [series](https://www.tradingview.com/pine-script-docs/language/type-system/#series) 形式です。

こちらもご覧ください

[map.new<type,type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.new%3Ctype,type%3E)

### matrix

変数やパラメーターの型が "matrix" であることを明示的に宣言するためのキーワードです。行列オブジェクト (またはID) は [matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) 関数で作成できます。

例

```
//@version=5
indicator("matrix example")

// Create `m1` matrix of `int` type.
matrix<int> m1 = matrix.new<int>(2, 3, 0)

// `matrix<int>` is unnecessary because the `matrix.new<int>()` function returns an `int` type matrix object.
m2 = matrix.new<int>(2, 3, 0)

// Display matrix using a label.
if barstate.islastconfirmedhistory
    label.new(bar_index, high, str.tostring(m2))
```

備考

行列オブジェクトは常に "series" 形式です。

こちらもご覧ください

[var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) [matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [array](https://jp.tradingview.com/pine-script-reference/v5/#type_array)

### polyline

変数やパラメーターの型を明示的に `polyline` として宣言する為のキーワードです。スクリプトは、 [polyline.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_polyline.new) 関数を使用して `polyline` インスタンスを生成します。

こちらもご覧ください

[chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point)

### series

キーワード `series` は、変数と関数のパラメータに "series" 型修飾子を明示的に割り当てます。"series" 修飾子を使用する変数やパラメータは、スクリプトの実行中に変更される値を参照することができます。

ライブラリのエクスポート関数のパラメータを宣言する場合、普通であればキーワード `series` を明示的に使用する必要はありません。通常では、パラメータが修飾値として "series" と "simple" のどちらに対応しているかをコンパイラが自動検出できるからです。デフォルトでは、エクスポートされる関数のパラメータはすべて、可能な限り "series" に修飾されます。

変数の宣言においては、通常、コンパイラーは変数への代入値に基づいて自動的に修飾された型を推測することができ、必要に応じて変数の修飾子をより強力なものへと自動的に変更することができます。型修飾子のヒエラルキーは、"const" < "input" < "simple" < "series" であり、"series" はこの中で最も強いものになっています。

キーワード `series` で変数を明示的に宣言すると型修飾子が "series" に制限されるため、これよりも弱い修飾子（"const"、"input" あるいは "simple"）の値を必要とする変数や関数のパラメータに対して、スクリプトは値を渡せなくなります。

このキーワードを使って型修飾子を指定する場合は、typeキーワードも使用して許容される型を宣言する必要があります。

構文

```
export [method ]<functionName>([[series ]<paramType>] <paramName>[ = <defaultValue>])

[method ]<functionName>([series <paramType> ]<paramName>[ = <defaultValue>])

[var/varip ]series <variableType> <variableName> = <variableValue>
```

例

```
//@version=5
//@description A library with custom functions.
library("CustomFunctions", overlay = true)

//@function Finds the highest `source` value over `length` bars, filtered by the `cond` condition.
export conditionalHighest(series float source, series bool cond, series int length) =>
    //@variable The highest `source` value from when the `cond` was `true` over `length` bars.
    series float result = na
    // Loop to find the highest value.
    for i = 0 to length - 1
        if cond[i]
            value   = source[i]
            result := math.max(nz(result, value), value)
    // Return the `result`.
    result

//@variable Is `true` once every five bars.
series bool condition = bar_index % 5 == 0

//@variable The highest `close` value from every fifth bar over the last 100 bars.
series float hiValue = conditionalHighest(close, condition, 100)

plot(hiValue)
bgcolor(condition ? color.new(color.teal, 80) : na)
```

例

```
//@version=5
indicator("series variable not allowed")

//@variable A variable declared as "series int" with a value of 5.
series int myVar = 5

// This call causes an error.
// The `histbase` accepts "input int/float". It can't accept the stronger "series int" qualified type.
plot(close, style = plot.style_histogram, histbase = myVar)
```

備考

詳細については、ユーザーマニュアルの [型修飾子 (type qualifiers)](https://www.tradingview.com/pine-script-docs/language/type-system/#qualifiers) の項をご参照ください。

こちらもご覧ください

[simple](https://jp.tradingview.com/pine-script-reference/v5/#type_simple) [const](https://jp.tradingview.com/pine-script-reference/v5/#type_const)

### simple

キーワード `simple` は、変数と関数のパラメータに "simple " 型修飾子を明示的に割り当てます。"simple" 修飾子を使用する変数やパラメータは、スクリプトの実行開始時に設定された値を参照することができますが、この値が後で変更されることはありません。

ライブラリは可能な限りすべてのパラメータをデフォルトで自動的に "simple" として修飾するため、ライブラリにあるエクスポートされた関数のパラメータを "simple" またはそれよりも弱い型修飾子を持つ値だけで制限するには、パラメーターの宣言時に `simple` キーワードを使用する必要があります。関数が "simple" 引数を受け取るように明示的に制限することで、実行する操作によっては "simple" 値を返すことができるようになり、 "series" 引数を許可しない内蔵関数のパラメータを使用できるようになります。

変数の宣言においては、通常、コンパイラーは変数への代入値に基づいて自動的に修飾された型を推測することができ、必要に応じて変数の修飾子をより強力なものへと自動的に変更することができます。型修飾子のヒエラルキーは、"const" < "input" < "simple" < "series" であり、"simple" は "input" や "const" よりも強くなっています。

キーワード `simple` で変数を明示的に宣言すると型修飾子が "simple" に制限されるため、これよりも弱い修飾子（"const" や "input"）の値を必要とする変数や関数のパラメータに対して、スクリプトは値を渡せなくなります。また、キーワード `simple` で明示的に宣言された変数に "series" 値を代入することもできません。

このキーワードを使って型修飾子を指定する場合は、typeキーワードも使用して許容される型を宣言する必要があります。

構文

```
export [method ]<functionName>([[simple ]<paramType>] <paramName>[ = <defaultValue>])

[method ]<functionName>([simple <paramType> ]<paramName>[ = <defaultValue>])

[var/varip ]simple <variableType> <variableName> = <variableValue></variableValue>
```

例

```
//@version=5
//@description A library with custom functions.
library("CustomFunctions", overlay = true)

//@function         Calculates the length values for a ribbon of four EMAs by multiplying the `baseLength`.
//@param baseLength The initial EMA length. Requires "simple int" because you can't use "series int" in `ta.ema()`.
//@returns          A tuple of length values.
export ribbonLengths(simple int baseLength) =>
    simple int length1 = baseLength
    simple int length2 = baseLength * 2
    simple int length3 = baseLength * 3
    simple int length4 = baseLength * 4
    [length1, length2, length3, length4]

// Get a tuple of "simple int" length values.
[len1, len2, len3, len4] = ribbonLengths(14)

// Plot four EMAs using the values from the tuple.
plot(ta.ema(close, len1), "EMA 1", color = color.red)
plot(ta.ema(close, len2), "EMA 1", color = color.orange)
plot(ta.ema(close, len3), "EMA 1", color = color.green)
plot(ta.ema(close, len4), "EMA 1", color = color.blue)
```

例

```
//@version=5
indicator("can't change simple to series")

//@variable A variable declared as "simple float" with a value of 5.0.
simple float myVar = 5.0

// This reassignment causes an error.
// The `close` variable returns a "series float" value. Since `myVar` is restricted to "simple" values, it cannot
// change its qualifier to "series".
myVar := close

plot(myVar)
```

備考

詳細については、ユーザーマニュアルの [型修飾子 (type qualifiers)](https://www.tradingview.com/pine-script-docs/language/type-system/#qualifiers) の項をご参照ください。

こちらもご覧ください

[series](https://jp.tradingview.com/pine-script-reference/v5/#type_series) [const](https://jp.tradingview.com/pine-script-reference/v5/#type_const)

### string

変数やパラメーターの型が "string" であることを明示的に宣言するためのキーワードです。

例

```
//@version=5
indicator("string")
string s = "Hello World!"    // Same as `s = "Hello world!"`
// string s = na // same as ""
plot(na, title=s)
```

備考

変数宣言における型の明示は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で初期化される場合を除いて任意です。Pine Script® の型については、ユーザーマニュアルの [Type System](https://www.tradingview.com/pine-script-docs/language/type-system/) のページに詳しい説明があります。

こちらもご覧ください

[var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) [varip](https://jp.tradingview.com/pine-script-reference/v5/#kw_varip) [int](https://jp.tradingview.com/pine-script-reference/v5/#type_int) [float](https://jp.tradingview.com/pine-script-reference/v5/#type_float) [bool](https://jp.tradingview.com/pine-script-reference/v5/#type_bool) [str.tostring](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tostring) [str.format](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.format)

### table

変数やパラメーターの型が "table" であることを明示的に宣言するためのキーワードです。テーブルオブジェクト（またはID）は [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) 関数で作成できます。

例

```
//@version=5
indicator("table")
// Empty `table1` table ID.
var table table1 = na
// `table` type is unnecessary because `table.new()` returns "table" type.
var table2 = table.new(position.top_left, na, na)

if barstate.islastconfirmedhistory
    var table3 = table.new(position = position.top_right, columns = 1, rows = 1, bgcolor = color.yellow, border_width = 1)
    table.cell(table_id = table3, column = 0, row = 0, text = "table3 text")
```

備考

テーブルオブジェクトは常に "series" 形式です。

こちらもご覧ください

[var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) [line](https://jp.tradingview.com/pine-script-reference/v5/#type_line) [label](https://jp.tradingview.com/pine-script-reference/v5/#type_label) [box](https://jp.tradingview.com/pine-script-reference/v5/#type_box) [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new)


## キーワード

### and

論理積 (AND)。ブール式に利用できます。

構文

```
expr1 and expr2
```

リターン

ブール値、もしくはブール値の系列。

### enum

このキーワードによって列挙型 (enum) の作成が可能になります。列挙型は、すでに定義された定数のグループを保持するユニークな構造体です。

enumの各フィールドには `const string` のタイトルがあります。スクリプトでユーザー定義型のフィールドにアクセスする際と同様、ドット記法を使ってenumのフィールドにアクセスすることができます。

各フィールドは `enumName` 列挙型の値を表します。スクリプトで `enum` の各フィールドをオプションの `const string` タイトルで宣言することができます。フィールドのタイトルが指定されていない場合、そのタイトルはフィールド名の文字列表現になります。enumフィールドのタイトルを取得するには [str.tostring](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tostring) を使用します。

構文

```
[export ]enum <enumName>
<field_1> [= <title_1>]
<field_2> [= <title_2>]
...
<field_N> [= <title_N>]
```

[input.enum](https://jp.tradingview.com/pine-script-reference/v5/#fun_input.enum) 関数を使うと、enumを使ってドロップダウン入力を素早く作ることができます。ドロップダウンに表示されるオプションは、enumフィールドのタイトルを表します。

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

さらに、コレクションの型のテンプレート中でenumを使用して、要素として許可する値に制限を設けることができます。型のテンプレートの中でenumを使用すると、コレクションは指定されたenumに属するフィールドのみを受け入れます。

例

```
//@version=5
indicator("Map with enum keys")

//@enum        Contains fields with titles representing ticker IDs.
//@field aapl  Has an Apple ticker ID as its title.
//@field tsla  Has a Tesla ticker ID as its title.
//@field amzn  Has an Amazon ticker ID as its title.
enum symbols
    aapl = "NASDAQ:AAPL"
    tsla = "NASDAQ:TSLA"
    amzn = "NASDAQ:AMZN"

//@variable A map that accepts fields from the `symbols` enum as keys and "float" values.
map<symbols, float> data = map.new<symbols, float>()
// Put key-value pairs into the `data` map.
data.put(symbols.aapl, request.security(str.tostring(symbols.aapl), timeframe.period, close))
data.put(symbols.tsla, request.security(str.tostring(symbols.tsla), timeframe.period, close))
data.put(symbols.amzn, request.security(str.tostring(symbols.amzn), timeframe.period, close))
// Plot the value from the `data` map accessed by the `symbols.aapl` key.
plot(data.get(symbols.aapl))
```

### export

ライブラリにおいて、そのライブラリをインポートする他のスクリプトから、利用可能な関数の宣言やユーザー定義型の宣言をプレフィックスとするために使用されます。

例

```
//@version=5
//@description Library of debugging functions.
library("Debugging_library", overlay = true)
//@function Displays a string as a table cell for debugging purposes.
//@param txt String to display.
//@returns Void.
export print(string txt) =>
    var table t = table.new(position.middle_right, 1, 1)
    table.cell(t, 0, 0, txt, bgcolor = color.yellow)
// Using the function from inside the library to show an example on the published chart.
// This has no impact on scripts using the library.
print("Library Test")
```

備考

各ライブラリに少なくとも1つの、エクスポートされた関数またはユーザー定義型 (UDT) が存在する必要があります。

エクスポートされた関数は、グローバルスコープからの変数が、配列、可変変数（`:=` で再割り当てされたもの）または 'input' 形式の変数である場合、その変数を使用することができません。

エクスポートされた関数は `request.*()` 関数を使用することができません。

エクスポートされた関数は、各引数の型を明示的に宣言する必要があり、すべてのパラメータを関数本体で使用する必要があります。デフォルトでは、エクスポートされた関数に渡される引数はすべて、関数のシグネチャで明示的に [series](https://jp.tradingview.com/pine-script-reference/v5/#type_series) として指定されていないかぎり、 [simple](https://jp.tradingview.com/pine-script-reference/v5/#type_simple) 形式になります。

＠description、@function、@param、@type、@field、および @returns といったコンパイラーアノテーションは、ライブラリの説明やリリースノートの自動生成、およびPine Script® エディタのツールチップで使用されます。

こちらもご覧ください

[library](https://jp.tradingview.com/pine-script-reference/v5/#fun_library) [import](https://jp.tradingview.com/pine-script-reference/v5/#kw_import) [simple](https://jp.tradingview.com/pine-script-reference/v5/#type_simple) [series](https://jp.tradingview.com/pine-script-reference/v5/#type_series) [type](https://jp.tradingview.com/pine-script-reference/v5/#kw_type)

### for

'for' 構文で、複数のステートメントを繰り返し実行することができます。

構文

```
[var_declaration =] for counter = from_num to to_num [by step_num]
    statements | continue | break
    return_expression
```

**var\_declaration** ー オプションの変数宣言で、ループの return\_expression の値が割り当てられます。

**counter** ー ループのカウンタの値を保持する変数で、ループの繰り返しごとに、1または step\_num の値だけ増加／減少されます。

**from\_num** ー カウンタの開始の値。"series int/float" の値／式が使用可能です。

**to\_num** ー カウンタの終了の値。カウンタが to\_num よりも大きくなると (from\_num > to\_num の場合は to\_num よりも小さくなると) ループが終了します。"series int/float" の値／式も使用できますが、ループの初回反復時にのみ評価されます。

**step\_num** ー カウンタのインクリメント／デクリメント値。オプションです。デフォルト値は、from\_num と to\_num のどちらが大きいかによって +1 または -1 となっています。値を使用する場合、カウンタは from\_num と to\_num のどちらが大きいかによって増加／減少されるので、step\_num の ±符号もオプションとなります。

**statements \| continue \| break** ー 任意の数のステートメント、または「continue」や「break」キーワードを、スペース4つまたはタブでインデントしたものです。

**return\_expression** ー ループの戻り値です。var\_declaration に変数が存在する場合は、その変数へ代入されます。「continue」や 「break」キーワードによってループが終了した場合、 ループの戻り値は、ループが終了する前に、最後に値が代入された変数となります。

**continue** ー ループの中でのみ使用できるキーワードで、そのループにおいて次の反復を実行します。

**break** ー ループを終了するキーワードです。

例

```
//@version=5
indicator("for")
// Here, we count the quantity of bars in a given 'lookback' length which closed above the current bar's close
qtyOfHigherCloses(lookback) =>
    int result = 0
    for i = 1 to lookback
        if close[i] > close
            result += 1
    result
plot(qtyOfHigherCloses(14))
```

例

```
//@version=5
indicator("`for` loop with a step")

a = array.from(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
sum = 0.0

for i = 0 to 9 by 5
    // Because the step is set to 5, we are adding only the first (0) and the sixth (5) value from the array `a`.
    sum += array.get(a, i)

plot(sum)
```

こちらもご覧ください

[for...in](https://jp.tradingview.com/pine-script-reference/v5/#kw_for...in) [while](https://jp.tradingview.com/pine-script-reference/v5/#kw_while)

### for...in

`for...in` 構文は、配列の各要素に対して、いくつかの宣言を繰り返し実行することができます。これは1つの引数 `array_element` 、もしくは2つの引数 `[index, array_element]` のいずれかと使用が可能です。2番目の形式は、ループの機能に影響しません。これはタプル冒頭の変数にある、実行中のインデックスを追跡します。

構文

```
[var_declaration =] for array_element in array_id
    statements | continue | break
    return_expression

[var_declaration =] for [index, array_element] in array_id
    statements | continue | break
    return_expression
```

**var\_declaration** ー オプションの変数宣言で、ループの `return_expression` の値が割り当てられます。

**index** ー 実行中のインデックスを追跡するオプションの変数です。インデックスは0から始まります。この変数は、ループの内部では不変です。使用する場合は、 `array_element` を含むタプルに格納する必要があります。

**array\_element** ー ループ内で処理される、連続した各配列の要素を格納する変数です。この変数はループ内では不変です。

**array\_id** ー ループが反復がされる配列のID。

**statements \| continue \| break** ー 任意の数のステートメント、または「continue」や「break」キーワードを、スペース4つまたはタブでインデントしたものです。

**return\_expression** ー ループの戻り値です。`var_declaration` に変数が存在する場合は、その変数へ代入されます。「continue」や 「break」キーワードによってループが終了した場合、ループの戻り値は、ループが終了する前に、最後に値が代入された変数となります。

**continue** ー ループの中でのみ使用できるキーワードで、そのループにおいて次の反復を実行します。

**break** ー ループを終了するキーワードです。

この構造で要素の反復処理が行われている間でも、スクリプトによって配列や行列を変更することができます。ただし、マップについては、そのキーと値のペアをループしている間の変更はできません。`for...in` ループ内でマップを変更するには、コピーのキーと値のペア、もしくは [map.keys](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.keys) 配列の要素を反復処理します。

以下は、 `for...in` の１つの引数を使用して、「終値」のSMAよりも大きいOHLC値のバーがいくつあるかを定義しています:

例

```
//@version=5
indicator("for...in")
// Here we determine on each bar how many of the bar's OHLC values are greater than the SMA of 'close' values
float[] ohlcValues = array.from(open, high, low, close)
qtyGreaterThan(value, array) =>
    int result = 0
    for currentElement in array
        if currentElement > value
            result += 1
        result
plot(qtyGreaterThan(ta.sma(close, 20), ohlcValues))
```

以下は、 [for...in](https://jp.tradingview.com/pine-script-reference/v5/#kw_for...in) の２つの引数を使用して、 `isPos` 配列で一致する値が正の場合、 `true` 配列の値を `valuesArray` に設定しています:

例

```
//@version=5
indicator("for...in")
var valuesArray = array.from(4, -8, 11, 78, -16, 34, 7, 99, 0, 55)
var isPos = array.new_bool(10, false)

for [index, value] in valuesArray
    if value > 0
        array.set(isPos, index, true)

if barstate.islastconfirmedhistory
    label.new(bar_index, high, str.tostring(isPos))
```

行列の行を配列として繰り返し処理します。

例

```
//@version=5
indicator("`for ... in` matrix Example")

// Create a 2x3 matrix with values `4`.
matrix1 = matrix.new<int>(2, 3, 4)

sum = 0.0
// Loop through every row of the matrix.
for rowArray in matrix1
    // Sum values of the every row
    sum += array.sum(rowArray)

plot(sum)
```

こちらもご覧ください

[for](https://jp.tradingview.com/pine-script-reference/v5/#kw_for) [while](https://jp.tradingview.com/pine-script-reference/v5/#kw_while) [array.sum](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sum) [array.min](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min) [array.max](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.max)

### if

If文は、式の条件が満たされたときに実行しなければならない文のブロックを定義します。

if文にアクセスして使用するには、コードの最初の行にPine Script®の言語バージョン2以上を指定する必要があります。例: //@version=5

Pine Script® 言語のバージョン4では "else if" 構文が使用可能です。

一般コードフォーム:

構文

```
var_declarationX = if condition
    var_decl_then0
    var_decl_then1
    …
    var_decl_thenN
else if [optional block]
    var_decl_else0
    var_decl_else1
    …
    var_decl_elseN
else
    var_decl_else0
    var_decl_else1
    …
    var_decl_elseN
    return_expression_else
```

解説:

**var\_declarationX** — この変数は、if文の値を取得します。

**condition** — 条件が true の場合、'then' のブロック (var\_decl\_then0, var\_decl\_then1 など) のロジックが使用されます。

条件が false の場合、'else' のブロック (var\_decl\_else0, var\_decl\_else1 など) のロジックが使用されます。

**return\_expression\_then**, **return\_expression\_else** — 「thenのブロック」または「elseのブロック」の最後の式は、ステートメントの最終値を返します。変数の宣言が最後にある場合、その値が結果の値になります。

if文の戻り値の型は、return\_expression\_then型かreturn\_expression\_else型かによって異なります（型が一致する必要があります。つまり、elseブロックに文字列の値がある場合、thenから整数値を返すことはできません）。

例

```
//@version=5
indicator("if")
// This code compiles
x = if close > open
    close
else
    open

// This code doesn’t compile
// y = if close > open
//     close
// else
//     "open"
plot(x)
```

`else` のブロックは省略することができます。この場合、条件が false であれば、変数 var\_declarationX に “empty” 値 (na, false, または "") が代入されます。

例

```
//@version=5
indicator("if")
x = if close > open
    close
// If current close > current open, then x = close.
// Otherwise the x = na.
plot(x)
```

複数の"else if" ブロックを使用することも、まったく使用しないことも可能です。ブロック “then”, "else if", "else" はスペース4つでシフトされます:

例

```
//@version=5
indicator("if")
x = if open > close
    5
else if high > low
    close
else
    open
plot(x)
```

結果として得られる `if` 文の値を無視することができます("var\_declarationX ="は省略可能です)。式の副次効果が必要な場合、例えばストラテジートレードの場合などに便利です。

例

```
//@version=5
strategy("if")
if (ta.crossover(high, low))
    strategy.entry("BBandLE", strategy.long, stop=low, oca_name="BollingerBands", oca_type=strategy.oca.cancel, comment="BBandLE")
else
    strategy.cancel(id="BBandLE")
```

if文の中にif文を含むことができます。

例

```
//@version=5
indicator("if")
float x = na
if close > open
    if close > close[1]
        x := close
    else
        x := close[1]
else
    x := open
plot(x)
```

### import

外部の [library](https://jp.tradingview.com/pine-script-reference/v5/#fun_library) をスクリプトに読み込み、その関数を名前空間にバインドするために使用します。インポートするスクリプトは、インジケーター、ストラテジー、または別のライブラリのいずれかになります。インポートする前に、ライブラリを（非公開または公開で）投稿する必要があります。

構文

```
import {username}/{libraryName}/{libraryVersion} as {alias}
```

引数

username (literal string) ライブラリ作成者のユーザー名。

libraryName (literal string) インポートされたライブラリの名前。作成者がライブラリスクリプトで使用した `title` 引数に対応しています。

libraryVersion (literal int) インポートしたライブラリのバージョンの番号。

alias (literal string) ライブラリの関数参照のために名前空間として使用される識別子の中で数値以外のもの。オプションです。デフォルトは文字列 `libraryName` です。

例

```
//@version=5
indicator("num_methods import")
// Import the first version of the username’s "num_methods" library and assign it to the "m" namespace",
import username/num_methods/1 as m
// Call the “sinh()” function from the imported library
y = m.sinh(3.14)
// Plot value returned by the "sinh()" function",
plot(y)
```

備考

math.\* や strategy.\* など内蔵の名前空間を置き換えるエイリアスの使用は可能ですが、ライブラリに Pine Script® の内蔵関数をシャドウする関数名が含まれている場合、内蔵関数が使用できなくなります。同じバージョンのライブラリは一度しかインポートできません。エイリアスは、インポートするライブラリごとに区別する必要があります。ライブラリ関数を呼び出す場合、その引数を宣言された型以外に変換することはできません。インポート文の `username`、`libraryName` または`alias` の識別子として 'as' や 'import' を使用することはできません。

こちらもご覧ください

[library](https://jp.tradingview.com/pine-script-reference/v5/#fun_library) [export](https://jp.tradingview.com/pine-script-reference/v5/#kw_export)

### method

これは関数宣言の前に置かれるキーワードで、関数名を最初のパラメーターの型の変数に追加し、その最初のパラメーターを省略することによって、ドット記法での呼び出しを可能にするものです。また、メソッドとして宣言された関数は、通常のユーザー定義関数のように呼び出すことができます。この場合、最初のパラメーターに引数を与える必要があります。

メソッドの宣言の最初のパラメーターについては、型が明示されている必要があります。

構文

```
[export] method <functionName>(<paramType> <paramName> [= <defaultValue>], …) =>
    <functionBlock>
```

例

```
//@version=5
indicator("")

var prices = array.new<float>()

//@function Pushes a new value into the array and removes the first one if the resulting array is greater than `maxSize`. Can be used as a method.
method maintainArray(array<float> id, maxSize, value) =>
    id.push(value)
    if id.size() > maxSize
        id.shift()

prices.maintainArray(50, close)
// The method can also be called like a function, without using dot notation.
// In this case an argument must be supplied for its first parameter.
// maintainArray(prices, 50, close)

// This calls the `array.avg()` built-in using dot notation with the `prices` array.
// It is possible because built-in functions belonging to some namespaces that are a special Pine type
// can be invoked with method notation when the function's first parameter is an ID of that type.
// Those namespaces are: `array`, `matrix`, `line`, `linefill`, `label`, `box`, and `table`.
plot(prices.avg())
```

### not

論理否定 (NOT)。ブール式に利用できます。

構文

```
not expr1
```

リターン

ブール値、もしくはブール値の系列。

### or

論理和 (OR)。ブール式に利用できます。

構文

```
expr1 or expr2
```

リターン

ブール値、もしくはブール値の系列。

### switch

switch文は、条件と式の値に応じて、複数の文から分岐処理を行います。

構文

```
[variable_declaration = ] switch expression
    value1 => local_block
    value2 => local_block
    …
    => default_local_block

[variable_declaration = ] switch
    condition1 => local_block
    condition2 => local_block
    …
    => default_local_block
```

式を含むswitch :

例

```
//@version=5
indicator("Switch using an expression")

string i_maType = input.string("EMA", "MA type", options = ["EMA", "SMA", "RMA", "WMA"])

float ma = switch i_maType
    "EMA" => ta.ema(close, 10)
    "SMA" => ta.sma(close, 10)
    "RMA" => ta.rma(close, 10)
    // Default used when the three first cases do not match.
    => ta.wma(close, 10)

plot(ma)
```

式を含まないswitch :

例

```
//@version=5
strategy("Switch without an expression", overlay = true)

bool longCondition  = ta.crossover( ta.sma(close, 14), ta.sma(close, 28))
bool shortCondition = ta.crossunder(ta.sma(close, 14), ta.sma(close, 28))

switch
    longCondition  => strategy.entry("Long ID", strategy.long)
    shortCondition => strategy.entry("Short ID", strategy.short)
```

リターン

localブロックの文の最後の式の値が実行されます。

備考

`local_block`インスタンスのどれか1つ、もしくは`default_local_block`が実行されます。`default_local_block`は、`=>`トークンで明示されて、上記のブロックのどの条件にも合致しない場合に実行されます。`switch`文の結果が変数に代入されて、`default_local_block`が指定されていない場合は、`local_block`が実行されなければ`na`が返されます。`switch`文の結果を変数に代入する場合、`local_block`インスタンスはすべて同じ型の値を返す必要があります。

こちらもご覧ください

[if](https://jp.tradingview.com/pine-script-reference/v5/#kw_if) [?:](https://jp.tradingview.com/pine-script-reference/v5/#op_?:)

### type

オブジェクトを作成するためのユーザ定義型 (UDT) を宣言することができるキーワードです。UDTは複合型であり、定義されているUDTも合わせて、内蔵または任意の型のフィールドを任意の数含んでいます。UDTを定義するための構文は以下のとおりです:

構文

```
[export ]type <UDT_identifier>
    [varip ]<field_type> <field_name> [= <value>]
    …
```

UDTが定義されると `UDT_identifier.new()` 構造を用いて、そこからオブジェクトを生成することができるようになります。新しいtypeインスタンスを作成するとき、そのオブジェクトのフィールドはUDTの定義で指定されたデフォルト値で初期化されます。デフォルトで指定されていないtypeは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) で初期化されます。または代用として、typeのデフォルトを上書きするために、初期値を `*.new()` メソッドで引数として渡すことができます。例えば、`newFooObject = foo.new(x = true)` は新しい `foo` オブジェクトを `newFooObject` 変数に代入し、その `x` フィールドを [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の値で初期化します。

フィールドの宣言にはキーワード [varip](https://jp.tradingview.com/pine-script-reference/v5/#kw_varip) を含めることができ、この場合、同じバーでスクリプトが連続して繰り返される間、フィールドの値は保持されます。

詳しくはユーザーマニュアルの [defining UDTs](https://www.tradingview.com/pine-script-docs/language/type-system#user-defined-types) と [using objects](https://www.tradingview.com/pine-script-docs/language/objects/) の項をご参照ください。

ライブラリはUDTをエクスポートすることができます。詳細はユーザーマニュアルの [ライブラリ](https://www.tradingview.com/pine-script-docs/concepts/libraries/#user-defined-types-and-objects) のページをご参照ください。

例

```
//@version=5
indicator("Multi Time Period Chart", overlay = true)

timeframeInput = input.timeframe("1D")

type bar
    float o = open
    float h = high
    float l = low
    float c = close
    int   t = time

drawBox(bar b, right) =>
    bar s = bar.new()
    color boxColor = b.c >= b.o ? color.green : color.red
    box.new(b.t, b.h, right, b.l, boxColor, xloc = xloc.bar_time, bgcolor = color.new(boxColor, 90))

updateBox(box boxId, bar b) =>
    color boxColor = b.c >= b.o ? color.green : color.red
    box.set_border_color(boxId, boxColor)
    box.set_bgcolor(boxId, color.new(boxColor, 90))
    box.set_top(boxId, b.h)
    box.set_bottom(boxId, b.l)
    box.set_right(boxId, time)

secBar = request.security(syminfo.tickerid, timeframeInput, bar.new())

if not na(secBar)
    // To avoid a runtime error, only process data when an object exists.
    if not barstate.islast
        if timeframe.change(timeframeInput)
            // On historical bars, draw a new box in the past when the HTF closes.
            drawBox(secBar, time[1])
    else
        var box lastBox = na
        if na(lastBox) or timeframe.change(timeframeInput)
            // On the last bar, only draw a new current box the first time we get there or when HTF changes.
            lastBox := drawBox(secBar, time)
        else
            // On other chart updates, use setters to modify the current box.
            updateBox(lastBox, secBar)
```

### var

**var** は、変数の1度限りの初期化や代入に用いられるキーワードです。

通常、変数の代入の構文にはキーワードvarは含まれず、データが更新されるたびに変数の値が上書きされます。それとは反対にキーワードvarを付けて変数を代入する場合には、データが更新された時でも「状態を維持する」ことができます、if式で条件が満たされる時にだけ変更されます。

構文

```
var variable_name = expression
```

解説:

**variable\_name** \- Pine Script® で使用可能なユーザー定義の変数名 (大文字・小文字のアルファベット、数字、アンダースコア (\_) を含むことができますが、数字から始めることはできません)。

**expression** \- 任意の算術式。通常の変数を定義する時と同様です。この式は計算され、変数に一度代入されます。

例

```
//@version=5
indicator("Var keyword example")
var a = close
var b = 0.0
var c = 0.0
var green_bars_count = 0
if close > open
    var x = close
    b := x
    green_bars_count := green_bars_count + 1
    if green_bars_count >= 10
        var y = close
        c := y
plot(a)
plot(b)
plot(c)
```

変数 'a' は系列内で各バーの最初のバーの終値を保持します。

変数 'b' は系列内で最初の「緑」バーの終値を保持します。

変数 'c' は系列内で10本目の「緑」バーの終値を保持します。

### varip

**varip** (var intrabar persist) は、ユーザー定義の [type](https://jp.tradingview.com/pine-script-reference/v5/#kw_type) の変数やフィールドを割り当て、1回限りの初期化や代入を行うためのキーワードです。キーワード [var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) と似ていますが、 [varip](https://jp.tradingview.com/pine-script-reference/v5/#kw_varip) で宣言された変数やフィールドは、同じバーでスクリプトを実行しても、その値を保持することができます。

構文

```
varip [<variable_type> ]<variable_name> = <expression>

[export ]type <UDT_identifier>
    varip <field_type> <field_name> [= <value>]
```

解説:

**variable\_type** \- オプションの基本型 ( [int](https://jp.tradingview.com/pine-script-reference/v5/#type_int), [float](https://jp.tradingview.com/pine-script-reference/v5/#type_float), [bool](https://jp.tradingview.com/pine-script-reference/v5/#type_bool), [color](https://jp.tradingview.com/pine-script-reference/v5/#type_color), [string](https://jp.tradingview.com/pine-script-reference/v5/#type_string) ) もしくはユーザー定義型、あるいはこれらの型を使用した配列や行列のことです。特殊な型はこのキーワードと互換性がありません。

**variable\_name** \- [有効な識別子](https://www.tradingview.com/pine-script-docs/language/identifiers/) です。変数はUDTから作成されたオブジェクトでも可能です。

**expression** \- 任意の演算式。通常の変数を定義する時と同様です。この式は、最初のバーで一度だけ計算され、変数に代入されます。

**UDT\_identifier, field\_type, field\_name, value** \- [type](https://jp.tradingview.com/pine-script-reference/v5/#kw_type) のセクションで説明したユーザー定義型に関連して構築されたものです。

例

```
//@version=5
indicator("varip")
varip int v = -1
v := v + 1
plot(v)
```

[var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) の場合、`v`は、 [bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#var_bar_index) の値と等しくなります。過去バーでは、スクリプトはチャートのバーごとに1回のみ計算するので、`v`の値は、 [var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) の場合と同じになります。しかしリアルタイムバーでは、スクリプトはチャートが新しく更新されるたびに式を評価するため、異なった結果が生成されます。

例

```
//@version=5
indicator("varip with types")
type barData
    int index = -1
    varip int ticks = -1

var currBar = barData.new()
currBar.index += 1
currBar.ticks += 1

// Will be equal to bar_index on all bars
plot(currBar.index)
// In real time, will increment per every tick on the chart
plot(currBar.ticks)
```

同じ [+=](https://jp.tradingview.com/pine-script-reference/v5/#op_+=) 操作を、`index`と`ticks`の両フィールドに適用すると、`ticks`はチャートが更新されるたびに増加するのに対して、`index`はバー1本につき1回だけ増加するので、リアルタイム値が異なります。`currBar`オブジェクトがキーワード [varip](https://jp.tradingview.com/pine-script-reference/v5/#kw_varip) を使用していないことに注意してください。オブジェクトの`ticks`フィールドは、1ティックごとにインクリメントできますが、参照自体は一度定義されるとその後は変更されません。 [varip](https://jp.tradingview.com/pine-script-reference/v5/#kw_varip) を使用して`currBar`を宣言した場合、`index`の動作に変更はありません。チャート更新時にtypeインスタンスへの参照は保持されますが、オブジェクトの`index`フィールドへの参照は保持されない為です。

備考

過去チャートのバーごとに複数回実行される可能性があるストラテジーにおいて、 [varip](https://jp.tradingview.com/pine-script-reference/v5/#kw_varip) を使用して変数を宣言すると、この変数の値は、同じバーでスクリプトを連続して繰り返し実行しても保持されます。

[varip](https://jp.tradingview.com/pine-script-reference/v5/#kw_varip) には変数の [ロールバック](https://www.tradingview.com/pine-script-docs/language/execution-model/#calculation-based-on-realtime-bars) を抹消する効果があり、同一のバーでスクリプトを連続して実行することができます。

### while

`while`文はローカルコードブロックの条件の繰り返し処理を可能にします。

構文

```
variable_declaration = while condition
    …
    continue
    …
    break
    …
    return_expression
```

解説:

**variable\_declaration** ― オプションの変数宣言。`return expression` によって、この変数の初期値を指定することができます。

**condition** ― trueの場合、`while`文のローカルブロックが実行されます。falseの場合は、`while`文の後にスクリプトの実行が再開されます。

**continue** ― キーワード `continue` を使うと、ループが次の繰り返しへと分岐します。

**break** ― キーワード `break`を使うとループが終了します。`while` 文の後でスクリプトの実行が再開されます。

**return\_expression** ― `while` 文の戻り値を指定するオプションの行です。

例

```
//@version=5
indicator("while")
// This is a simple example of calculating a factorial using a while loop.
int i_n = input.int(10, "Factorial Size", minval=0)
int counter   = i_n
int factorial = 1
while counter > 0
    factorial := factorial * counter
    counter   := counter - 1

plot(factorial)
```

備考

最初の`while`行の後のローカルコードブロックは 、4つのスペースかタブでインデントする必要があります。また、`while`ループを終了させるには、`while`に続くブール式が最終的にfalseになるか、`break`が実行されなければなりません。


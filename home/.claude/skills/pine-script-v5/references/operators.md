## 演算子

### -

減算または単項のマイナス。数式に利用できます。

構文

```
expr1 - expr2
```

リターン

整数または浮動小数点の値、または系列の値を返します:

バイナリー `-` は、expr1 から expr2 を引いた値を返します。

単項の `-` は expr の否定を返します。

備考

演算子は数値だけでなく系列変数でも使用できます。 系列を使用する場合、演算子は要素ごとに適用されます。

### -=

減算の代入。数式に利用できます。

構文

```
expr1 -= expr2
```

例

```
//@version=5
indicator("-=")
// Equals to expr1 = expr1 - expr2.
a = 2
b = 3
a -= b
// Result: a = -1.
plot(a)
```

リターン

整数または浮動小数点の値、もしくは系列値。

### :=

再代入演算子。以前に宣言された変数に新しく値を代入するときに使用します。

構文

```
<var_name> := <new_value>
```

例

```
//@version=5
indicator("My script")

myVar = 10

if close > open
    // Modifies the existing global scope `myVar` variable by changing its value from 10 to 20.
    myVar := 20
    // Creates a new `myVar` variable local to the `if` condition and unreachable from the global scope.
    // Does not affect the `myVar` declared in global scope.
    myVar = 30

plot(myVar)
```

### !=

不等式。任意の型の式に利用できます。

構文

```
expr1 != expr2
```

リターン

ブール値、もしくはブール値の系列。

### ?:

三項条件演算子。

構文

```
expr1 ? expr2 : expr3
```

例

```
//@version=5
indicator("?:")
// Draw circles at the bars where open crosses close
s2 = ta.cross(open, close) ? math.avg(open,close) : na
plot(s2, style=plot.style_circles, linewidth=2, color=color.red)

// Combination of ?: operators for 'switch'-like logic
c = timeframe.isintraday ? color.red : timeframe.isdaily ? color.green : timeframe.isweekly ? color.blue : color.gray
plot(hl2, color=c)
```

リターン

もし expr1 が true であれば expr2、そうでなければ expr3。 ゼロ値 (0またはNaN、+ Infinity、-Infinity)は false とみなされ、他の値は true です。

備考

必要がない場合は、 'else' 分岐に [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) を使用してください。

2つ以上の [?:](https://jp.tradingview.com/pine-script-reference/v5/#op_?:) 演算子を組み合わせて、'switch'の様なステートメントと同等の機能を実現できます（上記の例をご参照ください）。

演算子は数値だけでなく系列変数でも使用できます。 系列を使用する場合、演算子は要素ごとに適用されます。

こちらもご覧ください

[na](https://jp.tradingview.com/pine-script-reference/v5/#var_na)

### \[\]

サブスクリプト系列。 expr1 系列の以前の値へのアクセスを提供します。 expr2 は過去バーの数であり、数値でなければなりません。 小数点は切り捨てられます。

構文

```
expr1[expr2]
```

例

```
//@version=5
indicator("[]")
// [] can be used to "save" variable value between bars
a = 0.0 // declare `a`
a := a[1] // immediately set current value to the same as previous. `na` in the beginning of history
if high == low // if some condition - change `a` value to another
    a := low
plot(a)
```

リターン

系列の値。

こちらもご覧ください

[math.floor](https://jp.tradingview.com/pine-script-reference/v5/#fun_math.floor)

### \*

乗算。数式に利用できます。

構文

```
expr1 * expr2
```

リターン

整数または浮動小数点の値、もしくは系列値。

### \*=

乗算の代入。数式に利用できます。

構文

```
expr1 *= expr2
```

例

```
//@version=5
indicator("*=")
// Equals to expr1 = expr1 * expr2.
a = 2
b = 3
a *= b
// Result: a = 6.
plot(a)
```

リターン

整数または浮動小数点の値、もしくは系列値。

### /

割り算。数式に利用できます。

構文

```
expr1 / expr2
```

リターン

整数または浮動小数点の値、もしくは系列値。

### /=

除算の代入。数式に利用できます。

構文

```
expr1 /= expr2
```

例

```
//@version=5
indicator("/=")
// Equals to expr1 = expr1 / expr2.
a = 3
b = 3
a /= b
// Result: a = 1.
plot(a)
```

リターン

整数または浮動小数点の値、もしくは系列値。

### %

モジュロ (割り算の余り)。数式に利用できます。

構文

```
expr1 % expr2
```

リターン

整数または浮動小数点の値、もしくは系列値。

備考

Pine Script® では、整数の余りを計算する時に商は切り捨てられ、つまり、最小の絶対値に丸められます。 結果の値は被除数と同じ符号になります。

例: `-1 % 9 = -1 - 9 * int(-1/9) = -1 - 9 * int(-0.111) = -1 - 9 * 0 = -1.`

### %=

モジュロ (割り算の余り) の代入。数式に利用できます。

構文

```
expr1 %= expr2
```

例

```
//@version=5
indicator("%=")
// Equals to expr1 = expr1 % expr2.
a = 3
b = 3
a %= b
// Result: a = 0.
plot(a)
```

リターン

整数または浮動小数点の値、もしくは系列値。

### +

加算または単項の追加。数式または文字列に利用できます。

構文

```
expr1 + expr2
```

リターン

文字列のバイナリー `+` は expr1 と expr2 の連結を返します。

数値の場合、整数または浮動小数点の値、または系列の値を返します。

バイナリー `+` は expr1 と expr2 を返します。

単項 `+` は expr を返します (単項演算子 - と対称になるように何も加えません)。

備考

演算子は数値だけでなく系列変数でも使用できます。 系列を使用する場合、演算子は要素ごとに適用されます。

### +=

加算の代入。数式や文字列に利用できます。

構文

```
expr1 += expr2
```

例

```
//@version=5
indicator("+=")
// Equals to expr1 = expr1 + expr2.
a = 2
b = 3
a += b
// Result: a = 5.
plot(a)
```

リターン

文字列の場合、expr1 と expr2 の連結を返します。数値の場合、整数または浮動小数点の値、もしくは系列値を返します。

備考

演算子は数値だけでなく系列変数でも使用できます。 系列を使用する場合、演算子は要素ごとに適用されます。

### <

未満。 数式に利用できます。

構文

```
expr1 < expr2
```

リターン

ブール値、もしくはブール値の系列。

### <=

以下。数式に利用できます。

構文

```
expr1 <= expr2
```

リターン

ブール値、もしくはブール値の系列。

### ==

等式。任意の型に利用できます。

構文

```
expr1 == expr2
```

リターン

ブール値、もしくはブール値の系列。

### =>

演算子 '=>' は、ユーザー定義関数の宣言や [switch](https://jp.tradingview.com/pine-script-reference/v5/#kw_switch) 文の中で使用されます。

関数宣言の構文は以下の通りです:

構文

```
<identifier>([<parameter_name>[=<default_value>]], ...) =>
    <local_block>
    <function_result>
```

<local\_block> は、0個以上のPine Script®文を指定します。

<function\_result> は、変数、式、タプルのいずれかになります。

例

```
//@version=5
indicator("=>")
// single-line function
f1(x, y) => x + y
// multi-line function
f2(x, y) =>
    sum = x + y
    sumChange = ta.change(sum, 10)
    // Function automatically returns the last expression used in it
plot(f1(30, 8) + f2(1, 3))
```

備考

ユーザー定義関数については、ユーザーマニュアルの [宣言関数](https://www.tradingview.com/pine-script-docs/language/user-defined-functions/) と [ライブラリ](https://www.tradingview.com/pine-script-docs/concepts/libraries/) のページで詳細を確認できます。

### >

より大きい。数式に利用できます。

構文

```
expr1 > expr2
```

リターン

ブール値、もしくはブール値の系列。

### >=

以上。数式に利用できます。

構文

```
expr1 >= expr2
```

リターン

ブール値、もしくはブール値の系列。


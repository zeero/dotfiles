### array.abs()

2個の多重定義

元の配列にある各要素の絶対値を含む配列を返します。

構文と多重定義

[```\\
array.abs(id) → array<float>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.abs-0) [```\\
array.abs(id) → array<int>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.abs-1)

引数

id (array<int/float>) 配列オブジェクト。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.reverse](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.reverse) [order.ascending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.ascending) [order.descending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.descending)

### array.avg()

2個の多重定義

この関数は、配列要素の平均を返します。

構文と多重定義

[```\\
array.avg(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.avg-0) [```\\
array.avg(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.avg-1)

引数

id (array<int/float>) 配列オブジェクト。

例

```
//@version=5
indicator("array.avg example")
a = array.new_float(0)
for i = 0 to 9
    array.push(a, close[i])
plot(array.avg(a))
```

リターン

配列の要素の平均。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.max](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.max) [array.min](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min) [array.stdev](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.stdev)

### array.binary\_search()

この関数は、値のインデックスを返し，値が見つからない場合は -1 を返します。検索対象の配列は、昇順にソートされている必要があります。

構文

```
array.binary_search(id, val) → series int
```

引数

id (array<int/float>) 配列オブジェクト。

val (series int/float) 配列の中から検索する値。

例

```
//@version=5
indicator("array.binary_search")
a = array.from(5, -2, 0, 9, 1)
array.sort(a) // [-2, 0, 1, 5, 9]
position = array.binary_search(a, 0) // 1
plot(position)
```

備考

バイナリーサーチは、あらかじめ昇順にソートされた配列に対して機能します。まず、配列の中央にある要素とターゲットの値を比較します。もし、その要素とターゲットの値が一致すれば、配列のその要素の位置が返されます。もし要素の値がターゲットの値よりも大きければ、配列の下半分の検索を続行します。要素の値がターゲットの値より小さい場合は、配列の上半分の検索を続行します。これを再帰的に行うことで、ターゲットの値が存在しない配列部分を徐々に小さくしていきます。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.reverse](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.reverse) [order.ascending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.ascending) [order.descending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.descending)

### array.binary\_search\_leftmost()

この関数は、値が見つかればそのインデックスを返します。値が見つからない場合は、その値が配列内に存在すると仮定して、その値の次に小さい左側の要素のインデックスを返します。検索対象の配列は昇順にソートされている必要があります。

構文

```
array.binary_search_leftmost(id, val) → series int
```

引数

id (array<int/float>) 配列オブジェクト。

val (series int/float) 配列の中から検索する値。

例

```
//@version=5
indicator("array.binary_search_leftmost")
a = array.from(5, -2, 0, 9, 1)
array.sort(a) // [-2, 0, 1, 5, 9]
position = array.binary_search_leftmost(a, 3) // 2
plot(position)
```

例

```
//@version=5
indicator("array.binary_search_leftmost, repetitive elements")
a = array.from(4, 5, 5, 5)
// Returns the index of the first instance.
position = array.binary_search_leftmost(a, 5)
plot(position) // Plots 1
```

備考

バイナリーサーチは、あらかじめ昇順にソートされた配列に対して機能します。まず、配列の中央にある要素とターゲットの値を比較します。もし、その要素とターゲットの値が一致すれば、配列のその要素の位置が返されます。もし要素の値がターゲットの値よりも大きければ、配列の下半分の検索を続行します。要素の値がターゲットの値より小さい場合は、配列の上半分の検索を続行します。これを再帰的に行うことで、ターゲットの値が存在しない配列部分を徐々に小さくしていきます。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.reverse](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.reverse) [order.ascending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.ascending) [order.descending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.descending)

### array.binary\_search\_rightmost()

この関数は、値が見つかればそのインデックスを返します。値が見つからない場合は、その値が配列内に存在すると仮定して、その値の右側の要素のインデックスを返します。検索対象の配列は昇順にソートされている必要があります。

構文

```
array.binary_search_rightmost(id, val) → series int
```

引数

id (array<int/float>) 配列オブジェクト。

val (series int/float) 配列の中から検索する値。

例

```
//@version=5
indicator("array.binary_search_rightmost")
a = array.from(5, -2, 0, 9, 1)
array.sort(a) // [-2, 0, 1, 5, 9]
position = array.binary_search_rightmost(a, 3) // 3
plot(position)
```

例

```
//@version=5
indicator("array.binary_search_rightmost, repetitive elements")
a = array.from(4, 5, 5, 5)
// Returns the index of the last instance.
position = array.binary_search_rightmost(a, 5)
plot(position) // Plots 3
```

備考

バイナリーサーチは、昇順にソートされた配列に対して機能します。まず、配列の中央にある要素とターゲットの値を比較します。もし、その要素とターゲットの値が一致すれば、配列のその要素の位置が返されます。もし要素の値がターゲットの値よりも大きければ、配列の下半分の検索を続行します。要素の値がターゲットの値より小さい場合は、配列の上半分の検索を続行します。これを再帰的に行うことで、ターゲットの値が存在しない配列部分を徐々に小さくしていきます。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.reverse](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.reverse) [order.ascending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.ascending) [order.descending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.descending)

### array.clear()

この関数は、配列からすべての要素を削除します。

構文

```
array.clear(id) → void
```

引数

id (any array type) 配列オブジェクト。

例

```
//@version=5
indicator("array.clear example")
a = array.new_float(5,high)
array.clear(a)
array.push(a, close)
plot(array.get(a,0))
plot(array.size(a))
```

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.push](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.push) [array.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.remove) [array.pop](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.pop)

### array.concat()

この関数は、2つの配列をマージするために使用されます。すべての要素を2番目の配列から最初の配列にプッシュして最初の配列を返します。

構文

```
array.concat(id1, id2) → array<type>
```

引数

id1 (any array type) 最初の配列オブジェクト。

id2 (any array type) 2番目の配列オブジェクト。

例

```
//@version=5
indicator("array.concat example")
a = array.new_float(0,0)
b = array.new_float(0,0)
for i = 0 to 4
    array.push(a, high[i])
    array.push(b, low[i])
c = array.concat(a,b)
plot(array.size(a))
plot(array.size(b))
plot(array.size(c))
```

リターン

2番目の配列の要素をマージした最初の配列。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice)

### array.copy()

この関数は、既存の配列のコピーを作成します。

構文

```
array.copy(id) → array<type>
```

引数

id (any array type) 配列オブジェクト。

例

```
//@version=5
indicator("array.copy example")
length = 5
a = array.new_float(length, close)
b = array.copy(a)
a := array.new_float(length, open)
plot(array.sum(a) / length)
plot(array.sum(b) / length)
```

リターン

配列のコピー。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sort)

### array.covariance()

この関数は、2つの配列の共分散を返します。

構文

```
array.covariance(id1, id2, biased) → series float
```

引数

id1 (array<int/float>) 配列オブジェクト。

id2 (array<int/float>) 配列オブジェクト。

biased (series bool) どの推定を用いるかを決定します。オプション引数です。デフォルトは true です。

例

```
//@version=5
indicator("array.covariance example")
a = array.new_float(0)
b = array.new_float(0)
for i = 0 to 9
    array.push(a, close[i])
    array.push(b, open[i])
plot(array.covariance(a, b))
```

リターン

2つの配列の共分散。

備考

`biased` が true の場合、この関数は母集団全体のバイアスされた推定値を用いて計算し，false の場合はサンプルのバイアスされていない推定値を用います。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.max](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.max) [array.stdev](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.stdev) [array.avg](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.avg) [array.variance](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.variance)

### array.every()

配列 `id` の要素が全て [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) であれば [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を、そうでない場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。

構文

```
array.every(id) → series bool
```

引数

id (array<bool>) 配列オブジェクト。

備考

この関数は [int](https://jp.tradingview.com/pine-script-reference/v5/#type_int) と [float](https://jp.tradingview.com/pine-script-reference/v5/#type_float) 型の配列でも動作しますが、その場合、0は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) とみなされ、0以外の数値が [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) とみなされます。

こちらもご覧ください

[array.some](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.some) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get)

### array.fill()

この関数は、配列の要素を単一の値に設定します。インデックスが指定されない場合には、すべての要素が設定されます。開始インデックス (デフォルトは0) のみが指定されている場合、そのインデックスから始まる要素が設定されます。両方のインデックスパラメータを使用すると、開始インデックスから終了インデックス (デフォルトはna) の前までの要素が設定されます。

構文

```
array.fill(id, value, index_from, index_to) → void
```

引数

id (any array type) 配列オブジェクト。

value (series <type of the array's elements>) 配列を埋める値。

index\_from (series int) 開始インデックス。デフォルトは0です。

index\_to (series int) 終了インデックス。デフォルトはnaです。設定する最後の要素のインデックスよりも1つ大きい値である必要があります。

例

```
//@version=5
indicator("array.fill example")
a = array.new_float(10)
array.fill(a, close)
plot(array.sum(a))
```

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.set) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice)

### array.first()

配列の最初の要素を返します。配列が空の場合、ランタイムエラーが発生します。

構文

```
array.first(id) → series <type>
```

引数

id (any array type) 配列オブジェクト。

例

```
//@version=5
indicator("array.first example")
arr = array.new_int(3, 10)
plot(array.first(arr))
```

こちらもご覧ください

[array.last](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.last) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get)

### array.from()

12個の多重定義

int, float, bool, string, label, line, color, box, table, linefill のいずれかの型を持つ可変個数引数を取り，対応する型の配列を返します。

構文と多重定義

[```\\
array.from(arg0, arg1, ...) → array<type>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from-0) [```\\
array.from(arg0, arg1, ...) → array<series enum>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from-1) [```\\
array.from(arg0, arg1, ...) → array<label>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from-2) [```\\
array.from(arg0, arg1, ...) → array<line>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from-3) [```\\
array.from(arg0, arg1, ...) → array<box>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from-4) [```\\
array.from(arg0, arg1, ...) → array<table>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from-5) [```\\
array.from(arg0, arg1, ...) → array<linefill>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from-6) [```\\
array.from(arg0, arg1, ...) → array<string>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from-7) [```\\
array.from(arg0, arg1, ...) → array<color>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from-8) [```\\
array.from(arg0, arg1, ...) → array<int>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from-9) [```\\
array.from(arg0, arg1, ...) → array<float>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from-10) [```\\
array.from(arg0, arg1, ...) → array<bool>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from-11)

引数

arg0, arg1, ... (<arg...\_type>) 配列の引数。

例

```
//@version=5
indicator("array.from_example", overlay = false)
arr = array.from("Hello", "World!") // arr (array<string>) will contain 2 elements: {Hello}, {World!}.
plot(close)
```

リターン

配列要素の値。

備考

この関数で受け入れ可能な要素数は、'int'、'float'、'bool' または 'color' の引数で4000、ユーザー定義型など他の型では999が上限となっています。

### array.get()

この関数は、指定されたインデックスの要素の値を返します。

構文

```
array.get(id, index) → series <type>
```

引数

id (any array type) 配列オブジェクト。

index (series int) 値を返す要素のインデックス。

例

```
//@version=5
indicator("array.get example")
a = array.new_float(0)
for i = 0 to 9
    array.push(a, close[i] - open[i])
plot(array.get(a, 9))
```

リターン

配列要素の値。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.set) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sort)

### array.includes()

この関数は、値が配列で見つかった場合は true を返し、それ以外の場合は false を返します。

構文

```
array.includes(id, value) → series bool
```

引数

id (any array type) 配列オブジェクト。

value (series <type of the array's elements>) 配列内で検索する値。

例

```
//@version=5
indicator("array.includes example")
a = array.new_float(5,high)
p = close
if array.includes(a, high)
    p := open
plot(p)
```

リターン

配列で値が見つかった場合は true、それ以外の場合は false。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.indexof](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.indexof) [array.shift](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.shift) [array.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.remove) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert)

### array.indexof()

この関数は、値が最初に出現するインデックスを返します。値が見つからない場合は -1 を返します。

構文

```
array.indexof(id, value) → series int
```

引数

id (any array type) 配列オブジェクト。

value (series <type of the array's elements>) 配列内で検索する値。

例

```
//@version=5
indicator("array.indexof example")
a = array.new_float(5,high)
index = array.indexof(a, high)
plot(index)
```

リターン

要素のインデックス。

こちらもご覧ください

[array.lastindexof](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.lastindexof) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.lastindexof](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.lastindexof) [array.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.remove) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert)

### array.insert()

この関数は、新しい要素を追加することで配列の内容を変更します。

構文

```
array.insert(id, index, value) → void
```

引数

id (any array type) 配列オブジェクト。

index (series int) 値を挿入するインデックス。

value (series <type of the array's elements>) 配列に追加する値。

例

```
//@version=5
indicator("array.insert example")
a = array.new_float(5, close)
array.insert(a, 0, open)
plot(array.get(a, 5))
```

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.set) [array.push](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.push) [array.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.remove) [array.pop](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.pop) [array.unshift](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.unshift)

### array.join()

この関数は、配列のすべての要素を連結することで、指定されたセパレーター文字列で区切られた新しい文字列を作成して返します。

構文

```
array.join(id, separator) → series string
```

引数

id (array<int/float/string>) 配列オブジェクト。

separator (series string) 各配列要素を区切るために使用される文字列。

例

```
//@version=5
indicator("array.join example")
a = array.new_float(5, 5)
label.new(bar_index, close, array.join(a, ","))
```

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.set) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.remove) [array.pop](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.pop) [array.unshift](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.unshift)

### array.last()

配列の最後の要素を返します。配列が空の場合、ランタイムエラーが発生します。

構文

```
array.last(id) → series <type>
```

引数

id (any array type) 配列オブジェクト。

例

```
//@version=5
indicator("array.last example")
arr = array.new_int(3, 10)
plot(array.last(arr))
```

こちらもご覧ください

[array.first](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.first) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get)

### array.lastindexof()

この関数は、値が最後に出現するインデックスを返します。値が見つからない場合は -1 を返します。

構文

```
array.lastindexof(id, value) → series int
```

引数

id (any array type) 配列オブジェクト。

value (series <type of the array's elements>) 配列内で検索する値。

例

```
//@version=5
indicator("array.lastindexof example")
a = array.new_float(5,high)
index = array.lastindexof(a, high)
plot(index)
```

リターン

要素のインデックス。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.set) [array.push](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.push) [array.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.remove) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert)

### array.max()

4個の多重定義

この関数は、指定された配列の最大値、またはn番目に大きい値を返します。

構文と多重定義

[```\\
array.max(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.max-0) [```\\
array.max(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.max-1) [```\\
array.max(id, nth) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.max-2) [```\\
array.max(id, nth) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.max-3)

引数

id (array<int/float>) 配列オブジェクト。

例

```
//@version=5
indicator("array.max")
a = array.from(5, -2, 0, 9, 1)
thirdHighest = array.max(a, 2) // 1
plot(thirdHighest)
```

リターン

配列の最大値、またはn番目に大きい値。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.min](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min) [array.sum](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sum)

### array.median()

2個の多重定義

この関数は、配列要素の中央値を返します。

構文と多重定義

[```\\
array.median(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.median-0) [```\\
array.median(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.median-1)

引数

id (array<int/float>) 配列オブジェクト。

例

```
//@version=5
indicator("array.median example")
a = array.new_float(0)
for i = 0 to 9
    array.push(a, close[i])
plot(array.median(a))
```

リターン

配列の要素の中央値。

こちらもご覧ください

[array.median](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.median) [array.avg](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.avg) [array.variance](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.variance) [array.min](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min)

### array.min()

4個の多重定義

この関数は、指定された配列の最小値、またはn番目に小さい値を返します。

構文と多重定義

[```\\
array.min(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min-0) [```\\
array.min(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min-1) [```\\
array.min(id, nth) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min-2) [```\\
array.min(id, nth) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min-3)

引数

id (array<int/float>) 配列オブジェクト。

例

```
//@version=5
indicator("array.min")
a = array.from(5, -2, 0, 9, 1)
secondLowest = array.min(a, 1) // 0
plot(secondLowest)
```

リターン

配列の最小値、またはn番目に小さい値。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.max](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.max) [array.sum](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sum)

### array.mode()

2個の多重定義

この関数は、配列要素の最頻値を返します。同じ頻度の値が複数ある場合には、その最小値を返します。

構文と多重定義

[```\\
array.mode(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.mode-0) [```\\
array.mode(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.mode-1)

引数

id (array<int/float>) 配列オブジェクト。

例

```
//@version=5
indicator("array.mode example")
a = array.new_float(0)
for i = 0 to 9
    array.push(a, close[i])
plot(array.mode(a))
```

リターン

配列`id`の最頻値。存在しない場合は、その代わりに最小値を返します。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [ta.mode](https://jp.tradingview.com/pine-script-reference/v5/#fun_ta.mode) [matrix.mode](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.mode) [array.avg](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.avg) [array.variance](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.variance) [array.min](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min)

### array.new\_bool()

この関数は、bool型要素の新しい配列オブジェクトを作成します。

構文

```
array.new_bool(size, initial_value) → array<bool>
```

引数

size (series int) 配列の初期サイズ。オプションです。デフォルトは0です。

initial\_value (series bool) 配列の全要素の初期値。オプションです。デフォルトは 'na' です。

例

```
//@version=5
indicator("array.new_bool example")
length = 5
a = array.new_bool(length, close > open)
plot(array.get(a, 0) ? close : open)
```

リターン

他の array.\*() 関数で使用できる配列オブジェクトのID。

備考

配列のインデックスは0から始まります。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sort)

### array.new\_box()

この関数は、box型要素の新しい配列オブジェクトを作成します。

構文

```
array.new_box(size, initial_value) → array<box>
```

引数

size (series int) 配列の初期サイズ。オプションです。デフォルトは0です。

initial\_value (series box) 配列の全要素の初期値。オプションです。デフォルトは 'na' です。

例

```
//@version=5
indicator("array.new_box example")
boxes = array.new_box()
array.push(boxes, box.new(time, close, time+2, low, xloc=xloc.bar_time))
plot(1)
```

リターン

他の array.\*() 関数で使用できる配列オブジェクトのID。

備考

配列のインデックスは0から始まります。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice)

### array.new\_color()

この関数は、color型要素の新しい配列オブジェクトを作成します。

構文

```
array.new_color(size, initial_value) → array<color>
```

引数

size (series int) 配列の初期サイズ。オプションです。デフォルトは0です。

initial\_value (series color) 配列の全要素の初期値。オプションです。デフォルトは 'na' です。

例

```
//@version=5
indicator("array.new_color example")
length = 5
a = array.new_color(length, color.red)
plot(close, color = array.get(a, 0))
```

リターン

他の array.\*() 関数で使用できる配列オブジェクトのID。

備考

配列のインデックスは0から始まります。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sort)

### array.new\_float()

この関数は、float型要素の新しい配列オブジェクトを作成します。

構文

```
array.new_float(size, initial_value) → array<float>
```

引数

size (series int) 配列の初期サイズ。オプションです。デフォルトは0です。

initial\_value (series int/float) 配列の全要素の初期値。オプションです。デフォルトは 'na' です。

例

```
//@version=5
indicator("array.new_float example")
length = 5
a = array.new_float(length, close)
plot(array.sum(a) / length)
```

リターン

他の array.\*() 関数で使用できる配列オブジェクトのID。

備考

配列のインデックスは0から始まります。

こちらもご覧ください

[array.new\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_color) [array.new\_bool](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_bool) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sort)

### array.new\_int()

この関数は、int型要素の新しい配列オブジェクトを作成します。

構文

```
array.new_int(size, initial_value) → array<int>
```

引数

size (series int) 配列の初期サイズ。オプションです。デフォルトは0です。

initial\_value (series int) 配列の全要素の初期値。オプションです。デフォルトは 'na' です。

例

```
//@version=5
indicator("array.new_int example")
length = 5
a = array.new_int(length, int(close))
plot(array.sum(a) / length)
```

リターン

他の array.\*() 関数で使用できる配列オブジェクトのID。

備考

配列のインデックスは0から始まります。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sort)

### array.new\_label()

この関数は、label型要素の新しい配列オブジェクトを作成します。

構文

```
array.new_label(size, initial_value) → array<label>
```

引数

size (series int) 配列の初期サイズ。オプションです。デフォルトは0です。

initial\_value (series label) 配列の全要素の初期値。オプションです。デフォルトは 'na' です。

例

```
//@version=5
indicator("array.new_label example", overlay = true, max_labels_count = 500)

//@variable The number of labels to show on the chart.
int labelCount = input.int(50, "Labels to show", 1, 500)

//@variable An array of `label` objects.
var array<label> labelArray = array.new_label()

//@variable A `chart.point` for the new label.
labelPoint = chart.point.from_index(bar_index, close)
//@variable The text in the new label.
string labelText = na
//@variable The color of the new label.
color labelColor = na
//@variable The style of the new label.
string labelStyle = na

// Set the label attributes for rising bars.
if close > open
    labelText  := "Rising"
    labelColor := color.green
    labelStyle := label.style_label_down
// Set the label attributes for falling bars.
else if close < open
    labelText  := "Falling"
    labelColor := color.red
    labelStyle := label.style_label_up

// Add a new label to the `labelArray` when the chart bar closed at a new value.
if close != open
    labelArray.push(label.new(labelPoint, labelText, color = labelColor, style = labelStyle))
// Remove the first element and delete its label when the size of the `labelArray` exceeds the `labelCount`.
if labelArray.size() > labelCount
    label.delete(labelArray.shift())
```

リターン

他の array.\*() 関数で使用できる配列オブジェクトのID。

備考

配列のインデックスは0から始まります。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice)

### array.new\_line()

この関数は、line型要素の新しい配列オブジェクトを作成します。

構文

```
array.new_line(size, initial_value) → array<line>
```

引数

size (series int) 配列の初期サイズ。オプションです。デフォルトは0です。

initial\_value (series line) 配列の全要素の初期値。オプションです。デフォルトは 'na' です。

例

```
//@version=5
indicator("array.new_line example")
// draw last 15 lines
var a = array.new_line()
array.push(a, line.new(bar_index - 1, close[1], bar_index, close))
if array.size(a) > 15
    ln = array.shift(a)
    line.delete(ln)
```

リターン

他の array.\*() 関数で使用できる配列オブジェクトのID。

備考

配列のインデックスは0から始まります。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice)

### array.new\_linefill()

この関数は、linefill型要素の新しい配列オブジェクトを作成します。

構文

```
array.new_linefill(size, initial_value) → array<linefill>
```

引数

size (series int) 配列の初期サイズ。

initial\_value (series linefill) すべての配列要素の初期値。

リターン

他の array.\*() 関数で使用できる配列オブジェクトのID。

備考

配列のインデックスは0から始まります。

### array.new\_string()

この関数は、文字列型要素の新しい配列オブジェクトを作成します。

構文

```
array.new_string(size, initial_value) → array<string>
```

引数

size (series int) 配列の初期サイズ。オプションです。デフォルトは0です。

initial\_value (series string) 配列の全要素の初期値。オプションです。デフォルトは 'na' です。

例

```
//@version=5
indicator("array.new_string example")
length = 5
a = array.new_string(length, "text")
label.new(bar_index, close, array.get(a, 0))
```

リターン

他の array.\*() 関数で使用できる配列オブジェクトのID。

備考

配列のインデックスは0から始まります。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice)

### array.new\_table()

この関数は、table型要素の新しい配列オブジェクトを作成します。

構文

```
array.new_table(size, initial_value) → array<table>
```

引数

size (series int) 配列の初期サイズ。オプションです。デフォルトは0です。

initial\_value (series table) 配列の全要素の初期値。オプションです。デフォルトは 'na' です。

例

```
//@version=5
indicator("table array")
tables = array.new_table()
array.push(tables, table.new(position = position.top_left, rows = 1, columns = 2, bgcolor = color.yellow, border_width=1))
plot(1)
```

リターン

他の array.\*() 関数で使用できる配列オブジェクトのID。

備考

配列のインデックスは0から始まります。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice)

### array.new<type>()

この関数は、<type> 要素からなる新しい配列オブジェクトを作成します。

構文

```
array.new<type>(size, initial_value) → array<type>
```

引数

size (series int) 配列の初期サイズ。オプションです。デフォルトは0です。

initial\_value (<array\_type>) 配列の全要素の初期値。オプションです。デフォルトは 'na' です。

例

```
//@version=5
indicator("array.new<string> example")
a = array.new<string>(1, "Hello, World!")
label.new(bar_index, close, array.get(a, 0))
```

例

```
//@version=5
indicator("array.new<color> example")
a = array.new<color>()
array.push(a, color.red)
array.push(a, color.green)
plot(close, color = array.get(a, close > open ? 1 : 0))
```

例

```
//@version=5
indicator("array.new<float> example")
length = 5
var a = array.new<float>(length, close)
if array.size(a) == length
    array.remove(a, 0)
    array.push(a, close)
plot(array.sum(a) / length, "SMA")
```

例

```
//@version=5
indicator("array.new<line> example")
// draw last 15 lines
var a = array.new<line>()
array.push(a, line.new(bar_index - 1, close[1], bar_index, close))
if array.size(a) > 15
    ln = array.shift(a)
    line.delete(ln)
```

リターン

他の array.\*() 関数で使用できる配列オブジェクトのID。

備考

配列のインデックスは0から始まります。

配列を初期化すると同時にすべての要素を指定したい場合は、array.from 関数を使用してください。

こちらもご覧ください

[array.from](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.from) [array.push](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.push) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.size](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.size) [array.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.remove) [array.shift](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.shift) [array.sum](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sum)

### array.percentile\_linear\_interpolation()

2個の多重定義

配列の値のうち、指定した割合 (パーセンタイル) 以下である値を、線形補間によって返します。

構文と多重定義

[```\\
array.percentile_linear_interpolation(id, percentage) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.percentile_linear_interpolation-0) [```\\
array.percentile_linear_interpolation(id, percentage) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.percentile_linear_interpolation-1)

引数

id (array<int/float>) 配列オブジェクト。

percentage (series int/float) 返された値と同じか、それ以下でなければならない値の割合。

備考

統計学では、あるスコア以下のランキング項目が占める割合をパーセンタイルと呼びます。この測定によって、標準的な度数分布の中で、測定基準となるパーセンタイルランクよりも低いスコアの割合が示されます。線形補間は、2つのランクの間にある値を推定します。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.reverse](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.reverse) [order.ascending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.ascending) [order.descending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.descending)

### array.percentile\_nearest\_rank()

2個の多重定義

配列の値に対して指定した割合 (パーセンタイル) 以下になる値を、最近順位法 (nearest-rank method) によって返します。

構文と多重定義

[```\\
array.percentile_nearest_rank(id, percentage) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.percentile_nearest_rank-0) [```\\
array.percentile_nearest_rank(id, percentage) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.percentile_nearest_rank-1)

引数

id (array<int/float>) 配列オブジェクト。

percentage (series int/float) 返された値と同じか、それ以下でなければならない値の割合。

備考

統計学では、あるスコア以下のランキング項目が占める割合をパーセンタイルと呼びます。この測定によって、標準的な度数分布の中で、測定基準となるパーセンタイルランクよりも低いスコアが占める割合が示されます。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.reverse](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.reverse) [order.ascending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.ascending) [order.descending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.descending)

### array.percentrank()

2個の多重定義

指定された `index` を付された要素のパーセンタイルランクを返します。

構文と多重定義

[```\\
array.percentrank(id, index) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.percentrank-0) [```\\
array.percentrank(id, index) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.percentrank-1)

引数

id (array<int/float>) 配列オブジェクト。

index (series int) パーセンタイルランクの計算対象となる要素のインデックス。

備考

パーセンタイルランクとは、配列の中で基準値以下の要素がどれくらいあるかを示す割合のことです。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.reverse](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.reverse) [order.ascending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.ascending) [order.descending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.descending)

### array.pop()

この関数は、配列から最後の要素を削除してその値を返します。

構文

```
array.pop(id) → series <type>
```

引数

id (any array type) 配列オブジェクト。

例

```
//@version=5
indicator("array.pop example")
a = array.new_float(5,high)
removedEl = array.pop(a)
plot(array.size(a))
plot(removedEl)
```

リターン

削除された要素の値。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.set) [array.push](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.push) [array.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.remove) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.shift](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.shift)

### array.push()

この関数は、配列に値を追加します。

構文

```
array.push(id, value) → void
```

引数

id (any array type) 配列オブジェクト。

value (series <type of the array's elements>) 配列の最後に追加される要素の値。

例

```
//@version=5
indicator("array.push example")
a = array.new_float(5, 0)
array.push(a, open)
plot(array.get(a, 5))
```

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.set) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.remove) [array.pop](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.pop) [array.unshift](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.unshift)

### array.range()

2個の多重定義

この関数は、指定された配列の最小値と最大値の差を返します。

構文と多重定義

[```\\
array.range(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.range-0) [```\\
array.range(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.range-1)

引数

id (array<int/float>) 配列オブジェクト。

例

```
//@version=5
indicator("array.range example")
a = array.new_float(0)
for i = 0 to 9
    array.push(a, close[i])
plot(array.range(a))
```

リターン

配列の最小値と最大値の差。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.min](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min) [array.max](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.max) [array.sum](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sum)

### array.remove()

この関数は、指定されたインデックスの要素を削除することで配列の内容を変更します。

構文

```
array.remove(id, index) → series <type>
```

引数

id (any array type) 配列オブジェクト。

index (series int) 削除する要素のインデックス。

例

```
//@version=5
indicator("array.remove example")
a = array.new_float(5,high)
removedEl = array.remove(a, 0)
plot(array.size(a))
plot(removedEl)
```

リターン

削除された要素の値。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.set) [array.push](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.push) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.pop](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.pop) [array.shift](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.shift)

### array.reverse()

この関数は配列を反転します。最初の配列要素が最後になり、最後の配列要素が最初になります。

構文

```
array.reverse(id) → void
```

引数

id (any array type) 配列オブジェクト。

例

```
//@version=5
indicator("array.reverse example")
a = array.new_float(0)
for i = 0 to 9
    array.push(a, close[i])
plot(array.get(a, 0))
array.reverse(a)
plot(array.get(a, 0))
```

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sort) [array.push](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.push) [array.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.set) [array.avg](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.avg)

### array.set()

この関数は、指定されたインデックスの要素の値を設定します。

構文

```
array.set(id, index, value) → void
```

引数

id (any array type) 配列オブジェクト。

index (series int) 変更する要素のインデックス。

value (series <type of the array's elements>) 設定する新しい値。

例

```
//@version=5
indicator("array.set example")
a = array.new_float(10)
for i = 0 to 9
    array.set(a, i, close[i])
plot(array.sum(a) / 10)
```

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice)

### array.shift()

この関数は、配列の最初の要素を削除してその値を返します。

構文

```
array.shift(id) → series <type>
```

引数

id (any array type) 配列オブジェクト。

例

```
//@version=5
indicator("array.shift example")
a = array.new_float(5,high)
removedEl = array.shift(a)
plot(array.size(a))
plot(removedEl)
```

リターン

削除された要素の値。

こちらもご覧ください

[array.unshift](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.unshift) [array.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.set) [array.push](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.push) [array.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.remove) [array.includes](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.includes)

### array.size()

この関数は、配列要素の数を返します。

構文

```
array.size(id) → series int
```

引数

id (any array type) 配列オブジェクト。

例

```
//@version=5
indicator("array.size example")
a = array.new_float(0)
for i = 0 to 9
    array.push(a, close[i])
// note that changes in slice also modify original array
slice = array.slice(a, 0, 5)
array.push(slice, open)
// size was changed in slice and in original array
plot(array.size(a))
plot(array.size(slice))
```

リターン

配列の要素の数。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.sum](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sum) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sort)

### array.slice()

この関数は、既存の配列からスライスを作成します。スライスのオブジェクトが変更されると、変更は新しい配列と元の配列の両方に適用されます。

構文

```
array.slice(id, index_from, index_to) → array<type>
```

引数

id (any array type) 配列オブジェクト。

index\_from (series int) 抽出を開始するゼロベースのインデックス。

index\_to (series int) 抽出を終了する前のゼロベースのインデックス。関数は、このインデックスの前までの要素を要素を抽出します。

例

```
//@version=5
indicator("array.slice example")
a = array.new_float(0)
for i = 0 to 9
    array.push(a, close[i])
// take elements from 0 to 4
// *note that changes in slice also modify original array
slice = array.slice(a, 0, 5)
plot(array.sum(a) / 10)
plot(array.sum(slice) / 5)
```

リターン

配列のスライスのシャローコピー。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sort)

### array.some()

配列 `id` の要素のうち少なくとも1つが [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) であれば [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を、そうでない場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。

構文

```
array.some(id) → series bool
```

引数

id (array<bool>) 配列オブジェクト。

備考

この関数は [int](https://jp.tradingview.com/pine-script-reference/v5/#type_int) と [float](https://jp.tradingview.com/pine-script-reference/v5/#type_float) 型の配列でも動作しますが、その場合、0は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) とみなされ、0以外の数値が [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) とみなされます。

こちらもご覧ください

[array.every](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.every) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get)

### array.sort()

この関数は、配列の要素を並べ替えます。

構文

```
array.sort(id, order) → void
```

引数

id (array<int/float/string>) 配列オブジェクト。

order (series sort\_order) ソート順: order.ascending (昇順) (デフォルトです) または order.descending (降順)。

例

```
//@version=5
indicator("array.sort example")
a = array.new_float(0,0)
for i = 0 to 5
    array.push(a, high[i])
array.sort(a, order.descending)
if barstate.islast
    label.new(bar_index, close, str.tostring(a))
```

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.reverse](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.reverse) [order.ascending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.ascending) [order.descending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.descending)

### array.sort\_indices()

元の配列をソートした時の要素のインデックスを返します。この時返されるインデックスは、ソート前の元の配列のインデックスです。これは元の配列を変更するものではありません。

構文

```
array.sort_indices(id, order) → array<int>
```

引数

id (array<int/float/string>) 配列オブジェクト。

order (series sort\_order) ソート順 : order.ascending(昇順)またはorder.descending(降順)。オプションです。デフォルトは昇順です。

例

```
//@version=5
indicator("array.sort_indices")
a = array.from(5, -2, 0, 9, 1)
sortedIndices = array.sort_indices(a) // [1, 2, 4, 0, 3]
indexOfSmallestValue = array.get(sortedIndices, 0) // 1
smallestValue = array.get(a, indexOfSmallestValue) // -2
plot(smallestValue)
```

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.slice](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.slice) [array.reverse](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.reverse) [order.ascending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.ascending) [order.descending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.descending)

### array.standardize()

2個の多重定義

この関数は、標準化された要素の配列を返します。

構文と多重定義

[```\\
array.standardize(id) → array<float>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.standardize-0) [```\\
array.standardize(id) → array<int>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.standardize-1)

引数

id (array<int/float>) 配列オブジェクト。

例

```
//@version=5
indicator("array.standardize example")
a = array.new_float(0)
for i = 0 to 9
    array.push(a, close[i])
b = array.standardize(a)
plot(array.min(b))
plot(array.max(b))
```

リターン

標準化された要素の配列。

こちらもご覧ください

[array.max](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.max) [array.min](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min) [array.mode](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.mode) [array.avg](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.avg) [array.variance](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.variance) [array.stdev](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.stdev)

### array.stdev()

2個の多重定義

この関数は、配列要素の標準偏差を返します。

構文と多重定義

[```\\
array.stdev(id, biased) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.stdev-0) [```\\
array.stdev(id, biased) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.stdev-1)

引数

id (array<int/float>) 配列オブジェクト。

biased (series bool) どの推定を用いるかを決定します。オプション引数です。デフォルトは true です。

例

```
//@version=5
indicator("array.stdev example")
a = array.new_float(0)
for i = 0 to 9
    array.push(a, close[i])
plot(array.stdev(a))
```

リターン

配列の要素の標準偏差。

備考

`biased` が true の場合、この関数は母集団全体のバイアスされた推定値を用いて計算し，false の場合はサンプルのバイアスされていない推定値を用います。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.max](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.max) [array.min](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min) [array.avg](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.avg)

### array.sum()

2個の多重定義

この関数は、配列要素の合計を返します。

構文と多重定義

[```\\
array.sum(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sum-0) [```\\
array.sum(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sum-1)

引数

id (array<int/float>) 配列オブジェクト。

例

```
//@version=5
indicator("array.sum example")
a = array.new_float(0)
for i = 0 to 9
    array.push(a, close[i])
plot(array.sum(a))
```

リターン

配列の要素の合計。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.max](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.max) [array.min](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min)

### array.unshift()

この関数は、配列の先頭に値を挿入します。

構文

```
array.unshift(id, value) → void
```

引数

id (any array type) 配列オブジェクト。

value (series <type of the array's elements>) 配列の先頭に追加する値。

例

```
//@version=5
indicator("array.unshift example")
a = array.new_float(5, 0)
array.unshift(a, open)
plot(array.get(a, 0))
```

こちらもご覧ください

[array.shift](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.shift) [array.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.set) [array.insert](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.insert) [array.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.remove) [array.indexof](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.indexof)

### array.variance()

2個の多重定義

この関数は、配列要素の分散を返します。

構文と多重定義

[```\\
array.variance(id, biased) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.variance-0) [```\\
array.variance(id, biased) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.variance-1)

引数

id (array<int/float>) 配列オブジェクト。

biased (series bool) どの推定を用いるかを決定します。オプション引数です。デフォルトは true です。

例

```
//@version=5
indicator("array.variance example")
a = array.new_float(0)
for i = 0 to 9
    array.push(a, close[i])
plot(array.variance(a))
```

リターン

配列の要素の分散。

備考

`biased` が true の場合、この関数は母集団全体のバイアスされた推定値を用いて計算し，false の場合はサンプルのバイアスされていない推定値を用います。

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.stdev](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.stdev) [array.min](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.min) [array.avg](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.avg) [array.covariance](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.covariance)

### map.clear()

マップをクリアします。キーと値のペアもそこからすべて削除されます。

構文

```
map.clear(id) → void
```

引数

id (any map type) マップオブジェクト。

例

```
//@version=5
indicator("map.clear example")
oddMap = map.new<int, bool>()
oddMap.put(1, true)
oddMap.put(2, false)
oddMap.put(3, true)
map.clear(oddMap)
plot(oddMap.size())
```

こちらもご覧ください

[map.new<type,type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.new%3Ctype,type%3E) [map.put\_all](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.put_all) [map.keys](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.keys) [map.values](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.values) [map.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.remove)

### map.contains()

`id` マップ内で `key` が見つかった場合には [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) を、そうでない場合は [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) を返します。

構文

```
map.contains(id, key) → series bool
```

引数

id (any map type) マップオブジェクト。

key (series <type of the map's elements>) マップ内を検索するキー。

例

```
//@version=5
indicator("map.includes example")
a = map.new<string, float>()
a.put("open", open)
p = close
if map.contains(a, "open")
    p := a.get("open")
plot(p)
```

こちらもご覧ください

[map.new<type,type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.new%3Ctype,type%3E) [map.put](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.put) [map.keys](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.keys) [map.values](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.values) [map.size](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.size)

### map.copy()

すでに存在するマップのコピーを作成します。

構文

```
map.copy(id) → map<keyType, valueType>
```

引数

id (any map type) コピーするマップオブジェクト。

例

```
//@version=5
indicator("map.copy example")
a = map.new<string, int>()
a.put("example", 1)
b = map.copy(a)
a := map.new<string, int>()
a.put("example", 2)
plot(a.get("example"))
plot(b.get("example"))
```

リターン

`id` マップのコピー。

こちらもご覧ください

[map.new<type,type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.new%3Ctype,type%3E) [map.put](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.put) [map.keys](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.keys) [map.values](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.values) [map.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.get) [map.size](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.size)

### map.get()

`id` マップ内で指定した `key` に関連する値を返します。

構文

```
map.get(id, key) → <value_type>
```

引数

id (any map type) マップオブジェクト。

key (series <type of the map's elements>) 取得する値のキー。

例

```
//@version=5
indicator("map.get example")
a = map.new<int, int>()
size = 10
for i = 0 to size
    a.put(i, size-i)
plot(map.get(a, 1))
```

こちらもご覧ください

[map.new<type,type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.new%3Ctype,type%3E) [map.put](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.put) [map.keys](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.keys) [map.values](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.values) [map.contains](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.contains)

### map.keys()

`id` マップのすべてのキーの配列を返します。結果の配列はコピーであり、そこに加えられた変更は元のマップには反映されません。

構文

```
map.keys(id) → array<type>
```

引数

id (any map type) マップオブジェクト。

例

```
//@version=5
indicator("map.keys example")
a = map.new<string, float>()
a.put("open", open)
a.put("high", high)
a.put("low", low)
a.put("close", close)
keys = map.keys(a)
ohlc = 0.0
for key in keys
    ohlc += a.get(key)
plot(ohlc/4)
```

備考

マップでは挿入順が維持されます。この関数によって返される配列内の要素も挿入順になります。

こちらもご覧ください

[map.new<type,type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.new%3Ctype,type%3E) [map.put](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.put) [map.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.get) [map.values](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.values) [map.size](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.size)

### map.new<type,type>()

新しいマップオブジェクトを作成します: キーと値のペアで構成されるコレクションで、この場合キーはすべて `keyType` で、値はすべて`valueType` になります。

`keyType` はプリミティブ型または列挙型(enum)。例: [int](https://jp.tradingview.com/pine-script-reference/v5/#type_int)、 [float](https://jp.tradingview.com/pine-script-reference/v5/#type_float)、 [bool](https://jp.tradingview.com/pine-script-reference/v5/#type_bool)、 [string](https://jp.tradingview.com/pine-script-reference/v5/#type_string)、 [color](https://jp.tradingview.com/pine-script-reference/v5/#type_color)

`valueType` は `array<>`、`matrix<>`、`map<>` 以外の任意の型を指定することができます。ユーザー定義型も使用可能で、フィールドの1つとして `array<>`、`matrix<>`、`map<>` がある型でも使用できます。

構文

```
map.new<keyType, valueType>() → map<keyType, valueType>
```

例

```
//@version=5
indicator("map.new<string, int> example")
a = map.new<string, int>()
a.put("example", 1)
label.new(bar_index, close, str.tostring(a.get("example")))
```

リターン

マップオブジェクトのIDで他のmap.\*() 関数で使用される可能性があるもの。

備考

それぞれのキーは一意であり、現れるのは一度のみです。マップに既に含まれているキーに新しい値を追加する場合、キーに紐づいた古い値をその値で置き換えることになります。

マップでは挿入順が維持されます。すでにマップ内にある `key` を持ったペアを挿入しても順番は変化しないことに注意してください。このような場合、`key` を持つ既存のペアは新しいペアで置き換えられます。

こちらもご覧ください

[map.put](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.put) [map.keys](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.keys) [map.values](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.values) [map.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.get) [array.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new%3Ctype%3E)

### map.put()

`id` マップにキーと値のペアを新しく追加します。

構文

```
map.put(id, key, value) → <value_type>
```

引数

id (any map type) マップオブジェクト。

key (series <type of the map's elements>) マップに挿入するキー。

value (series <type of the map's elements>) マップに挿入するキーの値。

例

```
//@version=5
indicator("map.put example")
a = map.new<string, float>()
map.put(a, "first", 10)
map.put(a, "second", 15)
prevFirst = map.put(a, "first", 20)
currFirst = a.get("first")
plot(prevFirst)
plot(currFirst)
```

リターン

キーが既にマップに存在する場合は、`key` に紐づけられた以前の値、キーが新しい場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na)。

備考

マップでは挿入順が維持されます。すでにマップ内にある `key` を持ったペアを挿入しても順番は変化しないことに注意してください。このような場合、`key` を持つ既存のペアは新しいペアで置き換えられます。

こちらもご覧ください

[map.new<type,type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.new%3Ctype,type%3E) [map.put\_all](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.put_all) [map.keys](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.keys) [map.values](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.values) [map.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.remove)

### map.put\_all()

`id2` マップから `id` マップに、キーと値のペアをすべて移動させます。

構文

```
map.put_all(id, id2) → void
```

引数

id (any map type) 追加を行うマップオブジェクト。

id2 (any map type) そこに追加されるマップオブジェクト。

例

```
//@version=5
indicator("map.put_all example")
a = map.new<string, float>()
b = map.new<string, float>()
a.put("first", 10)
a.put("second", 15)
b.put("third", 20)
map.put_all(a, b)
plot(a.get("third"))
```

こちらもご覧ください

[map.new<type,type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.new%3Ctype,type%3E) [map.put](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.put) [map.keys](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.keys) [map.values](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.values) [map.remove](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.remove)

### map.remove()

`id` マップからキーと値のペアを削除します。

構文

```
map.remove(id, key) → <value_type>
```

引数

id (any map type) マップオブジェクト。

key (series <type of the map's elements>) マップから削除するペアのキー。

例

```
//@version=5
indicator("map.remove example")
a = map.new<string, color>()
a.put("firstColor", color.green)
oldColorValue = map.remove(a, "firstColor")
plot(close, color = oldColorValue)
```

リターン

キーが既にマップに存在する場合は、`key` に紐づけられた以前の値、そのようなキーが存在しない場合は [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na)。

こちらもご覧ください

[map.new<type,type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.new%3Ctype,type%3E) [map.put](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.put) [map.keys](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.keys) [map.values](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.values) [map.clear](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.clear)

### map.size()

`id` マップ内のキーと値のペアの数を返します。

構文

```
map.size(id) → series int
```

引数

id (any map type) マップオブジェクト。

例

```
//@version=5
indicator("map.size example")
a = map.new<int, int>()
size = 10
for i = 0 to size
    a.put(i, size-i)
plot(map.size(a))
```

こちらもご覧ください

[map.new<type,type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.new%3Ctype,type%3E) [map.put](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.put) [map.keys](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.keys) [map.values](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.values) [map.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.get)

### map.values()

`id` マップのすべての値の配列を返します。結果の配列はコピーであり、そこに加えられた変更は元のマップには反映されません。

構文

```
map.values(id) → array<type>
```

引数

id (any map type) マップオブジェクト。

例

```
//@version=5
indicator("map.values example")
a = map.new<string, float>()
a.put("open", open)
a.put("high", high)
a.put("low", low)
a.put("close", close)
values = map.values(a)
ohlc = 0.0
for value in values
    ohlc += value
plot(ohlc/4)
```

備考

マップでは挿入順が維持されます。この関数によって返される配列内の要素も挿入順になります。

こちらもご覧ください

[map.new<type,type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.new%3Ctype,type%3E) [map.put](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.put) [map.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.get) [map.keys](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.keys) [map.size](https://jp.tradingview.com/pine-script-reference/v5/#fun_map.size)

### matrix.add\_col()

2個の多重定義

この関数は、行列 `column` のインデックス `id` に1つの列を追加します。この列は `na` 値から構成することができます。また、配列を用いて値を指定することもできます。

構文と多重定義

[```\\
matrix.add_col(id, column) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.add_col-0) [```\\
matrix.add_col(id, column, array_id) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.add_col-1)

引数

id (any matrix type) 行列のオブジェクト。

column (series int) 新しく列が挿入される列のインデックス。オプションです。デフォルト値は [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) です。

行列に列を追加

例

```
//@version=5
indicator("`matrix.add_col()` Example 1")

// Create a 2x3 "int" matrix containing values `0`.
m = matrix.new<int>(2, 3, 0)

// Add a column  with `na` values to the matrix.
matrix.add_col(m)

// Display matrix elements.
if barstate.islastconfirmedhistory
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Matrix elements:")
    table.cell(t, 0, 1, str.tostring(m))
```

行列に配列を列として追加

例

```
//@version=5
indicator("`matrix.add_col()` Example 2")

if barstate.islastconfirmedhistory
    // Create an empty matrix object.
    var m = matrix.new<int>()

    // Create an array with values `1` and `3`.
    var a = array.from(1, 3)

    // Add the `a` array as the first column of the empty matrix.
    matrix.add_col(m, 0, a)

    // Display matrix elements.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Matrix elements:")
    table.cell(t, 0, 1, str.tostring(m))
```

備考

空の行列に列を追加するよりも、明示的な次元をもつ行列を宣言し、そこに値を入れる方がはるかに効率的です。また、列の追加は [matrix.add\_row](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.add_row) 関数による行の追加よりもはるかに遅くなります。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows) [matrix.add\_row](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.add_row)

### matrix.add\_row()

2個の多重定義

この関数は、行列 `row` の `id` インデックスに1つの行を追加します。この行は `na` 値から構成することができます。また、配列を用いて値を指定することもできます。

構文と多重定義

[```\\
matrix.add_row(id, row) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.add_row-0) [```\\
matrix.add_row(id, row, array_id) → void\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.add_row-1)

引数

id (any matrix type) 行列のオブジェクト。

row (series int) 新しく行が挿入される行インデックス。オプションです。デフォルト値は [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows) です。

行列に行を追加

例

```
//@version=5
indicator("`matrix.add_row()` Example 1")

// Create a 2x3 "int" matrix containing values `0`.
m = matrix.new<int>(2, 3, 0)

// Add a row with `na` values to the matrix.
matrix.add_row(m)

// Display matrix elements.
if barstate.islastconfirmedhistory
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Matrix elements:")
    table.cell(t, 0, 1, str.tostring(m))
```

行列に配列を行として追加

例

```
//@version=5
indicator("`matrix.add_row()` Example 2")

if barstate.islastconfirmedhistory
    // Create an empty matrix object.
    var m = matrix.new<int>()

    // Create an array with values `1` and `2`.
    var a = array.from(1, 2)

    // Add the `a` array as the first row of the empty matrix.
    matrix.add_row(m, 0, a)

    // Display matrix elements.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Matrix elements:")
    table.cell(t, 0, 1, str.tostring(m))
```

備考

行と列のインデックスは0から始まります。空の行列に行を追加するよりも、明示的な次元を持つ行列を宣言し、そこに値を入れる方がはるかに効率的です。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows) [matrix.add\_col](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.add_col)

### matrix.avg()

2個の多重定義

この関数は、行列の全要素の平均を計算します。

構文と多重定義

[```\\
matrix.avg(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.avg-0) [```\\
matrix.avg(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.avg-1)

引数

id (matrix<int/float>) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.avg()` Example")

// Create a 2x2 matrix.
var m = matrix.new<int>(2, 2, na)
// Fill the matrix with values.
matrix.set(m, 0, 0, 1)
matrix.set(m, 0, 1, 2)
matrix.set(m, 1, 0, 3)
matrix.set(m, 1, 1, 4)

// Get the average value of the matrix.
var x = matrix.avg(m)

plot(x, 'Matrix average value')
```

リターン

行列 `id` の平均値。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.col()

この関数は、行列の列の要素から1次元配列を作成します。

構文

```
matrix.col(id, column) → array<type>
```

引数

id (any matrix type) 行列のオブジェクト。

column (series int) 要求された列のインデックス。

例

```
//@version=5
indicator("`matrix.col()` Example", "", true)

// Create a 2x3 "float" matrix from `hlc3` values.
m = matrix.new<float>(2, 3, hlc3)

// Return an array with the values of the first column of matrix `m`.
a = matrix.col(m, 0)

// Plot the first value from the array `a`.
plot(array.get(a, 0))
```

リターン

行列 `column` の `id` 値を含む配列のID。

備考

行のインデックスは0から始まります。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [matrix.col](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.col) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns)

### matrix.columns()

この関数は、行列の列数を返します。

構文

```
matrix.columns(id) → series int
```

引数

id (any matrix type) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.columns()` Example")

// Create a 2x6 matrix with values `0`.
var m = matrix.new<int>(2, 6, 0)

// Get the quantity of columns in matrix `m`.
var x = matrix.columns(m)

// Display using a label.
if barstate.islastconfirmedhistory
    label.new(bar_index, high, "Columns: " + str.tostring(x) + "\n" + str.tostring(m))
```

リターン

行列 `id` の列数。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.col](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.col) [matrix.row](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.row) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.concat()

この関数は、行列 `m2` に行列 `m1` を追加します。

構文

```
matrix.concat(id1, id2) → matrix<type>
```

引数

id1 (any matrix type) 連結される行列オブジェクト。

id2 (any matrix type) `id1` に追加される要素を持つ行列オブジェクト。

例

```
//@version=5
indicator("`matrix.concat()` Example")

// Create a 2x4 "int" matrix containing values `0`.
m1 = matrix.new<int>(2, 4, 0)
// Create a 2x4 "int" matrix containing values `1`.
m2 = matrix.new<int>(2, 4, 1)

// Append matrix `m2` to `m1`.
matrix.concat(m1, m2)

// Display matrix elements.
if barstate.islastconfirmedhistory
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Matrix Elements:")
    table.cell(t, 0, 1, str.tostring(m1))
```

リターン

行列 `id1` と連結された行列 `id2`。

備考

2つの行列の列数を等しくする必要があります。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.copy()

この関数は、元の行列のコピーとなる新しい行列を作成します。

構文

```
matrix.copy(id) → matrix<type>
```

引数

id (any matrix type) コピーする行列オブジェクト。

例

```
//@version=5
indicator("`matrix.copy()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x3 "float" matrix with `1` values.
    var m1 = matrix.new<float>(2, 3, 1)

    // Copy the matrix to a new one.
    // Note that unlike what `matrix.copy()` does,
    // the simple assignment operation `m2 = m1`
    // would NOT create a new copy of the `m1` matrix.
    // It would merely create a copy of its ID referencing the same matrix.
    var m2 = matrix.copy(m1)

    // Display using a table.
    var t = table.new(position.top_right, 5, 2, color.green)
    table.cell(t, 0, 0, "Original Matrix:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Matrix Copy:")
    table.cell(t, 1, 1, str.tostring(m2))
```

リターン

行列 `id` をコピーした新しい行列オブジェクト。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.det()

2個の多重定義

この関数は、正方行列の [行列式](https://en.wikipedia.org/wiki/Determinant) を返します。

構文と多重定義

[```\\
matrix.det(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.det-0) [```\\
matrix.det(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.det-1)

引数

id (matrix<int/float>) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.det` Example")

// Create a 2x2 matrix.
var m = matrix.new<float>(2, 2, na)
// Fill the matrix with values.
matrix.set(m, 0, 0,  3)
matrix.set(m, 0, 1,  7)
matrix.set(m, 1, 0,  1)
matrix.set(m, 1, 1, -4)

// Get the determinant of the matrix.
var x = matrix.det(m)

plot(x, 'Matrix determinant')
```

リターン

行列 `id` の行列式の値。

備考

関数の計算は [LU分解](https://en.wikipedia.org/wiki/LU_decomposition) アルゴリズムに基づいています。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.is\_square](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.is_square)

### matrix.diff()

2個の多重定義

この関数は、2つの行列 `id1` と `id2` の差、または `id1` 行列と `id2` スカラー (数値) の減算からなる新しい行列を返します。

構文と多重定義

[```\\
matrix.diff(id1, id2) → matrix<int>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.diff-0) [```\\
matrix.diff(id1, id2) → matrix<float>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.diff-1)

引数

id1 (matrix<int>) 減算を行う行列。

id2 (series int/float/matrix<int>) 差し引かれる行列オブジェクト、もしくはスカラー値。

2つの行列の差分

例

```
//@version=5
indicator("`matrix.diff()` Example 1")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x3 matrix containing values `5`.
    var m1 = matrix.new<float>(2, 3, 5)
    // Create a 2x3 matrix containing values `4`.
    var m2 = matrix.new<float>(2, 3, 4)
    // Create a new matrix containing the difference between matrices `m1` and `m2`.
    var m3 = matrix.diff(m1, m2)

    // Display using a table.
    var t = table.new(position.top_right, 1, 2, color.green)
    table.cell(t, 0, 0, "Difference between two matrices:")
    table.cell(t, 0, 1, str.tostring(m3))
```

行列とスカラー値の差分

例

```
//@version=5
indicator("`matrix.diff()` Example 2")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x3 matrix with values `4`.
    var m1 = matrix.new<float>(2, 3, 4)

    // Create a new matrix containing the difference between the `m1` matrix and the "int" value `1`.
    var m2 = matrix.diff(m1, 1)

    // Display using a table.
    var t = table.new(position.top_right, 1, 2, color.green)
    table.cell(t,  0, 0, "Difference between a matrix and a scalar:")
    table.cell(t,  0, 1, str.tostring(m2))
```

リターン

`id2` と `id1` の差を含む新しい行列オブジェクト。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.eigenvalues()

2個の多重定義

この関数は、正方行列の [固有値](https://en.wikipedia.org/wiki/Eigenvalues_and_eigenvectors) を含む配列を返します。

構文と多重定義

[```\\
matrix.eigenvalues(id) → array<float>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.eigenvalues-0) [```\\
matrix.eigenvalues(id) → array<int>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.eigenvalues-1)

引数

id (matrix<int/float>) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.eigenvalues()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x2 matrix.
    var m1 = matrix.new<int>(2, 2, na)
    // Fill the matrix with values.
    matrix.set(m1, 0, 0, 2)
    matrix.set(m1, 0, 1, 4)
    matrix.set(m1, 1, 0, 6)
    matrix.set(m1, 1, 1, 8)

    // Get the eigenvalues of the matrix.
    tr = matrix.eigenvalues(m1)

    // Display matrix elements.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Matrix elements:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Array of Eigenvalues:")
    table.cell(t, 1, 1, str.tostring(tr))
```

リターン

行列 `id` の固有値を含む配列。

備考

この関数は、「陰的QLアルゴリズム」を用いて計算されます。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.eigenvectors](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.eigenvectors)

### matrix.eigenvectors()

2個の多重定義

各列が行列 `id` の固有ベクトルになっている、 [固有ベクトル](https://en.wikipedia.org/wiki/Eigenvalues_and_eigenvectors) の行列を返します。

構文と多重定義

[```\\
matrix.eigenvectors(id) → matrix<float>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.eigenvectors-0) [```\\
matrix.eigenvectors(id) → matrix<int>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.eigenvectors-1)

引数

id (matrix<int/float>) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.eigenvectors()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x2 matrix
    var m1 = matrix.new<int>(2, 2, 1)
    // Fill the matrix with values.
    matrix.set(m1, 0, 0, 2)
    matrix.set(m1, 0, 1, 4)
    matrix.set(m1, 1, 0, 6)
    matrix.set(m1, 1, 1, 8)

    // Get the eigenvectors of the matrix.
    m2 = matrix.eigenvectors(m1)

    // Display matrix elements.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Matrix Elements:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Matrix Eigenvectors:")
    table.cell(t, 1, 1, str.tostring(m2))
```

リターン

行列 `id` の固有ベクトルを含む新しい行列。

備考

この関数は、「陰的QLアルゴリズム」を用いて計算されます。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.eigenvalues](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.eigenvalues)

### matrix.elements\_count()

この関数は、行列全要素の総数を返します。

構文

```
matrix.elements_count(id) → series int
```

引数

id (any matrix type) 行列のオブジェクト。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.fill()

この関数は、インデックス `id` から `from_column` ( `to_column`は含まない) および `from_row` から `to_row` (to\_row`は含まない) で定義される行列`value\` 内の矩形領域を で埋めます。

構文

```
matrix.fill(id, value, from_row, to_row, from_column, to_column) → void
```

引数

id (any matrix type) 行列のオブジェクト。

value (series <type of the matrix's elements>) 行列を埋める値。

from\_row (series int) 値の埋め込みを開始する行のインデックス (この値を含む) 。オプションです。デフォルト値は0です。

to\_row (series int) 値の埋め込みを終了する行のインデックス (この値を含まない) 。オプションです。デフォルト値は [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows) です。

from\_column (series int) 値の埋め込みを開始する列のインデックス (この値を含む) 。オプションです。デフォルト値は0です。

to\_column (series int) 値の埋め込みを終了する列のインデックス (この値を含まない) 。オプションです。デフォルト値は [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) です。

例

```
//@version=5
indicator("`matrix.fill()` Example")

// Create a 4x5 "int" matrix containing values `0`.
m = matrix.new<float>(4, 5, 0)

// Fill the intersection of rows 1 to 2 and columns 2 to 3 of the matrix with `hl2` values.
matrix.fill(m, hl2, 0, 2, 1, 3)

// Display using a label.
if barstate.islastconfirmedhistory
    label.new(bar_index, high, str.tostring(m))
```

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.get()

この関数は、指定された行列のインデックスの要素を返します。

構文

```
matrix.get(id, row, column) → <matrix_type>
```

引数

id (any matrix type) 行列のオブジェクト。

row (series int) 要求された行のインデックス。

column (series int) 要求された列のインデックス。

例

```
//@version=5
indicator("`matrix.get()` Example", "", true)

// Create a 2x3 "float" matrix from the `hl2` values.
m = matrix.new<float>(2, 3, hl2)

// Return the value of the element at index [0, 0] of matrix `m`.
x = matrix.get(m, 0, 0)

plot(x)
```

リターン

行列 `row` の `column` と `id` のインデックスに存在する要素の値。

備考

行と列のインデックスは0から始まります。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.inv()

2個の多重定義

この関数は、正方行列の [逆行列](https://en.wikipedia.org/wiki/Invertible_matrix) を返します。

構文と多重定義

[```\\
matrix.inv(id) → matrix<float>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.inv-0) [```\\
matrix.inv(id) → matrix<int>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.inv-1)

引数

id (matrix<int/float>) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.inv()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x2 matrix.
    var m1 = matrix.new<int>(2, 2, na)
    // Fill the matrix with values.
    matrix.set(m1, 0, 0, 1)
    matrix.set(m1, 0, 1, 2)
    matrix.set(m1, 1, 0, 3)
    matrix.set(m1, 1, 1, 4)

    // Inverse of the matrix.
    var m2 = matrix.inv(m1)

    // Display matrix elements.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Original Matrix:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Inverse matrix:")
    table.cell(t, 1, 1, str.tostring(m2))
```

リターン

行列 `id` の逆行列になる新しい行列。

備考

この関数は、 [LU分解](https://en.wikipedia.org/wiki/LU_decomposition) アルゴリズムを用いて計算されます。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.pinv](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.pinv) [matrix.copy](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.copy) [str.tostring](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tostring)

### matrix.is\_antidiagonal()

この関数は，行列が [反対角](https://en.wikipedia.org/wiki/Anti-diagonal_matrix) (反対角線以外の全要素が0) かどうかを判定します。

構文

```
matrix.is_antidiagonal(id) → series bool
```

引数

id (matrix<int/float>) テストする行列オブジェクト。

リターン

行列 `id` が反対角行列の場合はtrue、そうでない場合はfalseを返します。

備考

非正方行列の場合は、falseを返します。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.is\_square](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.is_square) [matrix.is\_identity](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.is_identity) [matrix.is\_diagonal](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.is_diagonal)

### matrix.is\_antisymmetric()

この関数は、行列が [反対称](https://en.wikipedia.org/wiki/Skew-symmetric_matrix) (その [転置](https://en.wikipedia.org/wiki/Transpose) が自身の負に等しいもの) かどうかを判定します。

構文

```
matrix.is_antisymmetric(id) → series bool
```

引数

id (matrix<int/float>) テストする行列オブジェクト。

リターン

行列 `id` が反対称行列の場合はtrue、そうでない場合はfalseを返します。

備考

非正方行列の場合は、falseを返します。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.is\_square](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.is_square)

### matrix.is\_binary()

この関数は、行列が [論理行列](https://en.wikipedia.org/wiki/Logical_matrix) (全要素が0または1) かどうかを判定します。

構文

```
matrix.is_binary(id) → series bool
```

引数

id (matrix<int/float>) テストする行列オブジェクト。

リターン

行列 `id` が論理行列の場合はtrue、そうでない場合はfalseを返します。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set)

### matrix.is\_diagonal()

この関数は、行列が [対角](https://en.wikipedia.org/wiki/Diagonal_matrix) (主対角線以外の全要素が0) かどうかを判定します。

構文

```
matrix.is_diagonal(id) → series bool
```

引数

id (matrix<int/float>) テストする行列オブジェクト。

リターン

行列 `id` が対角行列の場合はtrue、そうでない場合はfalseを返します。

備考

非正方行列の場合は、falseを返します。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.is\_square](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.is_square) [matrix.is\_identity](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.is_identity) [matrix.is\_antidiagonal](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.is_antidiagonal)

### matrix.is\_identity()

この関数は、行列が [単位行列](https://en.wikipedia.org/wiki/Identity_matrix) ( [主対角線](https://en.wikipedia.org/wiki/Main_diagonal) の要素が全て1で、その他の要素は全て0) かどうかを決定します。

構文

```
matrix.is_identity(id) → series bool
```

引数

id (matrix<int/float>) テストする行列オブジェクト。

リターン

`id` が単位行列の場合はtrue、そうでない場合にはfalseを返します。

備考

非正方行列の場合は、falseを返します。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.is\_square](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.is_square) [matrix.is\_diagonal](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.is_diagonal)

### matrix.is\_square()

この関数は、行列が [正方](https://en.wikipedia.org/wiki/Square_matrix) (行と列の数が同じ) かどうかを判定します。

構文

```
matrix.is_square(id) → series bool
```

引数

id (any matrix type) テストする行列オブジェクト。

リターン

行列 `id` が正方行列の場合はtrue、そうでない場合はfalseを返します。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.is\_stochastic()

この関数は、行列が [確率行列](https://en.wikipedia.org/wiki/Stochastic_matrix) かどうかを判定します。

構文

```
matrix.is_stochastic(id) → series bool
```

引数

id (matrix<int/float>) テストする行列オブジェクト。

リターン

行列 `id` が確率行列の場合はtrue、そうでない場合はfalseを返します。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set)

### matrix.is\_symmetric()

この関数は、 [正方行列](https://en.wikipedia.org/wiki/Square_matrix) が [対称行列](https://en.wikipedia.org/wiki/Symmetric_matrix) (要素が [主対角線](https://en.wikipedia.org/wiki/Main_diagonal) に対して対称) かどうかを決定します。

構文

```
matrix.is_symmetric(id) → series bool
```

引数

id (matrix<int/float>) テストする行列オブジェクト。

リターン

行列 `id` が対称行列の場合はtrue、そうでない場合はfalseを返します。

備考

非正方行列の場合は、falseを返します。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.is\_square](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.is_square)

### matrix.is\_triangular()

この関数は、行列が [三角形](https://en.wikipedia.org/wiki/Triangular_matrix) ( [主対角線](https://en.wikipedia.org/wiki/Main_diagonal) の上または下にある全要素が0) かどうかを判定します。

構文

```
matrix.is_triangular(id) → series bool
```

引数

id (matrix<int/float>) テストする行列オブジェクト。

リターン

行列 `id` が三角行列の場合はtrue、そうでない場合はfalseを返します。

備考

非正方行列の場合は、falseを返します。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.is\_square](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.is_square)

### matrix.is\_zero()

この関数は、行列の全要素が0かどうかを決定します。

構文

```
matrix.is_zero(id) → series bool
```

引数

id (matrix<int/float>) チェックする行列オブジェクト。

リターン

行列 `id` の全要素が0の場合はtrue、そうでない場合にはfalseを返します。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set)

### matrix.kron()

2個の多重定義

この関数は、行列 `id1` と `id2` の [クロネッカー積](https://en.wikipedia.org/wiki/Kronecker_product) を返します。

構文と多重定義

[```\\
matrix.kron(id1, id2) → matrix<float>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.kron-0) [```\\
matrix.kron(id1, id2) → matrix<int>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.kron-1)

引数

id1 (matrix<int/float>) 最初の行列オブジェクト。

id2 (matrix<int/float>) 2番目の行列オブジェクト。

例

```
//@version=5
indicator("`matrix.kron()` Example")

// Display using a table.
if barstate.islastconfirmedhistory
    // Create two matrices with default values `1` and `2`.
    var m1 = matrix.new<float>(2, 2, 1)
    var m2 = matrix.new<float>(2, 2, 2)

    // Calculate the Kronecker product of the matrices.
    var m3 = matrix.kron(m1, m2)

    // Display matrix elements.
    var t = table.new(position.top_right, 5, 2, color.green)
    table.cell(t, 0, 0, "Matrix 1:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 1, "⊗")
    table.cell(t, 2, 0, "Matrix 2:")
    table.cell(t, 2, 1, str.tostring(m2))
    table.cell(t, 3, 1, "=")
    table.cell(t, 4, 0, "Kronecker product:")
    table.cell(t, 4, 1, str.tostring(m3))
```

リターン

`id1` と `id2` の [クロネッカー積](https://en.wikipedia.org/wiki/Kronecker_product) を含む新しい行列。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.mult](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.mult) [str.tostring](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tostring) [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new)

### matrix.max()

2個の多重定義

この関数は、行列の要素から最大の値を返します。

構文と多重定義

[```\\
matrix.max(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.max-0) [```\\
matrix.max(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.max-1)

引数

id (matrix<int/float>) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.max()` Example")

// Create a 2x2 matrix.
var m = matrix.new<int>(2, 2, na)
// Fill the matrix with values.
matrix.set(m, 0, 0, 1)
matrix.set(m, 0, 1, 2)
matrix.set(m, 1, 0, 3)
matrix.set(m, 1, 1, 4)

// Get the maximum value in the matrix.
var x = matrix.max(m)

plot(x, 'Matrix maximum value')
```

リターン

行列 `id` 内の最大値。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.min](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.min) [matrix.avg](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.avg) [matrix.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.sort)

### matrix.median()

2個の多重定義

この関数は、行列内の要素の [メジアン](https://en.wikipedia.org/wiki/Median) (中央値) を計算します。

構文と多重定義

[```\\
matrix.median(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.median-0) [```\\
matrix.median(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.median-1)

引数

id (matrix<int/float>) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.median()` Example")

// Create a 2x2 matrix.
m = matrix.new<int>(2, 2, na)
// Fill the matrix with values.
matrix.set(m, 0, 0, 1)
matrix.set(m, 0, 1, 2)
matrix.set(m, 1, 0, 3)
matrix.set(m, 1, 1, 4)

// Get the median of the matrix.
x = matrix.median(m)

plot(x, 'Median of the matrix')
```

備考

メジアン算出時には、行列の [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) 要素が考慮されないことにご注意下さい。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.mode](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.mode) [matrix.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.sort) [matrix.avg](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.avg)

### matrix.min()

2個の多重定義

この関数は、行列の要素から最小の値を返します。

構文と多重定義

[```\\
matrix.min(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.min-0) [```\\
matrix.min(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.min-1)

引数

id (matrix<int/float>) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.min()` Example")

// Create a 2x2 matrix.
var m = matrix.new<int>(2, 2, na)
// Fill the matrix with values.
matrix.set(m, 0, 0, 1)
matrix.set(m, 0, 1, 2)
matrix.set(m, 1, 0, 3)
matrix.set(m, 1, 1, 4)

// Get the minimum value from the matrix.
var x = matrix.min(m)

plot(x, 'Matrix minimum value')
```

リターン

行列 `id` 内の最小値。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.max](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.max) [matrix.avg](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.avg) [matrix.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.sort)

### matrix.mode()

2個の多重定義

この関数は、行列の [モード](https://en.wikipedia.org/wiki/Mode_(statistics)) (最頻値) を求めるもので、行列の要素から最頻値を抽出します．同じ頻度で出現する複数の値が存在する場合は、その中で最も小さい値を返します。

構文と多重定義

[```\\
matrix.mode(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.mode-0) [```\\
matrix.mode(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.mode-1)

引数

id (matrix<int/float>) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.mode()` Example")

// Create a 2x2 matrix.
var m = matrix.new<int>(2, 2, na)
// Fill the matrix with values.
matrix.set(m, 0, 0, 0)
matrix.set(m, 0, 1, 0)
matrix.set(m, 1, 0, 1)
matrix.set(m, 1, 1, 1)

// Get the mode of the matrix.
var x = matrix.mode(m)

plot(x, 'Mode of the matrix')
```

リターン

行列`id`の最頻値。存在しない場合は、その代わりに最小値を返します。

備考

モード算出時には、行列の [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) 要素が考慮されないことにご注意下さい。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.median](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.median) [matrix.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.sort) [matrix.avg](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.avg)

### matrix.mult()

4個の多重定義

この関数は、行列 `id1` と `id2` の [乗法](https://en.wikipedia.org/wiki/Matrix_multiplication) 、あるいは `id1` 行列と `id2` スカラー (数値)、あるいは `id1` 行列と `id2` ベクトル (値の配列) から成る新たな行列を返します。

構文と多重定義

[```\\
matrix.mult(id1, id2) → array<int>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.mult-0) [```\\
matrix.mult(id1, id2) → array<float>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.mult-1) [```\\
matrix.mult(id1, id2) → matrix<int>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.mult-2) [```\\
matrix.mult(id1, id2) → matrix<float>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.mult-3)

引数

id1 (matrix<int>) 最初の行列オブジェクト。

id2 (array<int>) 2番目の行列オブジェクト、値または配列。

2つの行列の積

例

```
//@version=5
indicator("`matrix.mult()` Example 1")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 6x2 matrix containing values `5`.
    var m1 = matrix.new<float>(6, 2, 5)
    // Create a 2x3 matrix containing values `4`.
    // Note that it must have the same quantity of rows as there are columns in the first matrix.
    var m2 = matrix.new<float>(2, 3, 4)
    // Create a new matrix from the multiplication of the two matrices.
    var m3 = matrix.mult(m1, m2)

    // Display using a table.
    var t = table.new(position.top_right, 1, 2, color.green)
    table.cell(t, 0, 0, "Product of two matrices:")
    table.cell(t, 0, 1, str.tostring(m3))
```

行列とスカラーの積

例

```
//@version=5
indicator("`matrix.mult()` Example 2")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x3 matrix containing values `4`.
    var m1 = matrix.new<float>(2, 3, 4)

    // Create a new matrix from the product of the two matrices.
    scalar = 5
    var m2 = matrix.mult(m1, scalar)

    // Display using a table.
    var t = table.new(position.top_right, 5, 2, color.green)
    table.cell(t, 0, 0, "Matrix 1:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 1, "x")
    table.cell(t, 2, 0, "Scalar:")
    table.cell(t, 2, 1, str.tostring(scalar))
    table.cell(t, 3, 1, "=")
    table.cell(t, 4, 0, "Matrix 2:")
    table.cell(t, 4, 1, str.tostring(m2))
```

行列とベクトル配列の積

例

```
//@version=5
indicator("`matrix.mult()` Example 3")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x3 matrix containing values `4`.
    var m1 = matrix.new<int>(2, 3, 4)

    // Create an array of three elements.
    var int[] a = array.from(1, 1, 1)

    // Create a new matrix containing the product of the `m1` matrix and the `a` array.
    var m3 = matrix.mult(m1, a)

    // Display using a table.
    var t = table.new(position.top_right, 5, 2, color.green)
    table.cell(t, 0, 0, "Matrix 1:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 1, "x")
    table.cell(t, 2, 0, "Value:")
    table.cell(t, 2, 1, str.tostring(a, " "))
    table.cell(t, 3, 1, "=")
    table.cell(t, 4, 0, "Matrix 3:")
    table.cell(t, 4, 1, str.tostring(m3))
```

リターン

`id2` と `id1` の積を含む新しい行列オブジェクト。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.sum](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.sum) [matrix.diff](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.diff)

### matrix.new<type>()

この関数は、新しい行列オブジェクトを作成します。行列とは、行と列を含む2次元データ構造です。行列のすべての要素は、タイプテンプレート ("<type>") で指定された型である必要があります。

構文

```
matrix.new<type>(rows, columns, initial_value) → matrix<type>
```

引数

rows (series int) 行列の初期行数。オプションです。デフォルトは0です。

columns (series int) 行列の初期列数。オプションです。デフォルトは0です。

initial\_value (<matrix\_type>) 行列の全要素の初期値。オプションです。デフォルトは 'na' です。

同じ初期値を持つ要素の行列を作成

例

```
//@version=5
indicator("`matrix.new<type>()` Example 1")

// Create a 2x3 (2 rows x 3 columns) "int" matrix with values zero.
var m = matrix.new<int>(2, 3, 0)

// Display using a label.
if barstate.islastconfirmedhistory
    label.new(bar_index, high, str.tostring(m))
```

配列の値から行列を作成

例

```
//@version=5
indicator("`matrix.new<type>()` Example 2")

// Function to create a matrix whose rows are filled with array values.
matrixFromArray(int rows, int columns, array<float> data) =>
    m = matrix.new<float>(rows, columns)
    for i = 0 to rows <= 0 ? na : rows - 1
        for j = 0 to columns <= 0 ? na : columns - 1
            matrix.set(m, i, j, array.get(data, i * columns + j))
    m

// Create a 3x3 matrix from an array of values.
var m1 = matrixFromArray(3, 3, array.from(1, 2, 3, 4, 5, 6, 7, 8, 9))
// Display using a label.
if barstate.islastconfirmedhistory
    label.new(bar_index, high, str.tostring(m1))
```

`input.text_area()` フィールドから行列を作成

例

```
//@version=5
indicator("`matrix.new<type>()` Example 3")

// Function to create a matrix from a text string.
// Values in a row must be separated by a space. Each line is one row.
matrixFromInputArea(stringOfValues) =>
    var rowsArray = str.split(stringOfValues, "\n")
    var rows = array.size(rowsArray)
    var cols = array.size(str.split(array.get(rowsArray, 0), " "))
    var matrix = matrix.new<float>(rows, cols, na)
    row = 0
    for rowString in rowsArray
        col = 0
        values = str.split(rowString, " ")
        for val in values
            matrix.set(matrix, row, col, str.tonumber(val))
            col += 1
        row += 1
    matrix

stringInput = input.text_area("1 2 3\n4 5 6\n7 8 9")
var m = matrixFromInputArea(stringInput)

// Display using a label.
if barstate.islastconfirmedhistory
    label.new(bar_index, high, str.tostring(m))
```

ランダムな値から行列を作成

例

```
//@version=5
indicator("`matrix.new<type>()` Example 4")

// Function to create a matrix with random values (0.0 to 1.0).
matrixRandom(int rows, int columns)=>
    result = matrix.new<float>(rows, columns)
    for i = 0 to rows - 1
        for j = 0 to columns - 1
            matrix.set(result, i, j, math.random())
    result

// Create a 2x3 matrix with random values.
var m = matrixRandom(2, 3)

// Display using a label.
if barstate.islastconfirmedhistory
    label.new(bar_index, high, str.tostring(m))
```

リターン

新しい行列オブジェクトのID。

こちらもご覧ください

[matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.fill](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.fill) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows) [array.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new%3Ctype%3E)

### matrix.pinv()

2個の多重定義

この関数は、行列の [擬似逆行列](https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse) を返します。

構文と多重定義

[```\\
matrix.pinv(id) → matrix<float>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.pinv-0) [```\\
matrix.pinv(id) → matrix<int>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.pinv-1)

引数

id (matrix<int/float>) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.pinv()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x2 matrix.
    var m1 = matrix.new<int>(2, 2, na)
    // Fill the matrix with values.
    matrix.set(m1, 0, 0, 1)
    matrix.set(m1, 0, 1, 2)
    matrix.set(m1, 1, 0, 3)
    matrix.set(m1, 1, 1, 4)

    // Pseudoinverse of the matrix.
    var m2 = matrix.pinv(m1)

    // Display matrix elements.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Original Matrix:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Pseudoinverse matrix:")
    table.cell(t, 1, 1, str.tostring(m2))
```

リターン

行列 `id` の疑似逆行列を含む新しい行列。

備考

この関数は，行列の特異値分解に基づいた [ムーア \- ペンローズ](https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse#Definition) 逆行列の式を用いて計算されます。非特異の正方行列に対しては、 [matrix.inv](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.inv) の結果を返します。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.inv](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.inv)

### matrix.pow()

2個の多重定義

この関数は、行列の累乗を `power` 回計算します。

構文と多重定義

[```\\
matrix.pow(id, power) → matrix<float>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.pow-0) [```\\
matrix.pow(id, power) → matrix<int>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.pow-1)

引数

id (matrix<int/float>) 行列のオブジェクト。

power (series int) 行列を累乗する回数。

例

```
//@version=5
indicator("`matrix.pow()` Example")

// Display using a table.
if barstate.islastconfirmedhistory
    // Create a 2x2 matrix.
    var m1 = matrix.new<int>(2, 2, 2)
    // Calculate the power of three of the matrix.
    var m2 = matrix.pow(m1, 3)

    // Display matrix elements.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Original Matrix:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Matrix³:")
    table.cell(t, 1, 1, str.tostring(m2))
```

リターン

行列 `id` を `power` 回累乗したもの。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.mult](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.mult)

### matrix.rank()

この関数は、行列の [階数](https://en.wikipedia.org/wiki/Rank_(linear_algebra)) を計算します。

構文

```
matrix.rank(id) → series int
```

引数

id (any matrix type) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.rank()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x2 matrix.
    var m1 = matrix.new<int>(2, 2, na)
    // Fill the matrix with values.
    matrix.set(m1, 0, 0, 1)
    matrix.set(m1, 0, 1, 2)
    matrix.set(m1, 1, 0, 3)
    matrix.set(m1, 1, 1, 4)

    // Get the rank of the matrix.
    r = matrix.rank(m1)

    // Display matrix elements.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Matrix elements:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Rank of the matrix:")
    table.cell(t, 1, 1, str.tostring(r))
```

リターン

行列 `id` の階数。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [str.tostring](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tostring)

### matrix.remove\_col()

この関数は、行列 `column` の `id` インデックスで列を削除し、削除された列の値を含む配列を返します。

構文

```
matrix.remove_col(id, column) → array<type>
```

引数

id (any matrix type) 行列のオブジェクト。

column (series int) 削除する列のインデックスを指定します。オプションです。デフォルト値は [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) です。

例

```
//@version=5
indicator("matrix_remove_col", overlay = true)

// Create a 2x2 matrix with ones.
var matrixOrig = matrix.new<int>(2, 2, 1)

// Set values to the 'matrixOrig' matrix.
matrix.set(matrixOrig, 0, 1, 2)
matrix.set(matrixOrig, 1, 0, 3)
matrix.set(matrixOrig, 1, 1, 4)

// Create a copy of the 'matrixOrig' matrix.
matrixCopy = matrix.copy(matrixOrig)

// Remove the first column from the `matrixCopy` matrix.
arr = matrix.remove_col(matrixCopy, 0)

// Display matrix elements.
if barstate.islastconfirmedhistory
    var t = table.new(position.top_right, 3, 2, color.green)
    table.cell(t, 0, 0, "Original Matrix:")
    table.cell(t, 0, 1, str.tostring(matrixOrig))
    table.cell(t, 1, 0, "Removed Elements:")
    table.cell(t, 1, 1, str.tostring(arr))
    table.cell(t, 2, 0, "Result Matrix:")
    table.cell(t, 2, 1, str.tostring(matrixCopy))
```

リターン

行列 `id` から削除された列の要素を含む配列。

備考

行と列のインデックスは0から始まります。行の追加や削除によって行列を構築するよりも、次元を明示的に指定して行列を宣言する方がはるかに効率的です。また、列の削除は [matrix.remove\_row](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.remove_row) 関数による行の削除よりもはるかに遅くなります。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.copy](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.copy) [matrix.remove\_row](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.remove_row)

### matrix.remove\_row()

この関数は、行列 `row` の `id` インデックスで行を削除し，削除された行の値を含む配列を返します。

構文

```
matrix.remove_row(id, row) → array<type>
```

引数

id (any matrix type) 行列のオブジェクト。

row (series int) 削除する行のインデックスを指定します。オプションです。デフォルト値は [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows) です。

例

```
//@version=5
indicator("matrix_remove_row", overlay = true)

// Create a 2x2 "int" matrix containing values `1`.
var matrixOrig = matrix.new<int>(2, 2, 1)

// Set values to the 'matrixOrig' matrix.
matrix.set(matrixOrig, 0, 1, 2)
matrix.set(matrixOrig, 1, 0, 3)
matrix.set(matrixOrig, 1, 1, 4)

// Create a copy of the 'matrixOrig' matrix.
matrixCopy = matrix.copy(matrixOrig)

// Remove the first row from the matrix `matrixCopy`.
arr = matrix.remove_row(matrixCopy, 0)

// Display matrix elements.
if barstate.islastconfirmedhistory
    var t = table.new(position.top_right, 3, 2, color.green)
    table.cell(t, 0, 0, "Original Matrix:")
    table.cell(t, 0, 1, str.tostring(matrixOrig))
    table.cell(t, 1, 0, "Removed Elements:")
    table.cell(t, 1, 1, str.tostring(arr))
    table.cell(t, 2, 0, "Result Matrix:")
    table.cell(t, 2, 1, str.tostring(matrixCopy))
```

リターン

行列 `id` から削除された行の要素を含む配列。

備考

行と列のインデックスは0から始まります。行の追加や削除によって行列を構築するよりも、次元を明示的に指定して行列を宣言する方がはるかに効率的です。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.copy](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.copy) [matrix.remove\_col](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.remove_col)

### matrix.reshape()

この関数は、行列 `id` を `rows` x `cols` の次元に再構築します。

構文

```
matrix.reshape(id, rows, columns) → void
```

引数

id (any matrix type) 行列のオブジェクト。

rows (series int) 再構成された行列の行数。

columns (series int) 再構成された行列の列数。

例

```
//@version=5
indicator("`matrix.reshape()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x3 matrix.
    var m1 = matrix.new<float>(2, 3)
    // Fill the matrix with values.
    matrix.set(m1, 0, 0, 1)
    matrix.set(m1, 0, 1, 2)
    matrix.set(m1, 0, 2, 3)
    matrix.set(m1, 1, 0, 4)
    matrix.set(m1, 1, 1, 5)
    matrix.set(m1, 1, 2, 6)

    // Copy the matrix to a new one.
    var m2 = matrix.copy(m1)

    // Reshape the copy to a 3x2.
    matrix.reshape(m2, 3, 2)

    // Display using a table.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Original matrix:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Reshaped matrix:")
    table.cell(t, 1, 1, str.tostring(m2))
```

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.add\_row](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.add_row) [matrix.add\_col](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.add_col)

### matrix.reverse()

この関数は、行列 `id` の行と列の順序を逆にします。最初の行と列が最後の行と列になり、最後の行と列が最初の行と列になります。

構文

```
matrix.reverse(id) → void
```

引数

id (any matrix type) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.reverse()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Copy the matrix to a new one.
    var m1 = matrix.new<int>(2, 2, na)
    // Fill the matrix with values.
    matrix.set(m1, 0, 0, 1)
    matrix.set(m1, 0, 1, 2)
    matrix.set(m1, 1, 0, 3)
    matrix.set(m1, 1, 1, 4)

    // Copy matrix elements to a new matrix.
    var m2 = matrix.copy(m1)

    // Reverse the `m2` copy of the original matrix.
    matrix.reverse(m2)

    // Display using a table.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Original matrix:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Reversed matrix:")
    table.cell(t, 1, 1, str.tostring(m2))
```

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows) [matrix.reshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.reshape)

### matrix.row()

この関数は、行列の行の要素から1次元配列を作成します。

構文

```
matrix.row(id, row) → array<type>
```

引数

id (any matrix type) 行列のオブジェクト。

row (series int) 要求された行のインデックス。

例

```
//@version=5
indicator("`matrix.row()` Example", "", true)

// Create a 2x3 "float" matrix from `hlc3` values.
m = matrix.new<float>(2, 3, hlc3)

// Return an array with the values of the first row of the matrix.
a = matrix.row(m, 0)

// Plot the first value from the array `a`.
plot(array.get(a, 0))
```

リターン

行列 `row` の `id` 値を含む配列のID。

備考

行のインデックスは0から始まります。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [array.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.get) [matrix.col](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.col) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.rows()

この関数は、行列の行数を返します。

構文

```
matrix.rows(id) → series int
```

引数

id (any matrix type) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.rows()` Example")

// Create a 2x6 matrix with values `0`.
var m = matrix.new<int>(2, 6, 0)

// Get the quantity of rows in the matrix.
var x = matrix.rows(m)

// Display using a label.
if barstate.islastconfirmedhistory
    label.new(bar_index, high, "Rows: " + str.tostring(x) + "\n" + str.tostring(m))
```

リターン

行列 `id` の行数。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.row](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.row)

### matrix.set()

この関数は、行列 `value` の `row` と `column` に存在する要素に `id` を代入します。

構文

```
matrix.set(id, row, column, value) → void
```

引数

id (any matrix type) 行列のオブジェクト。

row (series int) 変更する要素の行インデックス。

column (series int) 変更する要素の列インデックス。

value (series <type of the matrix's elements>) 設定する新しい値。

例

```
//@version=5
indicator("`matrix.set()` Example")

// Create a 2x3 "int" matrix containing values `4`.
m = matrix.new<int>(2, 3, 4)

// Replace the value of element at row 1 and column 2 with value `3`.
matrix.set(m, 0, 1, 3)

// Display using a label.
if barstate.islastconfirmedhistory
    label.new(bar_index, high, str.tostring(m))
```

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.sort()

この関数は、行列 `id` の行を `column` の値のソート順に従って並べ替えます。

構文

```
matrix.sort(id, column, order) → void
```

引数

id (matrix<int/float/string>) ソートされる行列オブジェクト。

column (series int) 列のインデックスで、行の新しい順序を決定するソートされた値のこと。オプションです。デフォルト値は0です。

order (series sort\_order) ソート順。可能な値は [order.ascending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.ascending) (デフォルトです)、 [order.descending](https://jp.tradingview.com/pine-script-reference/v5/#const_order.descending) です。

例

```
//@version=5
indicator("`matrix.sort()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x2 matrix.
    var m1 = matrix.new<float>(2, 2, na)
    // Fill the matrix with values.
    matrix.set(m1, 0, 0, 3)
    matrix.set(m1, 0, 1, 4)
    matrix.set(m1, 1, 0, 1)
    matrix.set(m1, 1, 1, 2)

    // Copy the matrix to a new one.
    var m2 = matrix.copy(m1)
    // Sort the rows of `m2` using the default arguments (first column and ascending order).
    matrix.sort(m2)

    // Display using a table.
    if barstate.islastconfirmedhistory
        var t = table.new(position.top_right, 2, 2, color.green)
        table.cell(t, 0, 0, "Original matrix:")
        table.cell(t, 0, 1, str.tostring(m1))
        table.cell(t, 1, 0, "Sorted matrix:")
        table.cell(t, 1, 1, str.tostring(m2))
```

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.max](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.max) [matrix.min](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.min) [matrix.avg](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.avg)

### matrix.submatrix()

この関数は、指定されたインデックスに含まれる行列 `id` の部分行列を抽出します。

構文

```
matrix.submatrix(id, from_row, to_row, from_column, to_column) → matrix<type>
```

引数

id (any matrix type) 行列のオブジェクト。

from\_row (series int) 抽出を開始する行のインデックス (この値を含む) 。オプションです。デフォルト値は0です。

to\_row (series int) 抽出を終了する行のインデックス (この値を含まない) 。オプションです。デフォルト値は [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows) です。

from\_column (series int) 抽出を開始する列のインデックス (この値を含む) 。オプションです。デフォルト値は0です。

to\_column (series int) 抽出を終了する列のインデックス (この値を含まない) 。オプションです。デフォルト値は [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) です。

例

```
//@version=5
indicator("`matrix.submatrix()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x3 matrix matrix with values `0`.
    var m1 = matrix.new<int>(2, 3, 0)
    // Fill the matrix with values.
    matrix.set(m1, 0, 0, 1)
    matrix.set(m1, 0, 1, 2)
    matrix.set(m1, 0, 2, 3)
    matrix.set(m1, 1, 0, 4)
    matrix.set(m1, 1, 1, 5)
    matrix.set(m1, 1, 2, 6)

    // Create a 2x2 submatrix of the `m1` matrix.
    var m2 = matrix.submatrix(m1, 0, 2, 1, 3)

    // Display using a table.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Original Matrix:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Submatrix:")
    table.cell(t, 1, 1, str.tostring(m2))
```

リターン

`id`、 `from_row` 、 `to_row` 、 `from_column` インデックスによって定義される、 行列 `to_column` の部分行列を含んだ新しい行列オブジェクト。

備考

行と列のインデックスは0から始まります。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.row](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.row) [matrix.col](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.col) [matrix.reshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.reshape)

### matrix.sum()

2個の多重定義

この関数は、2つの行列 `id1` と `id2` の [和](https://en.wikipedia.org/wiki/Matrix_addition) 、あるいは `id1` 行列と `id2` スカラー (数値) の合計からなる新しい行列を返します。

構文と多重定義

[```\\
matrix.sum(id1, id2) → matrix<int>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.sum-0) [```\\
matrix.sum(id1, id2) → matrix<float>\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.sum-1)

引数

id1 (matrix<int>) 最初の行列オブジェクト。

id2 (series int/float/matrix<int>) 2番目の行列オブジェクト、もしくはスカラー値。

2つの行列の和

例

```
//@version=5
indicator("`matrix.sum()` Example 1")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x3 matrix containing values `5`.
    var m1 = matrix.new<float>(2, 3, 5)
    // Create a 2x3 matrix containing values `4`.
    var m2 = matrix.new<float>(2, 3, 4)
    // Create a new matrix that sums matrices `m1` and `m2`.
    var m3 = matrix.sum(m1, m2)

    // Display using a table.
    var t = table.new(position.top_right, 1, 2, color.green)
    table.cell(t, 0, 0, "Sum of two matrices:")
    table.cell(t, 0, 1, str.tostring(m3))
```

1つの行列とスカラーの合計

例

```
//@version=5
indicator("`matrix.sum()` Example 2")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x3 matrix with values `4`.
    var m1 = matrix.new<float>(2, 3, 4)

    // Create a new matrix containing the sum of the `m1` matrix with the "int" value `1`.
    var m2 = matrix.sum(m1, 1)

    // Display using a table.
    var t = table.new(position.top_right, 1, 2, color.green)
    table.cell(t, 0, 0, "Sum of a matrix and a scalar:")
    table.cell(t, 0, 1, str.tostring(m2))
```

リターン

`id2` と `id1` の和を含む新しい行列オブジェクト。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.swap\_columns()

この関数は、行列 `column1` 内のインデックス `column2` の列と `id` の列を入れ替えます。

構文

```
matrix.swap_columns(id, column1, column2) → void
```

引数

id (any matrix type) 行列のオブジェクト。

column1 (series int) 入れ替えされる最初の列のインデックス。

column2 (series int) 入れ替えされる2番目の列のインデックス。

例

```
//@version=5
indicator("`matrix.swap_columns()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x2 matrix with ‘na’ values.
    var m1 = matrix.new<int>(2, 2, na)
    // Fill the matrix with values.
    matrix.set(m1, 0, 0, 1)
    matrix.set(m1, 0, 1, 2)
    matrix.set(m1, 1, 0, 3)
    matrix.set(m1, 1, 1, 4)

    // Copy the matrix to a new one.
    var m2 = matrix.copy(m1)

    // Swap the first and second columns of the matrix copy.
    matrix.swap_columns(m2, 0, 1)

    // Display using a table.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Original matrix:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Swapped columns in copy:")
    table.cell(t, 1, 1, str.tostring(m2))
```

備考

行と列のインデックスは0から始まります。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.swap\_rows()

この関数は、行列 `row1` 内のインデックス `row2` の行と `id` の行を入れ替えます。

構文

```
matrix.swap_rows(id, row1, row2) → void
```

引数

id (any matrix type) 行列のオブジェクト。

row1 (series int) 入れ替えされる最初の行のインデックス。

row2 (series int) 入れ替される2番目の行のインデックス。

例

```
//@version=5
indicator("`matrix.swap_rows()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 3x2 matrix with ‘na’ values.
    var m1 = matrix.new<int>(3, 2, na)
    // Fill the matrix with values.
    matrix.set(m1, 0, 0, 1)
    matrix.set(m1, 0, 1, 2)
    matrix.set(m1, 1, 0, 3)
    matrix.set(m1, 1, 1, 4)
    matrix.set(m1, 2, 0, 5)
    matrix.set(m1, 2, 1, 6)

    // Copy the matrix to a new one.
    var m2 = matrix.copy(m1)

    // Swap the first and second rows of the matrix copy.
    matrix.swap_rows(m2, 0, 1)

    // Display using a table.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Original matrix:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Swapped rows in copy:")
    table.cell(t, 1, 1, str.tostring(m2))
```

備考

行と列のインデックスは0から始まります。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.swap\_columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.swap_columns)

### matrix.trace()

2個の多重定義

この関数は、行列の [跡](https://en.wikipedia.org/wiki/Trace_(linear_algebra)) (主対角成分の総和) を算出します。

構文と多重定義

[```\\
matrix.trace(id) → series float\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.trace-0) [```\\
matrix.trace(id) → series int\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.trace-1)

引数

id (matrix<int/float>) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.trace()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x2 matrix.
    var m1 = matrix.new<int>(2, 2, na)
    // Fill the matrix with values.
    matrix.set(m1, 0, 0, 1)
    matrix.set(m1, 0, 1, 2)
    matrix.set(m1, 1, 0, 3)
    matrix.set(m1, 1, 1, 4)

    // Get the trace of the matrix.
    tr = matrix.trace(m1)

    // Display matrix elements.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Matrix elements:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Trace of the matrix:")
    table.cell(t, 1, 1, str.tostring(tr))
```

リターン

行列 `id` の跡。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.get](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.get) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows)

### matrix.transpose()

この関数は、行列 `id` を [転置](https://en.wikipedia.org/wiki/Transpose#Transpose_of_a_matrix) した新しいバージョンの行列を作成します。各要素の行と列のインデックスが交換されます。

構文

```
matrix.transpose(id) → matrix<type>
```

引数

id (any matrix type) 行列のオブジェクト。

例

```
//@version=5
indicator("`matrix.transpose()` Example")

// For efficiency, execute this code only once.
if barstate.islastconfirmedhistory
    // Create a 2x2 matrix.
    var m1 = matrix.new<float>(2, 2, na)
    // Fill the matrix with values.
    matrix.set(m1, 0, 0, 1)
    matrix.set(m1, 0, 1, 2)
    matrix.set(m1, 1, 0, 3)
    matrix.set(m1, 1, 1, 4)

    // Create a transpose of the matrix.
    var m2 = matrix.transpose(m1)

    // Display using a table.
    var t = table.new(position.top_right, 2, 2, color.green)
    table.cell(t, 0, 0, "Original matrix:")
    table.cell(t, 0, 1, str.tostring(m1))
    table.cell(t, 1, 0, "Transposed matrix:")
    table.cell(t, 1, 1, str.tostring(m2))
```

リターン

行列 `id` を転置したバージョンを含む新しい行列。

こちらもご覧ください

[matrix.new<type>](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.new%3Ctype%3E) [matrix.set](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.set) [matrix.columns](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.columns) [matrix.rows](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.rows) [matrix.reshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.reshape) [matrix.reverse](https://jp.tradingview.com/pine-script-reference/v5/#fun_matrix.reverse)


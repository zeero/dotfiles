### box.copy()

ボックスオブジェクトのクローンを作成します。

構文

```
box.copy(id) → series box
```

引数

id (series box) ボックスオブジェクト。

例

```
//@version=5
indicator('Last 50 bars price ranges', overlay = true)
LOOKBACK = 50
highest = ta.highest(LOOKBACK)
lowest = ta.lowest(LOOKBACK)
if barstate.islastconfirmedhistory
    var BoxLast = box.new(bar_index[LOOKBACK], highest, bar_index, lowest, bgcolor = color.new(color.green, 80))
    var BoxPrev = box.copy(BoxLast)
    box.set_lefttop(BoxPrev, bar_index[LOOKBACK * 2], highest[50])
    box.set_rightbottom(BoxPrev, bar_index[LOOKBACK], lowest[50])
    box.set_bgcolor(BoxPrev, color.new(color.red, 80))
```

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.delete)

### box.delete()

指定されたボックスオブジェクトを削除します。既に削除されている場合は何もしません。

構文

```
box.delete(id) → void
```

引数

id (series box) 削除するボックスオブジェクト。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new)

### box.get\_bottom()

ボックスの下側の境界線の価格を返します。

構文

```
box.get_bottom(id) → series float
```

引数

id (series box) ボックスオブジェクト。

リターン

価格の値。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.set\_bottom](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_bottom)

### box.get\_left()

ボックスの左側境界線のバーのインデックスまたはUNIX時間（最後に使用された 'xloc' 値に依存します）を返します。

構文

```
box.get_left(id) → series int
```

引数

id (series box) ボックスオブジェクト。

リターン

バーのインデックス、またはUNIXタイムスタンプ (ミリ秒単位)。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.set\_left](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_left)

### box.get\_right()

ボックスの右側境界線のバーのインデックスまたはUNIX時間（最後に使用された 'xloc' 値に依存します）を返します。

構文

```
box.get_right(id) → series int
```

引数

id (series box) ボックスオブジェクト。

リターン

バーのインデックス、またはUNIXタイムスタンプ (ミリ秒単位)。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.set\_right](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_right)

### box.get\_top()

ボックスの上部の境界線の価格を返します。

構文

```
box.get_top(id) → series float
```

引数

id (series box) ボックスオブジェクト。

リターン

価格の値。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.set\_top](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_top)

### box.new()

2個の多重定義

新しいボックスオブジェクトを作成します。

構文と多重定義

[```\\
box.new(top_left, bottom_right, border_color, border_width, border_style, extend, xloc, bgcolor, text, text_size, text_color, text_halign, text_valign, text_wrap, text_font_family, force_overlay) → series box\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new-0) [```\\
box.new(left, top, right, bottom, border_color, border_width, border_style, extend, xloc, bgcolor, text, text_size, text_color, text_halign, text_valign, text_wrap, text_font_family, force_overlay) → series box\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new-1)

引数

top\_left (chart.point) ボックスの左上隅の位置を指定する [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクトです。

bottom\_right (chart.point) ボックスの右下隅の位置を指定する [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクトです。

border\_color (series color) 4つの境界線の色。オプションです。デフォルトは [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) です。

border\_width (series int) ピクセル単位の4つの境界線の幅。オプションです。デフォルトは1ピクセルです。

border\_style (series string) 4つの境界線のスタイル。可能な値は: [line.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_solid), [line.style\_dotted](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dotted), [line.style\_dashed](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dashed)。オプションです。デフォルト値は [line.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_solid) です。

extend (series string) [extend.none](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.none) を指定した場合、水平方向の境界線は左の境界線から始まり、右の境界線で終わります。 [extend.left](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.left) または [extend.right](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.right) を指定すると、水平方向の境界線はそれぞれボックスの左右に無限に延長されます。 [extend.both](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.both) を指定すると、水平方向の境界線が両側に延長されます。オプションの引数です。デフォルト値は [extend.none](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.none) です。

xloc (series string) 'left' と 'right' の引数がバーインデックスか時間かを決定します。xloc = [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) の場合、それらの引数はバーインデックスでなければなりません。xloc = [xloc.bar\_time](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_time) の場合には、それらの引数はUNIX時間で指定する必要があります。可能な値は: [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) と [xloc.bar\_time](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_time) です。オプションの引数です。デフォルトは [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) です。

bgcolor (series color) ボックスの背景色。オプションです。デフォルトは [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) です。

text (series string) ボックス内に表示されるテキスト。オプションです。デフォルトは空の文字列です。

text\_size (series string) テキストのサイズ。オプションです。デフォルトは [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto) です。利用できる値は: [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto), [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny), [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small), [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal), [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large), [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge) です。

text\_color (series color) テキストの色。オプションです。デフォルトは [color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) です。

text\_halign (series string) ボックスのテキストについて水平方向へのアライメントを指定します。オプションです。デフォルト値は [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center) です。可能な値は [text.align\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_left), [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center), [text.align\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_right) です。

text\_valign (series string) ボックスのテキストの垂直方向の配置。オプションです。デフォルト値は [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center) です。可能な値は [text.align\_top](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_top), [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center), [text.align\_bottom](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_bottom) です。

text\_wrap (series string) テキストを1行で表示し、必要に応じて枠の幅を超えるようにするか、もしくは、 各行を枠自体の幅を超えないように折り返すか（折り返されたテキストの高さが枠の高さよりも大きいときは下枠で切り落とします）を定義します。オプションです。デフォルト値は [text.wrap\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_text.wrap_none) です。可能な値は [text.wrap\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_text.wrap_none)、 [text.wrap\_auto](https://jp.tradingview.com/pine-script-reference/v5/#const_text.wrap_auto) です。

text\_font\_family (series string) テキストのフォントファミリー。オプションです。デフォルトは [font.family\_default](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_default) です。利用できる値は: [font.family\_default](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_default), [font.family\_monospace](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_monospace) です。

force\_overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトが別のペインを占めている時でも、描画はメインのチャートペインに表示されます。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("box.new")
var b = box.new(time, open, time + 60 * 60 * 24, close, xloc=xloc.bar_time, border_style=line.style_dashed)
box.set_lefttop(b, time, 100)
box.set_rightbottom(b, time + 60 * 60 * 24, 500)
box.set_bgcolor(b, color.green)
```

リターン

box.set\_\*() と box.get\_\*() 関数で使用される可能性のあるボックスオブジェクトのID。

こちらもご覧ください

[box.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.delete) [box.get\_left](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.get_left) [box.get\_top](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.get_top) [box.get\_right](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.get_right) [box.get\_bottom](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.get_bottom) [box.set\_top\_left\_point](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_top_left_point) [box.set\_left](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_left) [box.set\_top](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_top) [box.set\_bottom\_right\_point](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_bottom_right_point) [box.set\_right](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_right) [box.set\_bottom](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_bottom) [box.set\_border\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_border_color) [box.set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_bgcolor) [box.set\_border\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_border_width) [box.set\_border\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_border_style) [box.set\_extend](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_extend)

### box.set\_bgcolor()

ボックスの背景色を設定します。

構文

```
box.set_bgcolor(id, color) → void
```

引数

id (series box) ボックスオブジェクト。

color (series color) 新しい背景色。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new)

### box.set\_border\_color()

ボックスの境界線の色を設定します。

構文

```
box.set_border_color(id, color) → void
```

引数

id (series box) ボックスオブジェクト。

color (series color) 新しい境界線の色。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new)

### box.set\_border\_style()

ボックスの境界線のスタイルを設定します。

構文

```
box.set_border_style(id, style) → void
```

引数

id (series box) ボックスオブジェクト。

style (series string) 新しい境界線のスタイル。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [line.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_solid)

### box.set\_border\_width()

ボックスの境界線の幅を設定します。

構文

```
box.set_border_width(id, width) → void
```

引数

id (series box) ボックスオブジェクト。

width (series int) ピクセル単位の4つの境界線の幅。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new)

### box.set\_bottom()

ボックスの下の座標を設定します。

構文

```
box.set_bottom(id, bottom) → void
```

引数

id (series box) ボックスオブジェクト。

bottom (series int/float) 下の境界線の価格の値。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.get\_bottom](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.get_bottom)

### box.set\_bottom\_right\_point()

`id`ボックスの右下隅の位置を`point`に設定します。

構文

```
box.set_bottom_right_point(id, point) → void
```

引数

id (series box) [box](https://jp.tradingview.com/pine-script-reference/v5/#type_box) オブジェクト。

point (chart.point) [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクト。

### box.set\_extend()

ボックスオブジェクトの境界線の延長タイプを設定します。 [extend.none](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.none) を指定した場合、水平方向の境界線は左の境界線から始まり、右の境界線で終わります。 [extend.left](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.left) または [extend.right](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.right) を指定すると、水平方向の境界線はそれぞれボックスの左右に無限に延長されます。 [extend.both](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.both) を指定すると、水平方向の境界線が両側に延長されます。

構文

```
box.set_extend(id, extend) → void
```

引数

id (series box) ボックスオブジェクト。

extend (series string) 新しい延長タイプ。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [extend.none](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.none)

### box.set\_left()

ボックスの左の座標を設定します。

構文

```
box.set_left(id, left) → void
```

引数

id (series box) ボックスオブジェクト。

left (series int) 左側境界線のバーインデックスまたはバーの時間。なお [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) を利用した場合、オブジェクトを500バー以上先の未来に描くことはできません。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.get\_left](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.get_left)

### box.set\_lefttop()

ボックスの左上の座標を設定します。

構文

```
box.set_lefttop(id, left, top) → void
```

引数

id (series box) ボックスオブジェクト。

left (series int) 左側境界線のバーインデックスまたはバーの時間。

top (series int/float) 上の境界線の価格の値。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.get\_left](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.get_left) [box.get\_top](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.get_top)

### box.set\_right()

ボックスの右の座標を設定します。

構文

```
box.set_right(id, right) → void
```

引数

id (series box) ボックスオブジェクト。

right (series int) 右側境界線のバーインデックスまたはバーの時間。なお [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) を利用した場合、オブジェクトを500バー以上先の未来に描くことはできません。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.get\_right](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.get_right)

### box.set\_rightbottom()

ボックスの右下の座標を設定します。

構文

```
box.set_rightbottom(id, right, bottom) → void
```

引数

id (series box) ボックスオブジェクト。

right (series int) 右側境界線のバーインデックスまたはバーの時間。

bottom (series int/float) 下の境界線の価格の値。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.get\_right](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.get_right) [box.get\_bottom](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.get_bottom)

### box.set\_text()

ボックス内にテキストを設定します。

構文

```
box.set_text(id, text) → void
```

引数

id (series box) ボックスオブジェクト。

text (series string) ボックス内に表示されるテキスト。

こちらもご覧ください

[box.set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_color) [box.set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_size) [box.set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_valign) [box.set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_halign)

### box.set\_text\_color()

ボックス内のテキストの色を設定します。

構文

```
box.set_text_color(id, text_color) → void
```

引数

id (series box) ボックスオブジェクト。

text\_color (series color) テキストの色。

こちらもご覧ください

[box.set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text) [box.set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_size) [box.set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_valign) [box.set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_halign)

### box.set\_text\_font\_family()

ボックス内のテキストのフォントファミリーを設定します。

構文

```
box.set_text_font_family(id, text_font_family) → void
```

引数

id (series box) ボックスオブジェクト。

text\_font\_family (series string) テキストのフォントファミリー。可能な値は [font.family\_default](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_default), [font.family\_monospace](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_monospace) です。

例

```
//@version=5
indicator("Example of setting the box font")
if barstate.islastconfirmedhistory
    b = box.new(bar_index, open-ta.tr, bar_index-50, open-ta.tr*5, text="monospace")
    box.set_text_font_family(b, font.family_monospace)
```

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [font.family\_default](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_default) [font.family\_monospace](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_monospace)

### box.set\_text\_halign()

この関数は、ボックスのテキストの水平方向の配置を設定します。

構文

```
box.set_text_halign(id, text_halign) → void
```

引数

id (series box) ボックスオブジェクト。

text\_halign (series string) ボックスのテキストの水平アライメントです。可能な値は [text.align\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_left), [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center), [text.align\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_right) です。

こちらもご覧ください

[box.set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text) [box.set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_size) [box.set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_valign) [box.set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_color)

### box.set\_text\_size()

ボックスのテキストについてサイズを設定します。

構文

```
box.set_text_size(id, text_size) → void
```

引数

id (series box) ボックスオブジェクト。

text\_size (series string) テキストのサイズ。可能な値は [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto), [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny), [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small), [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal), [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large), [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge) です。

こちらもご覧ください

[box.set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text) [box.set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_color) [box.set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_valign) [box.set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_halign)

### box.set\_text\_valign()

ボックスのテキストについて垂直方向へのアライメントを設定します。

構文

```
box.set_text_valign(id, text_valign) → void
```

引数

id (series box) ボックスオブジェクト。

text\_valign (series string) ボックスのテキストの垂直アライメントです。可能な値は [text.align\_top](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_top), [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center), [text.align\_bottom](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_bottom) です。

こちらもご覧ください

[box.set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text) [box.set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_size) [box.set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_color) [box.set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_halign)

### box.set\_text\_wrap()

ボックス内のテキストに折り返しモードを設定します。

構文

```
box.set_text_wrap(id, text_wrap) → void
```

引数

id (series box) ボックスオブジェクト。

text\_wrap (series string) 折り返しモード。可能な値は [text.wrap\_auto](https://jp.tradingview.com/pine-script-reference/v5/#const_text.wrap_auto), [text.wrap\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_text.wrap_none) です。

こちらもご覧ください

[box.set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text) [box.set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_size) [box.set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_valign) [box.set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_halign) [box.set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_color)

### box.set\_top()

ボックスの上の座標を設定します。

構文

```
box.set_top(id, top) → void
```

引数

id (series box) ボックスオブジェクト。

top (series int/float) 上の境界線の価格の値。

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.get\_top](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.get_top)

### box.set\_top\_left\_point()

`id`ボックスの左上隅の位置を`point`に設定します。

構文

```
box.set_top_left_point(id, point) → void
```

引数

id (series box) [box](https://jp.tradingview.com/pine-script-reference/v5/#type_box) オブジェクト。

point (chart.point) [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクト。

### label.copy()

ラベルオブジェクトのクローンを作成します。

構文

```
label.copy(id) → series label
```

引数

id (series label) ラベルオブジェクト。

例

```
//@version=5
indicator('Last 100 bars highest/lowest', overlay = true)
LOOKBACK = 100
highest = ta.highest(LOOKBACK)
highestBars = ta.highestbars(LOOKBACK)
lowest = ta.lowest(LOOKBACK)
lowestBars = ta.lowestbars(LOOKBACK)
if barstate.islastconfirmedhistory
    var labelHigh = label.new(bar_index + highestBars, highest, str.tostring(highest), color = color.green)
    var labelLow = label.copy(labelHigh)
    label.set_xy(labelLow, bar_index + lowestBars, lowest)
    label.set_text(labelLow, str.tostring(lowest))
    label.set_color(labelLow, color.red)
    label.set_style(labelLow, label.style_label_up)
```

リターン

label.setXXXやlabel.getXXX関数に渡すことができる新しいラベルIDオブジェクトです。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.delete)

### label.delete()

指定されたラベルオブジェクトの削除。既に削除されている場合には何も行いません。

構文

```
label.delete(id) → void
```

引数

id (series label) 削除するラベルオブジェクト。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.get\_text()

このラベルオブジェクトのテキストを返します。

構文

```
label.get_text(id) → series string
```

引数

id (series label) ラベルオブジェクト。

例

```
//@version=5
indicator("label.get_text")
my_label = label.new(time, open, text="Open bar text", xloc=xloc.bar_time)
a = label.get_text(my_label)
label.new(time, close, text = a + " new", xloc=xloc.bar_time)
```

リターン

このラベルのテキストを含む文字列オブジェクト。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.get\_x()

ラベル位置の（最後に設定されたxloc値に応じた）UNIXタイムまたはバーインデックスを返します。

構文

```
label.get_x(id) → series int
```

引数

id (series label) ラベルオブジェクト。

例

```
//@version=5
indicator("label.get_x")
my_label = label.new(time, open, text="Open bar text", xloc=xloc.bar_time)
a = label.get_x(my_label)
plot(time - label.get_x(my_label)) //draws zero plot
```

リターン

UNIXタイムスタンプ (ミリ秒単位) またはバーインデックス。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.get\_y()

このラベル位置の価格を返します。

構文

```
label.get_y(id) → series float
```

引数

id (series label) ラベルオブジェクト。

リターン

価格を表す浮動小数点値。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.new()

2個の多重定義

新しいラベルオブジェクトを作成します。

構文と多重定義

[```\\
label.new(point, text, xloc, yloc, color, style, textcolor, size, textalign, tooltip, text_font_family, force_overlay) → series label\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new-0) [```\\
label.new(x, y, text, xloc, yloc, color, style, textcolor, size, textalign, tooltip, text_font_family, force_overlay) → series label\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new-1)

引数

point (chart.point) ラベルの位置を指定する [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクトです。

text (series string) ラベルテキスト。デフォルトは空の文字列です。

xloc (series string) **x** 引数の説明をご参照ください。可能な値は [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) と [xloc.bar\_time](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_time) です。デフォルトは [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) です。

yloc (series string) 可能な値は [yloc.price](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.price), [yloc.abovebar](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.abovebar), [yloc.belowbar](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.belowbar) です。yloc= [yloc.price](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.price) の場合、 **y** 引数でラベル位置の価格を指定します。yloc= [yloc.abovebar](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.abovebar) の場合、ラベルはバーの上に位置します。yloc= [yloc.belowbar](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.belowbar) の場合、ラベルはバーの下です。デフォルトは [yloc.price](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.price) です。

color (series color) ラベルの枠と矢印の色。

style (series string) ラベルスタイル。利用できる値は: [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none), [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross), [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross), [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup), [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown), [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag), [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle), [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup), [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown), [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up), [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down), [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left), [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right), [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left), [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right), [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left), [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right), [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center), [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square), [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond), [label.style\_text\_outline](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_text_outline) です。デフォルトは [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) です。

textcolor (series color) テキストの色。

size (series string) ラベルサイズ。利用できる値は [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto)、 [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny)、 [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small)、 [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal)、 [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large)、 [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge) です。デフォルトは [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal) です。

textalign (series string) ラベルテキストの配置。利用できる値は: [text.align\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_left), [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center), [text.align\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_right) です。デフォルトは [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center) です。

tooltip (series string) カーソルを合わせた際に表示されるツールチップのラベル。

text\_font\_family (series string) テキストのフォントファミリー。オプションです。デフォルトは [font.family\_default](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_default) です。利用できる値は: [font.family\_default](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_default), [font.family\_monospace](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_monospace) です。

force\_overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトが別のペインを占めている時でも、描画はメインのチャートペインに表示されます。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("label.new")
var label1 = label.new(bar_index, low, text="Hello, world!", style=label.style_circle)
label.set_x(label1, 0)
label.set_xloc(label1, time, xloc.bar_time)
label.set_color(label1, color.red)
label.set_size(label1, size.large)
```

リターン

label.setXXX と label.getXXX 関数に渡すことができるラベルIDオブジェクト。

こちらもご覧ください

[label.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.delete) [label.set\_x](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_x) [label.set\_y](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_y) [label.set\_xy](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_xy) [label.set\_xloc](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_xloc) [label.set\_yloc](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_yloc) [label.set\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_color) [label.set\_textcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textcolor) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_size) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.set\_tooltip](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_tooltip)

### label.set\_color()

ラベルの枠と矢印の色を設定します。

構文

```
label.set_color(id, color) → void
```

引数

id (series label) ラベルオブジェクト。

color (series color) 新しいラベルの枠と矢印の色。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.set\_point()

`id`ラベルの位置を`point`に設定します。

構文

```
label.set_point(id, point) → void
```

引数

id (series label) [label](https://jp.tradingview.com/pine-script-reference/v5/#type_label) オブジェクト。

point (chart.point) [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクト。

### label.set\_size()

指定したラベルオブジェクトの矢印とテキストサイズを設定します。

構文

```
label.set_size(id, size) → void
```

引数

id (series label) ラベルオブジェクト。

size (series string) 利用できる値は: [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto), [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny), [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small), [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal), [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large), [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge) です。デフォルトは [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto) です。

こちらもご覧ください

[size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto) [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny) [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small) [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal) [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large) [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge) [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.set\_style()

ラベルスタイルを設定します。

構文

```
label.set_style(id, style) → void
```

引数

id (series label) ラベルオブジェクト。

style (series string) 新しいラベルのスタイル。可能な値は、 [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none), [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross), [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross), [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup), [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown), [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag), [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle), [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup), [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown), [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up), [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down), [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left), [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right), [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left), [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right), [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left), [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right), [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center), [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square), [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond), [label.style\_text\_outline](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_text_outline) です。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.set\_text()

ラベルテキストを設定します。

構文

```
label.set_text(id, text) → void
```

引数

id (series label) ラベルオブジェクト。

text (series string) 新しいラベルテキスト。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.set\_text\_font\_family()

ラベル内のテキストのフォントファミリーを設定します。

構文

```
label.set_text_font_family(id, text_font_family) → void
```

引数

id (series label) ラベルオブジェクト。

text\_font\_family (series string) テキストのフォントファミリー。可能な値は [font.family\_default](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_default), [font.family\_monospace](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_monospace) です。

例

```
//@version=5
indicator("Example of setting the label font")
if barstate.islastconfirmedhistory
    l = label.new(bar_index, 0, "monospace", yloc=yloc.abovebar)
    label.set_text_font_family(l, font.family_monospace)
```

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [font.family\_default](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_default) [font.family\_monospace](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_monospace)

### label.set\_textalign()

ラベルテキストの配置を設定します。

構文

```
label.set_textalign(id, textalign) → void
```

引数

id (series label) ラベルオブジェクト。

textalign (series string) ラベルテキストの配置。可能な値は: [text.align\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_left), [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center), [text.align\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_right) です。

こちらもご覧ください

[text.align\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_left) [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center) [text.align\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_right) [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.set\_textcolor()

ラベルテキストの色を設定します。

構文

```
label.set_textcolor(id, textcolor) → void
```

引数

id (series label) ラベルオブジェクト。

textcolor (series color) 新しいテキストの色。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.set\_tooltip()

ツールチップのテキストを設定します。

構文

```
label.set_tooltip(id, tooltip) → void
```

引数

id (series label) ラベルオブジェクト。

tooltip (series string) ツールチップのテキスト。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.set\_x()

ラベル位置の（xlocに応じた）バーインデックスまたはバーの時間を設定します。

構文

```
label.set_x(id, x) → void
```

引数

id (series label) ラベルオブジェクト。

x (series int) 新しいラベル位置のバーインデックスまたはバーの時間。なお [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) を利用した場合、オブジェクトを500バー以上先の未来に描くことはできません。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.set\_xloc()

x地点と新しいバーインデックス／バーの時間の値を設定します。

構文

```
label.set_xloc(id, x, xloc) → void
```

引数

id (series label) ラベルオブジェクト。

x (series int) ラベル位置の新しいバーインデックスまたはバーの時間を設定。

xloc (series string) 新しいx地点の値。

こちらもご覧ください

[xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) [xloc.bar\_time](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_time) [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.set\_xy()

ラベル位置のバーインデックス／バーの時間と価格を設定します。

構文

```
label.set_xy(id, x, y) → void
```

引数

id (series label) ラベルオブジェクト。

x (series int) 新しいラベル位置のバーインデックスまたはバーの時間。なお [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) を利用した場合、オブジェクトを500バー以上先の未来に描くことはできません。

y (series int/float) ラベル位置の新しい価格。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.set\_y()

ラベル位置の価格を設定します。

構文

```
label.set_y(id, y) → void
```

引数

id (series label) ラベルオブジェクト。

y (series int/float) ラベル位置の新しい価格。

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### label.set\_yloc()

新しいy地点の計算アルゴリズムを設定します。

構文

```
label.set_yloc(id, yloc) → void
```

引数

id (series label) ラベルオブジェクト。

yloc (series string) 新しいy地点の値。

こちらもご覧ください

[yloc.price](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.price) [yloc.abovebar](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.abovebar) [yloc.belowbar](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.belowbar) [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)

### line.copy()

ラインオブジェクトのクローンを作成します。

構文

```
line.copy(id) → series line
```

引数

id (series line) ラインオブジェクト。

例

```
//@version=5
indicator('Last 100 bars price range', overlay = true)
LOOKBACK = 100
highest = ta.highest(LOOKBACK)
lowest = ta.lowest(LOOKBACK)
if barstate.islastconfirmedhistory
    var lineTop = line.new(bar_index[LOOKBACK], highest, bar_index, highest, color = color.green)
    var lineBottom = line.copy(lineTop)
    line.set_y1(lineBottom, lowest)
    line.set_y2(lineBottom, lowest)
    line.set_color(lineBottom, color.red)
```

リターン

line.setXXXやline.getXXX関数に渡すことができる新しいラインIDオブジェクトです。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [line.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.delete)

### line.delete()

指定されたラインオブジェクトの削除。既に削除されている場合には何も行いません。

構文

```
line.delete(id) → void
```

引数

id (series line) 削除するラインオブジェクト。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.get\_price()

ラインの指定されたバーインデックスの価格レベルを返します。

構文

```
line.get_price(id, x) → series float
```

引数

id (series line) ラインオブジェクト。

x (series int) 価格を取得するバーのインデックス。

例

```
//@version=5
indicator("GetPrice", overlay=true)
var line l = na
if bar_index == 10
    l := line.new(0, high[5], bar_index, high)
plot(line.get_price(l, bar_index), color=color.green)
```

リターン

ライン 'id' のバーインデックス 'x' の価格の値。

備考

ラインは 'extend=extend.both' を使用して作成されたと見なされます。

この関数は 'xloc.bar\_index' を使用して作成されたラインに対してのみ呼び出すことができます。'xloc.bar\_time' で作成されたラインを呼び出そうとする場合、エラーが発生します。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.get\_x1()

ラインの最初のポイントの（最後に設定されたxloc値に応じた）UNIXタイムまたはバーインデックスを返します。

構文

```
line.get_x1(id) → series int
```

引数

id (series line) ラインオブジェクト。

例

```
//@version=5
indicator("line.get_x1")
my_line = line.new(time, open, time + 60 * 60 * 24, close, xloc=xloc.bar_time)
a = line.get_x1(my_line)
plot(time - line.get_x1(my_line)) //draws zero plot
```

リターン

UNIXタイムスタンプ (ミリ秒単位) またはバーインデックス。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.get\_x2()

ラインの2番目のポイントの（最後に設定されたxloc値に応じた）UNIXタイムまたはバーインデックスを返します。

構文

```
line.get_x2(id) → series int
```

引数

id (series line) ラインオブジェクト。

リターン

UNIXタイムスタンプ (ミリ秒単位) またはバーインデックス。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.get\_y1()

ラインの最初のポイントの価格を返します。

構文

```
line.get_y1(id) → series float
```

引数

id (series line) ラインオブジェクト。

リターン

価格の値。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.get\_y2()

ラインの2番目のポイントの価格を返します。

構文

```
line.get_y2(id) → series float
```

引数

id (series line) ラインオブジェクト。

リターン

価格の値。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.new()

2個の多重定義

新しいラインオブジェクトを作成します。

構文と多重定義

[```\\
line.new(first_point, second_point, xloc, extend, color, style, width, force_overlay) → series line\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new-0) [```\\
line.new(x1, y1, x2, y2, xloc, extend, color, style, width, force_overlay) → series line\\
```](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new-1)

引数

first\_point (chart.point) ラインの始点の座標を指定する [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクトです。

second\_point (chart.point) ラインの終点の座標を指定する [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクトです。

xloc (series string) **x1** 引数の説明をご参照ください。可能な値は [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) と [xloc.bar\_time](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_time) です。デフォルトは [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) です。

extend (series string) extend= [extend.none](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.none) の場合、始点 (x1, y1) から終点 (x2, y2) のセグメントを描画します。extendが [extend.right](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.right) または [extend.left](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.left) と等しい場合には、それぞれ始点 (x1, y1) または (x2, y2) からのレイを描画します。extend= [extend.both](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.both) の場合は、これらのポイントを通過する直線を描画します。デフォルト値は [extend.none](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.none) です。

color (series color) ラインの色。

style (series string) ラインスタイル。可能な値は [line.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_solid), [line.style\_dotted](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dotted), [line.style\_dashed](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dashed), [line.style\_arrow\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_left), [line.style\_arrow\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_right), [line.style\_arrow\_both](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_both) です。

width (series int) ピクセル単位でのラインの幅。

force\_overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトが別のペインを占めている時でも、描画はメインのチャートペインに表示されます。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("line.new")
var line1 = line.new(0, low, bar_index, high, extend=extend.right)
var line2 = line.new(time, open, time + 60 * 60 * 24, close, xloc=xloc.bar_time, style=line.style_dashed)
line.set_x2(line1, 0)
line.set_xloc(line1, time, time + 60 * 60 * 24, xloc.bar_time)
line.set_color(line2, color.green)
line.set_width(line2, 5)
```

リターン

line.setXXXとline.getXXX関数に渡すことができるラインIDオブジェクト。

こちらもご覧ください

[line.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.delete) [line.set\_x1](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_x1) [line.set\_y1](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_y1) [line.set\_xy1](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_xy1) [line.set\_x2](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_x2) [line.set\_y2](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_y2) [line.set\_xy2](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_xy2) [line.set\_xloc](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_xloc) [line.set\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_color) [line.set\_extend](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_extend) [line.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_style) [line.set\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_width)

### line.set\_color()

ラインの色を設定します。

構文

```
line.set_color(id, color) → void
```

引数

id (series line) ラインオブジェクト。

color (series color) 新しいラインの色。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.set\_extend()

このラインオブジェクトの延長のタイプを設定します。extend= [extend.none](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.none) の場合、始点 (x1, y1) から終点 (x2, y2) のセグメントを描画します。extendが [extend.right](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.right) または [extend.left](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.left) と等しい場合には、それぞれ始点 (x1, y1) または (x2, y2) からのレイを描画します。extend= [extend.both](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.both) の場合は、これらのポイントを通過する直線を描画します。

構文

```
line.set_extend(id, extend) → void
```

引数

id (series line) ラインオブジェクト。

extend (series string) 新しい延長タイプ。

こちらもご覧ください

[extend.none](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.none) [extend.right](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.right) [extend.left](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.left) [extend.both](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.both) [line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.set\_first\_point()

`id`ラインの最初のポイントを`point`に設定します。

構文

```
line.set_first_point(id, point) → void
```

引数

id (series line) [line](https://jp.tradingview.com/pine-script-reference/v5/#type_line) オブジェクト。

point (chart.point) [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクト。

### line.set\_second\_point()

`id`ラインの2番目のポイントを`point`に設定します。

構文

```
line.set_second_point(id, point) → void
```

引数

id (series line) [line](https://jp.tradingview.com/pine-script-reference/v5/#type_line) オブジェクト。

point (chart.point) [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクト。

### line.set\_style()

ラインスタイルを設定します。

構文

```
line.set_style(id, style) → void
```

引数

id (series line) ラインオブジェクト。

style (series string) 新しいラインスタイル。

こちらもご覧ください

[line.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_solid) [line.style\_dotted](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dotted) [line.style\_dashed](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dashed) [line.style\_arrow\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_left) [line.style\_arrow\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_right) [line.style\_arrow\_both](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_both) [line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.set\_width()

ライン幅を設定します。

構文

```
line.set_width(id, width) → void
```

引数

id (series line) ラインオブジェクト。

width (series int) ピクセル単位での新しいラインの幅。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.set\_x1()

（xlocに応じた）最初のポイントのバーインデックスまたはバーの時間を設定します。

構文

```
line.set_x1(id, x) → void
```

引数

id (series line) ラインオブジェクト。

x (series int) バーインデックスまたはバーの時間。なお [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) を利用した場合、オブジェクトを500バー以上先の未来に描くことはできません。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.set\_x2()

（xlocに応じた）2番目のポイントのバーインデックスまたはバーの時間を設定します。

構文

```
line.set_x2(id, x) → void
```

引数

id (series line) ラインオブジェクト。

x (series int) バーインデックスまたはバーの時間。なお [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) を利用した場合、オブジェクトを500バー以上先の未来に描くことはできません。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.set\_xloc()

x地点と新しいバーのインデックス／時間の値を設定します。

構文

```
line.set_xloc(id, x1, x2, xloc) → void
```

引数

id (series line) ラインオブジェクト。

x1 (series int) 最初のポイントのバーインデックスまたはバーの時間。

x2 (series int) 2番目のポイントのバーインデックスまたはバーの時間。

xloc (series string) 新しいx地点の値。

こちらもご覧ください

[xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) [xloc.bar\_time](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_time) [line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.set\_xy1()

最初のポイントのバーインデックス／バーの時間と価格を設定します。

構文

```
line.set_xy1(id, x, y) → void
```

引数

id (series line) ラインオブジェクト。

x (series int) バーインデックスまたはバーの時間。なお [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) を利用した場合、オブジェクトを500バー以上先の未来に描くことはできません。

y (series int/float) 価格。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.set\_xy2()

2番目のポイントのバーインデックス／バーの時間と価格を設定します。

構文

```
line.set_xy2(id, x, y) → void
```

引数

id (series line) ラインオブジェクト。

x (series int) バーインデックスまたはバーの時間。

y (series int/float) 価格。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.set\_y1()

最初のポイントの価格を設定します。

構文

```
line.set_y1(id, y) → void
```

引数

id (series line) ラインオブジェクト。

y (series int/float) 価格。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### line.set\_y2()

2番目のポイントの価格を設定します。

構文

```
line.set_y2(id, y) → void
```

引数

id (series line) ラインオブジェクト。

y (series int/float) 価格。

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new)

### linefill.delete()

指定されたlinefill オブジェクトを削除します。既に削除されている場合には何も行いません。

構文

```
linefill.delete(id) → void
```

引数

id (series linefill) linefill オブジェクト。

### linefill.get\_line1()

`id` linefill で使用される最初のラインの ID を返します。

構文

```
linefill.get_line1(id) → series line
```

引数

id (series linefill) linefill オブジェクト。

### linefill.get\_line2()

`id` の linefill で使用される2番目のラインの ID を返します。

構文

```
linefill.get_line2(id) → series line
```

引数

id (series linefill) linefill オブジェクト。

### linefill.new()

新しい linefill オブジェクトを作成し、チャート上に表示します。`line1` と `line2` の間のスペースを `color` で指定された色によってで塗りつぶします。

構文

```
linefill.new(line1, line2, color) → series linefill
```

引数

line1 (series line) 最初のラインオブジェクト。

line2 (series line) 2番目のラインオブジェクト。

color (series color) 2つのライン間のスペースを埋めるために使用される色。

リターン

他のlinefill.\*() 関数に渡すことができる linefill オブジェクトのID。

備考

2つのラインのいずれかが削除された場合、linefill オブジェクトも削除されます。ラインが移動した場合 (例えば [line.set\_xy](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_xy) 関数によって) は、linefill オブジェクトも移動されます。

両方の線が同じ方向に延長されている（例えば、両方とも `extend=` パラメーターの値として [extend.right](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.right) を持っている）場合は、線の延長部分の間のスペースも埋められます。

### linefill.set\_color()

渡された linefill オブジェクトの色を設定します。

構文

```
linefill.set_color(id, color) → void
```

引数

id (series linefill) linefill オブジェクト。

color (series color) linefill オブジェクトの色。

### polyline.delete()

指定した [polyline](https://jp.tradingview.com/pine-script-reference/v5/#type_polyline) オブジェクトを削除します。`id` が存在しない場合は影響はありません。

構文

```
polyline.delete(id) → void
```

引数

id (series polyline) 削除する折れ線のIDです。

### polyline.new()

新しい [polyline](https://jp.tradingview.com/pine-script-reference/v5/#type_polyline) インスタンスを作成して、チャート上に表示します。`points` 配列内のすべての点を順番に線分で結びます。線分は `curved` パラメーターに応じて直線にも曲線にもなります。

構文

```
polyline.new(points, curved, closed, xloc, line_color, fill_color, line_style, line_width, force_overlay) → series polyline
```

引数

points (array<chart.point>) 描画を順番につなぐための [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクトの配列です。

curved (series bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、描画は曲線の線分を用いて `points` 配列からすべての点を結びます。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

closed (series bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、描画は `points` 配列の最初の点から最後の点までも同時に結びます。結果的に閉じた折れ線になります。オプションです。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

xloc (series string) 折れ線の x 座標に使用する `points` 配列の [chart.point](https://jp.tradingview.com/pine-script-reference/v5/#type_chart.point) オブジェクトのフィールドを決定します。 [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) の場合、折れ線は各ポイントの `index` フィールドを使用します。 [xloc.bar\_time](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_time) の場合は `time` フィールドを使用します。オプションです。デフォルトは [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) です。

line\_color (series color) 線分の色です。オプションです。デフォルトは [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) です。

fill\_color (series color) 折れ線を塗りつぶす色です。オプションです。デフォルトは [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) です。

line\_style (series string) 折れ線のスタイルです。可能な値は、 [line.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_solid), [line.style\_dotted](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dotted), [line.style\_dashed](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dashed), [line.style\_arrow\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_left), [line.style\_arrow\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_right), [line.style\_arrow\_both](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_both) です。オプションです。デフォルトは [line.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_solid) です。

line\_width (series int) 線分の幅をピクセル単位で示したものです。オプションです。デフォルトは 1 です。

force\_overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトが別のペインを占めている時でも、描画はメインのチャートペインに表示されます。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("Polylines example", overlay = true)

//@variable If `true`, connects all points in the polyline with curved line segments.
bool curvedInput = input.bool(false, "Curve Polyline")
//@variable If `true`, connects the first point in the polyline to the last point.
bool closedInput = input.bool(true,  "Close Polyline")
//@variable The color of the space filled by the polyline.
color fillcolor = input.color(color.new(color.blue, 90), "Fill Color")

// Time and price inputs for the polyline's points.
p1x = input.time(0,  "p1", confirm = true, inline = "p1")
p1y = input.price(0, "  ", confirm = true, inline = "p1")
p2x = input.time(0,  "p2", confirm = true, inline = "p2")
p2y = input.price(0, "  ", confirm = true, inline = "p2")
p3x = input.time(0,  "p3", confirm = true, inline = "p3")
p3y = input.price(0, "  ", confirm = true, inline = "p3")
p4x = input.time(0,  "p4", confirm = true, inline = "p4")
p4y = input.price(0, "  ", confirm = true, inline = "p4")
p5x = input.time(0,  "p5", confirm = true, inline = "p5")
p5y = input.price(0, "  ", confirm = true, inline = "p5")

if barstate.islastconfirmedhistory
    //@variable An array of `chart.point` objects for the new polyline.
    var points = array.new<chart.point>()
    // Push new `chart.point` instances into the `points` array.
    points.push(chart.point.from_time(p1x, p1y))
    points.push(chart.point.from_time(p2x, p2y))
    points.push(chart.point.from_time(p3x, p3y))
    points.push(chart.point.from_time(p4x, p4y))
    points.push(chart.point.from_time(p5x, p5y))
    // Add labels for each `chart.point` in `points`.
    l1p1 = label.new(points.get(0), text = "p1", xloc = xloc.bar_time, color = na)
    l1p2 = label.new(points.get(1), text = "p2", xloc = xloc.bar_time, color = na)
    l2p1 = label.new(points.get(2), text = "p3", xloc = xloc.bar_time, color = na)
    l2p2 = label.new(points.get(3), text = "p4", xloc = xloc.bar_time, color = na)
    // Create a new polyline that connects each `chart.point` in the `points` array, starting from the first.
    polyline.new(points, curved = curvedInput, closed = closedInput, fill_color = fillcolor, xloc = xloc.bar_time)
```

リターン

他の `polyline.*()` 関数でスクリプトが使用できる新しい折れ線オブジェクトのIDです。

こちらもご覧ください

[chart.point.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_chart.point.new)

### table.cell()

この関数は、テーブルのセルを定義してその属性を設定します。

構文

```
table.cell(table_id, column, row, text, width, height, text_color, text_halign, text_valign, text_size, bgcolor, tooltip, text_font_family) → void
```

引数

table\_id (series table) テーブルオブジェクト。

column (series int) セルの列のインデックス。ナンバリングは 0 から始まります。

row (series int) セルの行のインデックス。ナンバリングは 0 から始まります。

text (series string) セル内に表示されるテキスト。オプションです。デフォルトは空の文字列です。

width (series int/float) インジケーターの表示領域に対するセルの幅のパーセンテージ。オプションの引数です。デフォルトでは、セル内のテキストに基づいて幅が自動的に調整されます。値 0 でも同じ効果が得られます。

height (series int/float) インジケーターの表示領域に対するセルの高さのパーセンテージ。オプションの引数です。デフォルトでは、セル内のテキストに基づいて高さが自動的に調整されます。値 0 でも同じ効果が得られます。

text\_color (series color) テキストの色。オプションです。デフォルトは [color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) です。

text\_halign (series string) セル内のテキストの水平方向の配置。オプションです。デフォルトは [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center) です。利用できる値は: [text.align\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_left), [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center), [text.align\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_right) です。

text\_valign (series string) セル内のテキストの垂直方向の配置。オプションです。デフォルトは [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center) です。利用できる値は: [text.align\_top](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_top), [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center), [text.align\_bottom](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_bottom) です。

text\_size (series string) テキストのサイズ。オプションです。デフォルトは [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal) です。利用できる値は: [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto), [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny), [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small), [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal), [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large), [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge) です。

bgcolor (series color) テキストの背景色。オプションの引数です。デフォルトは無色です。

tooltip (series string) セル内に表示されるツールチップ。オプションの引数です。

text\_font\_family (series string) テキストのフォントファミリー。オプションです。デフォルトは [font.family\_default](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_default) です。利用できる値は: [font.family\_default](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_default), [font.family\_monospace](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_monospace) です。

備考

この関数は、テーブル自体は作成しませんが、テーブルのセルを定義します。この関数を使用するには、まず [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) でテーブルオブジェクトを作成する必要があります。

[table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) を呼び出すたびに、以前に定義したセルのプロパティがすべて上書きされます。 [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) を2回続けて呼び出した場合、例えば1回目は text='Test Text' を指定し、2回目は text\_color= [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) を指定して、新しいテキスト引数を指定せずに 'text' のデフォルト値を空の文字列とすると、'Test Text' が上書きされ、セルには空の文字列が表示されます。セルのプロパティを変更したい場合は、table.cell\_set\_\*() 関数を使用してください。

1つのスクリプトで表示できるテーブルは、それぞれの場所に1つだけです。複数のバーで [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) を使用してセルの同じ属性を変更した場合（例えば、1本目のバーでセルの背景色を赤に変更し、2本目のバーで黄色に変更）、最後の変更のみがテーブルに反映されます（つまり、セルの背景は黄色になります）。関数の呼び出しを可能な限り [if](https://jp.tradingview.com/pine-script-reference/v5/#kw_if) [barstate.islast](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islast) ブロックで囲み、実行を系列の最後のバーに限定することで、セルのプロパティの不必要な設定を避けることができます。

こちらもご覧ください

[table.cell\_set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_bgcolor) [table.cell\_set\_height](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_height) [table.cell\_set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text) [table.cell\_set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_color) [table.cell\_set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_halign) [table.cell\_set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_size) [table.cell\_set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_valign) [table.cell\_set\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_width) [table.cell\_set\_tooltip](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_tooltip)

### table.cell\_set\_bgcolor()

この関数は、セルの背景色を設定します。

構文

```
table.cell_set_bgcolor(table_id, column, row, bgcolor) → void
```

引数

table\_id (series table) テーブルオブジェクト。

column (series int) セルの列のインデックス。ナンバリングは 0 から始まります。

row (series int) セルの行のインデックス。ナンバリングは 0 から始まります。

bgcolor (series color) セルの背景色。

こちらもご覧ください

[table.cell\_set\_height](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_height) [table.cell\_set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text) [table.cell\_set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_color) [table.cell\_set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_halign) [table.cell\_set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_size) [table.cell\_set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_valign) [table.cell\_set\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_width) [table.cell\_set\_tooltip](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_tooltip)

### table.cell\_set\_height()

この関数は、セルの高さを設定します。

構文

```
table.cell_set_height(table_id, column, row, height) → void
```

引数

table\_id (series table) テーブルオブジェクト。

column (series int) セルの列のインデックス。ナンバリングは 0 から始まります。

row (series int) セルの行のインデックス。ナンバリングは 0 から始まります。

height (series int/float) チャートウィンドウに対するセルの高さのパーセンテージ。0 を渡すと、セル内のテキストに基づいて幅が自動調整されます。

こちらもご覧ください

[table.cell\_set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_bgcolor) [table.cell\_set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text) [table.cell\_set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_color) [table.cell\_set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_halign) [table.cell\_set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_size) [table.cell\_set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_valign) [table.cell\_set\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_width) [table.cell\_set\_tooltip](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_tooltip)

### table.cell\_set\_text()

この関数は、指定したセルにテキストを設定します。

構文

```
table.cell_set_text(table_id, column, row, text) → void
```

引数

table\_id (series table) テーブルオブジェクト。

column (series int) セルの列のインデックス。ナンバリングは 0 から始まります。

row (series int) セルの行のインデックス。ナンバリングは 0 から始まります。

text (series string) セル内に表示されるテキスト。

例

```
//@version=5
indicator("TABLE example")
var tLog = table.new(position = position.top_left, rows = 1, columns = 2, bgcolor = color.yellow, border_width=1)
table.cell(tLog, row = 0, column = 0, text = "sometext", text_color = color.blue)
table.cell_set_text(tLog, row = 0, column = 0, text = "sometext")
```

こちらもご覧ください

[table.cell\_set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_bgcolor) [table.cell\_set\_height](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_height) [table.cell\_set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_color) [table.cell\_set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_halign) [table.cell\_set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_size) [table.cell\_set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_valign) [table.cell\_set\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_width) [table.cell\_set\_tooltip](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_tooltip)

### table.cell\_set\_text\_color()

この関数は、セル内のテキストの色を設定します。

構文

```
table.cell_set_text_color(table_id, column, row, text_color) → void
```

引数

table\_id (series table) テーブルオブジェクト。

column (series int) セルの列のインデックス。ナンバリングは 0 から始まります。

row (series int) セルの行のインデックス。ナンバリングは 0 から始まります。

text\_color (series color) テキストの色。

こちらもご覧ください

[table.cell\_set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_bgcolor) [table.cell\_set\_height](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_height) [table.cell\_set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text) [table.cell\_set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_halign) [table.cell\_set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_size) [table.cell\_set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_valign) [table.cell\_set\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_width) [table.cell\_set\_tooltip](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_tooltip)

### table.cell\_set\_text\_font\_family()

セル内のテキストのフォントファミリーを設定します。

構文

```
table.cell_set_text_font_family(table_id, column, row, text_font_family) → void
```

引数

table\_id (series table) テーブルオブジェクト。

column (series int) セルの列のインデックス。ナンバリングは 0 から始まります。

row (series int) セルの行のインデックス。ナンバリングは 0 から始まります。

text\_font\_family (series string) テキストのフォントファミリー。可能な値は [font.family\_default](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_default), [font.family\_monospace](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_monospace) です。

例

```
//@version=5
indicator("Example of setting the table cell font")
var t = table.new(position.top_left, rows = 1, columns = 1)
table.cell(t, 0, 0, "monospace", text_color = color.blue)
table.cell_set_text_font_family(t, 0, 0, font.family_monospace)
```

こちらもご覧ください

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [font.family\_default](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_default) [font.family\_monospace](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_monospace)

### table.cell\_set\_text\_halign()

この関数は、セルのテキストの水平方向の配置を設定します。

構文

```
table.cell_set_text_halign(table_id, column, row, text_halign) → void
```

引数

table\_id (series table) テーブルオブジェクト。

column (series int) セルの列のインデックス。ナンバリングは 0 から始まります。

row (series int) セルの行のインデックス。ナンバリングは 0 から始まります。

text\_halign (series string) セルのテキストの水平方向の配置。可能な値は [text.align\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_left), [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center), [text.align\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_right) です。

こちらもご覧ください

[table.cell\_set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_bgcolor) [table.cell\_set\_height](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_height) [table.cell\_set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text) [table.cell\_set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_color) [table.cell\_set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_size) [table.cell\_set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_valign) [table.cell\_set\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_width) [table.cell\_set\_tooltip](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_tooltip)

### table.cell\_set\_text\_size()

この関数は、セルのテキストのサイズを設定します。

構文

```
table.cell_set_text_size(table_id, column, row, text_size) → void
```

引数

table\_id (series table) テーブルオブジェクト。

column (series int) セルの列のインデックス。ナンバリングは 0 から始まります。

row (series int) セルの行のインデックス。ナンバリングは 0 から始まります。

text\_size (series string) テキストのサイズ。可能な値は [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto), [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny), [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small), [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal), [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large), [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge) です。

こちらもご覧ください

[table.cell\_set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_bgcolor) [table.cell\_set\_height](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_height) [table.cell\_set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text) [table.cell\_set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_color) [table.cell\_set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_halign) [table.cell\_set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_valign) [table.cell\_set\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_width) [table.cell\_set\_tooltip](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_tooltip)

### table.cell\_set\_text\_valign()

この関数は、セルのテキストの垂直方向の配置を設定します。

構文

```
table.cell_set_text_valign(table_id, column, row, text_valign) → void
```

引数

table\_id (series table) テーブルオブジェクト。

column (series int) セルの列のインデックス。ナンバリングは 0 から始まります。

row (series int) セルの行のインデックス。ナンバリングは 0 から始まります。

text\_valign (series string) セルのテキストの垂直方向の配置。可能な値は [text.align\_top](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_top), [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center), [text.align\_bottom](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_bottom) です。

こちらもご覧ください

[table.cell\_set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_bgcolor) [table.cell\_set\_height](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_height) [table.cell\_set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text) [table.cell\_set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_color) [table.cell\_set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_halign) [table.cell\_set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_size) [table.cell\_set\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_width) [table.cell\_set\_tooltip](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_tooltip)

### table.cell\_set\_tooltip()

この関数は、指定したセル内にツールチップを設定します。

構文

```
table.cell_set_tooltip(table_id, column, row, tooltip) → void
```

引数

table\_id (series table) テーブルオブジェクト。

column (series int) セルの列のインデックス。ナンバリングは 0 から始まります。

row (series int) セルの行のインデックス。ナンバリングは 0 から始まります。

tooltip (series string) セル内に表示されるツールチップ。

例

```
//@version=5
indicator("TABLE example")
var tLog = table.new(position = position.top_left, rows = 1, columns = 2, bgcolor = color.yellow, border_width=1)
table.cell(tLog, row = 0, column = 0, text = "sometext", text_color = color.blue)
table.cell_set_tooltip(tLog, row = 0, column = 0, tooltip = "sometext")
```

こちらもご覧ください

[table.cell\_set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_bgcolor) [table.cell\_set\_height](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_height) [table.cell\_set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_color) [table.cell\_set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_halign) [table.cell\_set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_size) [table.cell\_set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_valign) [table.cell\_set\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_width) [table.cell\_set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text)

### table.cell\_set\_width()

この関数は、セルの幅を設定します。

構文

```
table.cell_set_width(table_id, column, row, width) → void
```

引数

table\_id (series table) テーブルオブジェクト。

column (series int) セルの列のインデックス。ナンバリングは 0 から始まります。

row (series int) セルの行のインデックス。ナンバリングは 0 から始まります。

width (series int/float) チャートウィンドウに対するセルの幅のパーセンテージ。0 を渡すと、セル内のテキストに基づいて幅が自動調整されます。

こちらもご覧ください

[table.cell\_set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_bgcolor) [table.cell\_set\_height](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_height) [table.cell\_set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text) [table.cell\_set\_text\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_color) [table.cell\_set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_halign) [table.cell\_set\_text\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_size) [table.cell\_set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_valign) [table.cell\_set\_tooltip](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_tooltip)

### table.clear()

この関数は、テーブルからセルまたは一連のセルを削除します。セルは、start\_column と start\_row で左上隅を、end\_column と end\_row で右下隅を指定した矩形状に削除されます。

構文

```
table.clear(table_id, start_column, start_row, end_column, end_row) → void
```

引数

table\_id (series table) テーブルオブジェクト。

start\_column (series int) 削除する最初のセルの列のインデックス。ナンバリングは 0 から始まります。

start\_row (series int) 削除する最初のセルの行のインデックス。ナンバリングは 0 から始まります。

end\_column (series int) 削除する最後のセルの列のインデックス。オプションの引数です。デフォルトは start\_column で使用される引数です。ナンバリングは 0 から始まります。

end\_row (series int) 削除する最後のセルの行のインデックス。オプションの引数です。デフォルトは start\_row で使用される引数です。ナンバリングは 0 から始まります。

例

```
//@version=5
indicator("A donut", overlay=true)
if barstate.islast
    colNum = 8, rowNum = 8
    padding = "◯"
    donutTable = table.new(position.middle_right, colNum, rowNum)
    for c = 0 to colNum - 1
        for r = 0 to rowNum - 1
            table.cell(donutTable, c, r, text=padding, bgcolor=#face6e, text_color=color.new(color.black, 100))
    table.clear(donutTable, 2, 2, 5, 5)
```

こちらもご覧ください

[table.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.delete) [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new)

### table.delete()

この関数は、テーブルを削除します。

構文

```
table.delete(table_id) → void
```

引数

table\_id (series table) テーブルオブジェクト。

例

```
//@version=5
indicator("table.delete example")
var testTable = table.new(position = position.top_right, columns = 2, rows = 1, bgcolor = color.yellow, border_width = 1)
if barstate.islast
    table.cell(table_id = testTable, column = 0, row = 0, text = "Open is " + str.tostring(open))
    table.cell(table_id = testTable, column = 1, row = 0, text = "Close is " + str.tostring(close), bgcolor=color.teal)
if barstate.isrealtime
    table.delete(testTable)
```

こちらもご覧ください

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.clear](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.clear)

### table.merge\_cells()

この関数は、テーブル中の連続したセルを1つのセルに統合します。セルの結合は短形で行われ、start\_column と start\_row で左上隅を、end\_column と end\_row で右下隅を指定します。

構文

```
table.merge_cells(table_id, start_column, start_row, end_column, end_row) → void
```

引数

table\_id (series table) テーブルオブジェクト。

start\_column (series int) 結合する最初のセルの列のインデックス。ナンバリングは0から始まります。

start\_row (series int) 結合する最初のセルの行のインデックス。ナンバリングは0から始まります。

end\_column (series int) 結合する最後のセルの列のインデックス。ナンバリングは0から始まります。

end\_row (series int) 結合する最後のセルの行のインデックス。ナンバリングは0から始まります。

例

```
//@version=5
indicator("table.merge_cells example")
SMA50  = ta.sma(close, 50)
SMA100 = ta.sma(close, 100)
SMA200 = ta.sma(close, 200)
if barstate.islast
    maTable = table.new(position.bottom_right, 3, 3, bgcolor = color.gray, border_width = 1, border_color = color.black)
    // Header
    table.cell(maTable, 0, 0, text = "SMA Table")
    table.merge_cells(maTable, 0, 0, 2, 0)
    // Cell Titles
    table.cell(maTable, 0, 1, text = "SMA 50")
    table.cell(maTable, 1, 1, text = "SMA 100")
    table.cell(maTable, 2, 1, text = "SMA 200")
    // Values
    table.cell(maTable, 0, 2, bgcolor = color.white, text = str.tostring(SMA50))
    table.cell(maTable, 1, 2, bgcolor = color.white, text = str.tostring(SMA100))
    table.cell(maTable, 2, 2, bgcolor = color.white, text = str.tostring(SMA200))
```

備考

この関数は、セルのプロパティがまだ [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) で定義されていない場合でも、セルを結合します。

結合されたセルは、幅と高さ以外のすべての値を `start_column`:`start_row` に位置するセルから継承します。結合されたセルの幅と高さは、隣接する列や行にある他のセルの幅と高さに基づき、手動で設定することはできません。

`table.cell_set_*` 関数でマージされたセルを変更するには、`start_column`:`start_row` の座標のセルを対象にしてください。

すでに結合されているセルを結合しようとすると、エラーになります。

こちらもご覧ください

[table.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.delete) [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new)

### table.new()

この関数は、新しい表を作成します。

構文

```
table.new(position, columns, rows, bgcolor, frame_color, frame_width, border_color, border_width, force_overlay) → series table
```

引数

position (series string) テーブルの位置。可能な値は [position.top\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_left), [position.top\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_center), [position.top\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_right), [position.middle\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_left), [position.middle\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_center), [position.middle\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_right), [position.bottom\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_left), [position.bottom\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_center), [position.bottom\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_right) です。

columns (series int) テーブルの列数。

rows (series int) テーブルの行数。

bgcolor (series color) テーブルの背景色。オプションの引数です。デフォルトは無色です。

frame\_color (series color) テーブルの外枠の色。オプションの引数です。デフォルトは無色です。

frame\_width (series int) テーブルの外枠の幅。オプションの引数です。デフォルトは 0 です。

border\_color (series color) セルの境界線（外枠以外）の色。オプションの引数です。デフォルトは無色です。

border\_width (series int) セルの境界線（外枠以外）の幅。オプションの引数です。デフォルトは 0 です。

force\_overlay (const bool) [true](https://jp.tradingview.com/pine-script-reference/v5/#const_true) の場合、スクリプトが別のペインを占めている時でも、描画はメインのチャートペインに表示されます。オプションの引数です。デフォルトは [false](https://jp.tradingview.com/pine-script-reference/v5/#const_false) です。

例

```
//@version=5
indicator("table.new example")
var testTable = table.new(position = position.top_right, columns = 2, rows = 1, bgcolor = color.yellow, border_width = 1)
if barstate.islast
    table.cell(table_id = testTable, column = 0, row = 0, text = "Open is " + str.tostring(open))
    table.cell(table_id = testTable, column = 1, row = 0, text = "Close is " + str.tostring(close), bgcolor=color.teal)
```

リターン

他の table.\*() 関数に渡すことができるテーブルオブジェクトのID。

備考

この関数は、テーブルオブジェクト自体を作成しますが、セルにデータが入力されるまでテーブルは表示されません。セルを定義し、その内容や属性を変更するには、 [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) と他の table.cell\_\*() 関数を使用してください。

1回の [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) の呼び出しで、表示できるテーブルは1つ（最後に描画されたもの）だけですが、この関数自体は、使用される各バーで再計算されます。パフォーマンス上の理由から、 [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) は [var](https://jp.tradingview.com/pine-script-reference/v5/#kw_var) キーワード（最初のバーでのみテーブルオブジェクトが作成されます）、または [if](https://jp.tradingview.com/pine-script-reference/v5/#kw_if) [barstate.islast](https://jp.tradingview.com/pine-script-reference/v5/#var_barstate.islast) ブロック（最後のバーでのみテーブルオブジェクトが作成されます）と組み合わせて使用するのが賢明です。

こちらもご覧ください

[table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.clear](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.clear) [table.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.delete) [table.set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_bgcolor) [table.set\_border\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_border_color) [table.set\_border\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_border_width) [table.set\_frame\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_frame_color) [table.set\_frame\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_frame_width) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position)

### table.set\_bgcolor()

この関数は、テーブルの背景色を設定します。

構文

```
table.set_bgcolor(table_id, bgcolor) → void
```

引数

table\_id (series table) テーブルオブジェクト。

bgcolor (series color) テーブルの背景色。オプションの引数です。デフォルトは無色です。

こちらもご覧ください

[table.clear](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.clear) [table.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.delete) [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.set\_border\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_border_color) [table.set\_border\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_border_width) [table.set\_frame\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_frame_color) [table.set\_frame\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_frame_width) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position)

### table.set\_border\_color()

この関数は、テーブルのセルの境界線（外枠以外）の色を設定します。

構文

```
table.set_border_color(table_id, border_color) → void
```

引数

table\_id (series table) テーブルオブジェクト。

border\_color (series color) 境界線の色。オプションの引数です。デフォルトは無色です。

こちらもご覧ください

[table.clear](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.clear) [table.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.delete) [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.set\_frame\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_frame_color) [table.set\_border\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_border_width) [table.set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_bgcolor) [table.set\_frame\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_frame_width) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position)

### table.set\_border\_width()

この関数は、テーブルのセルの境界線（外枠以外）の幅を設定します。

構文

```
table.set_border_width(table_id, border_width) → void
```

引数

table\_id (series table) テーブルオブジェクト。

border\_width (series int) 境界線の幅。オプションの引数です。デフォルトは 0 です。

こちらもご覧ください

[table.clear](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.clear) [table.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.delete) [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.set\_frame\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_frame_color) [table.set\_frame\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_frame_width) [table.set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_bgcolor) [table.set\_border\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_border_color) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position)

### table.set\_frame\_color()

この関数は、テーブルの外枠の色を設定します。

構文

```
table.set_frame_color(table_id, frame_color) → void
```

引数

table\_id (series table) テーブルオブジェクト。

frame\_color (series color) テーブルの外枠の色。オプションの引数です。デフォルトは無色です。

こちらもご覧ください

[table.clear](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.clear) [table.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.delete) [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.set\_border\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_border_color) [table.set\_border\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_border_width) [table.set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_bgcolor) [table.set\_frame\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_frame_width) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position)

### table.set\_frame\_width()

この関数は、テーブルの外枠の幅を設定します。

構文

```
table.set_frame_width(table_id, frame_width) → void
```

引数

table\_id (series table) テーブルオブジェクト。

frame\_width (series int) テーブルの外枠の幅。オプションの引数です。デフォルトは 0 です。

こちらもご覧ください

[table.clear](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.clear) [table.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.delete) [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.set\_frame\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_frame_color) [table.set\_border\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_border_width) [table.set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_bgcolor) [table.set\_border\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_border_color) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position)

### table.set\_position()

この関数は、テーブルの位置を設定します。

構文

```
table.set_position(table_id, position) → void
```

引数

table\_id (series table) テーブルオブジェクト。

position (series string) テーブルの位置。可能な値は [position.top\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_left), [position.top\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_center), [position.top\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_right), [position.middle\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_left), [position.middle\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_center), [position.middle\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_right), [position.bottom\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_left), [position.bottom\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_center), [position.bottom\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_right) です。

こちらもご覧ください

[table.clear](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.clear) [table.delete](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.delete) [table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.set\_bgcolor](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_bgcolor) [table.set\_border\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_border_color) [table.set\_border\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_border_width) [table.set\_frame\_color](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_frame_color) [table.set\_frame\_width](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_frame_width)


## 定数

### adjustment.dividends

配当調整タイプの定数（配当調整が行われます）。

タイプ

const string

こちらもご覧ください

[adjustment.none](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.none) [adjustment.splits](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.splits) [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new)

### adjustment.none

調整無しタイプの定数（調整は適用されません）。

タイプ

const string

こちらもご覧ください

[adjustment.splits](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.splits) [adjustment.dividends](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.dividends) [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new)

### adjustment.splits

分割調整タイプの定数（分割調整が行われます）。

タイプ

const string

こちらもご覧ください

[adjustment.none](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.none) [adjustment.dividends](https://jp.tradingview.com/pine-script-reference/v5/#const_adjustment.dividends) [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new)

### alert.freq\_all

alert()関数の `freq` パラメーターで利用される名前付き定数です。

すべての関数の呼び出しがアラートをトリガーします。

タイプ

const string

こちらもご覧ください

[alert](https://jp.tradingview.com/pine-script-reference/v5/#fun_alert)

### alert.freq\_once\_per\_bar

alert()関数の `freq` パラメーターで利用される名前付き定数です。

バー内の最初の関数呼び出しがアラートをトリガーします。

タイプ

const string

こちらもご覧ください

[alert](https://jp.tradingview.com/pine-script-reference/v5/#fun_alert)

### alert.freq\_once\_per\_bar\_close

alert()関数の `freq` パラメーターで利用される名前付き定数です。

リアルタイムバーでバーが確定する際の最後のスクリプトの実行中に発生した場合のみアラートをトリガーします。

タイプ

const string

こちらもご覧ください

[alert](https://jp.tradingview.com/pine-script-reference/v5/#fun_alert)

### backadjustment.inherit

関数 [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) および [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) 内のパラメーター `backadjustment` の値を指定する定数です。

タイプ

const backadjustment

こちらもご覧ください

[ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) [backadjustment.on](https://jp.tradingview.com/pine-script-reference/v5/#const_backadjustment.on) [backadjustment.off](https://jp.tradingview.com/pine-script-reference/v5/#const_backadjustment.off)

### backadjustment.off

関数 [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) および [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) 内のパラメーター `backadjustment` の値を指定する定数です。

タイプ

const backadjustment

こちらもご覧ください

[ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) [backadjustment.on](https://jp.tradingview.com/pine-script-reference/v5/#const_backadjustment.on) [backadjustment.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_backadjustment.inherit)

### backadjustment.on

関数 [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) および [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) 内のパラメーター `backadjustment` の値を指定する定数です。

タイプ

const backadjustment

こちらもご覧ください

[ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) [backadjustment.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_backadjustment.inherit) [backadjustment.off](https://jp.tradingview.com/pine-script-reference/v5/#const_backadjustment.off)

### barmerge.gaps\_off

リクエストされたデータのマージ方法。データはギャップなしで連続してマージされ、すべてのギャップは以前の最も近い既存の値で埋められます。

タイプ

const barmerge\_gaps

こちらもご覧ください

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [barmerge.gaps\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_on)

### barmerge.gaps\_on

リクエストされたデータのマージ方法。データはギャップあり ( [na](https://jp.tradingview.com/pine-script-reference/v5/#var_na) 値) でマージされます。

タイプ

const barmerge\_gaps

こちらもご覧ください

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [barmerge.gaps\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.gaps_off)

### barmerge.lookahead\_off

リクエストされたデータ位置のマージ方法。 要求されたバーセットは、バーの終了時刻でのソート順に現在のバーセットとマージされます。このマージ方法は、過去データの計算で「未来」からデータを取得することによる影響を無効にします。

タイプ

const barmerge\_lookahead

こちらもご覧ください

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [barmerge.lookahead\_on](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_on)

### barmerge.lookahead\_on

リクエストされたデータ位置のマージ方法。 要求されたバーセットは、バーの開始時刻でのソート順に現在のバーセットとマージされます。このマージ方法は、過去データの計算で「未来」からデータを取得するという望ましくない影響をもたらす可能性があります。これはバックテストストラテジーでは利用できませんが、インジケーターでは役に立つことがあります。

タイプ

const barmerge\_lookahead

こちらもご覧ください

[request.security](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.security) [barmerge.lookahead\_off](https://jp.tradingview.com/pine-script-reference/v5/#const_barmerge.lookahead_off)

### color.aqua

カラー #00BCD4 の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.black

カラー #363A45 の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.blue

カラー #2962ff の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.fuchsia

カラー #E040FB の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.gray

カラー #787B86 の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.green

カラー #4CAF50 の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.lime

カラー #00E676 の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.maroon

カラー #880E4F の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.navy

カラー #311B92 の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.olive

カラー #808000 の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.orange

カラー #FF9800 の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua)

### color.purple

カラー #9C27B0 の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.red

カラー #FF5252 の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.silver

カラー #B2B5BE の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.teal

カラー #00897B の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.white

カラー #FFFFFF の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.yellow](https://jp.tradingview.com/pine-script-reference/v5/#const_color.yellow) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### color.yellow

カラー #FFEB3B の名前付き定数です。

タイプ

const color

こちらもご覧ください

[color.black](https://jp.tradingview.com/pine-script-reference/v5/#const_color.black) [color.silver](https://jp.tradingview.com/pine-script-reference/v5/#const_color.silver) [color.gray](https://jp.tradingview.com/pine-script-reference/v5/#const_color.gray) [color.white](https://jp.tradingview.com/pine-script-reference/v5/#const_color.white) [color.maroon](https://jp.tradingview.com/pine-script-reference/v5/#const_color.maroon) [color.red](https://jp.tradingview.com/pine-script-reference/v5/#const_color.red) [color.purple](https://jp.tradingview.com/pine-script-reference/v5/#const_color.purple) [color.fuchsia](https://jp.tradingview.com/pine-script-reference/v5/#const_color.fuchsia) [color.green](https://jp.tradingview.com/pine-script-reference/v5/#const_color.green) [color.lime](https://jp.tradingview.com/pine-script-reference/v5/#const_color.lime) [color.olive](https://jp.tradingview.com/pine-script-reference/v5/#const_color.olive) [color.navy](https://jp.tradingview.com/pine-script-reference/v5/#const_color.navy) [color.blue](https://jp.tradingview.com/pine-script-reference/v5/#const_color.blue) [color.teal](https://jp.tradingview.com/pine-script-reference/v5/#const_color.teal) [color.aqua](https://jp.tradingview.com/pine-script-reference/v5/#const_color.aqua) [color.orange](https://jp.tradingview.com/pine-script-reference/v5/#const_color.orange)

### currency.AUD

オーストラリアドル

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.BTC

ビットコイン

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.CAD

カナダドル

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.CHF

スイスフラン

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.ETH

イーサリアム

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.EUR

ユーロ

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.GBP

英ポンド

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.HKD

香港ドル

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.INR

インドルピー

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.JPY

日本円

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.KRW

韓国ウォン

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.MYR

マレーシア・リンギット

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.NOK

ノルウェー・クローネ

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.NONE

不特定の通貨。

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.NZD

ニュージーランドドル

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.RUB

ロシアルーブル

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.SEK

スウェーデン・クローナ

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.SGD

シンガポールドル

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.TRY

トルコリラ

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.USD

米ドル

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.USDT

テザー

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### currency.ZAR

南アフリカランド

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### dayofweek.friday

[dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) 関数の戻り値と [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) 変数の値の名前付き定数です。

タイプ

const int

こちらもご覧ください

[dayofweek.sunday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.sunday) [dayofweek.monday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.monday) [dayofweek.tuesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.tuesday) [dayofweek.wednesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.wednesday) [dayofweek.thursday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.thursday) [dayofweek.saturday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.saturday)

### dayofweek.monday

[dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) 関数の戻り値と [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) 変数の値の名前付き定数です。

タイプ

const int

こちらもご覧ください

[dayofweek.sunday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.sunday) [dayofweek.tuesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.tuesday) [dayofweek.wednesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.wednesday) [dayofweek.thursday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.thursday) [dayofweek.friday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.friday) [dayofweek.saturday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.saturday)

### dayofweek.saturday

[dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) 関数の戻り値と [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) 変数の値の名前付き定数です。

タイプ

const int

こちらもご覧ください

[dayofweek.sunday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.sunday) [dayofweek.monday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.monday) [dayofweek.tuesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.tuesday) [dayofweek.wednesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.wednesday) [dayofweek.thursday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.thursday) [dayofweek.friday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.friday)

### dayofweek.sunday

[dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) 関数の戻り値と [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) 変数の値の名前付き定数です。

タイプ

const int

こちらもご覧ください

[dayofweek.monday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.monday) [dayofweek.tuesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.tuesday) [dayofweek.wednesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.wednesday) [dayofweek.thursday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.thursday) [dayofweek.friday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.friday) [dayofweek.saturday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.saturday)

### dayofweek.thursday

[dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) 関数の戻り値と [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) 変数の値の名前付き定数です。

タイプ

const int

こちらもご覧ください

[dayofweek.sunday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.sunday) [dayofweek.monday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.monday) [dayofweek.tuesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.tuesday) [dayofweek.wednesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.wednesday) [dayofweek.friday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.friday) [dayofweek.saturday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.saturday)

### dayofweek.tuesday

[dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) 関数の戻り値と [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) 変数の値の名前付き定数です。

タイプ

const int

こちらもご覧ください

[dayofweek.sunday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.sunday) [dayofweek.monday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.monday) [dayofweek.wednesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.wednesday) [dayofweek.thursday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.thursday) [dayofweek.friday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.friday) [dayofweek.saturday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.saturday)

### dayofweek.wednesday

[dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#fun_dayofweek) 関数の戻り値と [dayofweek](https://jp.tradingview.com/pine-script-reference/v5/#var_dayofweek) 変数の値の名前付き定数です。

タイプ

const int

こちらもご覧ください

[dayofweek.sunday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.sunday) [dayofweek.monday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.monday) [dayofweek.tuesday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.tuesday) [dayofweek.thursday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.thursday) [dayofweek.friday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.friday) [dayofweek.saturday](https://jp.tradingview.com/pine-script-reference/v5/#const_dayofweek.saturday)

### display.all

`plot*()` と `input*()` 関数の `display` パラメーターで使用する名前付き定数です。プロットした値や入力値を、表示可能な場所すべて表示します。

タイプ

const plot\_simple\_display

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [plotarrow](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotarrow) [plotbar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotbar) [plotcandle](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotcandle)

### display.data\_window

`plot*()` と `input*()` 関数の `display` パラメーターで使用する名前付き定数です。プロットした値や入力値を、チャート画面右側のツールバーからアクセスできる「データウィンドウ」に表示します。

タイプ

const plot\_display

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [plotarrow](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotarrow) [plotbar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotbar) [plotcandle](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotcandle)

### display.none

`plot*()` と `input*()` 関数の `display` パラメーターで使用する名前付き定数です。`plot*()` 関数でこれを使用すると、プロットした値がどこにも表示されないことになります。しかしながら、アラートのテンプレートメッセージと [fill](https://jp.tradingview.com/pine-script-reference/v5/#fun_fill) 関数ではこの値が使用され、エクスポートされたチャートデータに表示されます。`input*()` 関数でこの定数を使用すると、スクリプトの設定範囲内でのみ値を表示します。

タイプ

const plot\_simple\_display

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [plotarrow](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotarrow) [plotbar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotbar) [plotcandle](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotcandle)

### display.pane

`display` 関数の `plot*()` パラメーターで使用する名前付き定数です。プロットした値をスクリプトで使用されたチャートペインに表示します。

タイプ

const plot\_display

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [plotarrow](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotarrow) [plotbar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotbar) [plotcandle](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotcandle)

### display.price\_scale

`display` 関数の `plot*()` パラメーターで使用する名前付き定数です。プロットのラベルと値の表示がチャート設定で有効になっていれば、それらを価格スケールに表示します。

タイプ

const plot\_display

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [plotarrow](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotarrow) [plotbar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotbar) [plotcandle](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotcandle)

### display.status\_line

`plot*()` と `input*()` 関数の `display` パラメーターで使用する名前付き定数です。スクリプト名の隣にあるステータスラインの表示がチャート設定で有効になっていれば、プロットした値や入力値をそこに表示します。

タイプ

const plot\_display

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [plotarrow](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotarrow) [plotbar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotbar) [plotcandle](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotcandle)

### dividends.gross

[request.dividends](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.dividends) 関数の名前付き定数です。控除前の株式の配当リターンをリクエストする為に使用されます。

タイプ

const string

こちらもご覧ください

[request.dividends](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.dividends)

### dividends.net

[request.dividends](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.dividends) 関数の名前付き定数です。控除後の株式の配当リターンをリクエストする為に使用されます。

タイプ

const string

こちらもご覧ください

[request.dividends](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.dividends)

### earnings.actual

[request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings) 関数の名前付き定数です。収益の発表値をリクエストするために使用されます。

タイプ

const string

こちらもご覧ください

[request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings)

### earnings.estimate

[request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings) 関数の名前付き定数です。収益の予測値をリクエストするために使用されます。

タイプ

const string

こちらもご覧ください

[request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings)

### earnings.standardized

[request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings) 関数の名前付き定数です。収益の標準化値をリクエストするために使用されます。

タイプ

const string

こちらもご覧ください

[request.earnings](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.earnings)

### extend.both

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) と [line.set\_extend](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_extend) 関数の名前付き定数です。

タイプ

const string

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [line.set\_extend](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_extend) [extend.none](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.none) [extend.left](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.left) [extend.right](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.right)

### extend.left

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) と [line.set\_extend](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_extend) 関数の名前付き定数です。

タイプ

const string

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [line.set\_extend](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_extend) [extend.none](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.none) [extend.right](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.right) [extend.both](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.both)

### extend.none

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) と [line.set\_extend](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_extend) 関数の名前付き定数です。

タイプ

const string

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [line.set\_extend](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_extend) [extend.left](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.left) [extend.right](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.right) [extend.both](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.both)

### extend.right

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) と [line.set\_extend](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_extend) 関数の名前付き定数です。

タイプ

const string

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [line.set\_extend](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_extend) [extend.none](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.none) [extend.left](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.left) [extend.both](https://jp.tradingview.com/pine-script-reference/v5/#const_extend.both)

### false

[bool](https://jp.tradingview.com/pine-script-reference/v5/#type_bool) の値を表すリテラルで、比較演算の結果を表します。

備考

[比較演算子](https://www.tradingview.com/pine-script-docs/language/operators/#comparison-operators) や [論理演算子](https://www.tradingview.com/pine-script-docs/language/operators/#logical-operators) については、ユーザーマニュアルをご覧ください。

こちらもご覧ください

[bool](https://jp.tradingview.com/pine-script-reference/v5/#type_bool)

### font.family\_default

以下の関数の、デフォルトのテキストフォントです: [box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new)、 [box.set\_text\_font\_family](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_font_family)、 [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)、 [label.set\_text\_font\_family](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_text_font_family)、 [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell)、 [table.cell\_set\_text\_font\_family](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_font_family)

タイプ

const string

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.set\_text\_font\_family](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_font_family) [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_text\_font\_family](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_text_font_family) [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.cell\_set\_text\_font\_family](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_font_family) [font.family\_monospace](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_monospace)

### font.family\_monospace

以下の関数の、等幅テキストフォントです: [box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new), [box.set\_text\_font\_family](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_font_family), [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new), [label.set\_text\_font\_family](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_text_font_family), [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell), [table.cell\_set\_text\_font\_family](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_font_family)

タイプ

const string

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.set\_text\_font\_family](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_font_family) [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_text\_font\_family](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_text_font_family) [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.cell\_set\_text\_font\_family](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_font_family) [font.family\_default](https://jp.tradingview.com/pine-script-reference/v5/#const_font.family_default)

### format.inherit

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) 関数の親系列からスクリプトの出力値のフォーマットを選択するための名前付き定数です。

タイプ

const string

こちらもご覧ください

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price) [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) [format.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_format.percent)

### format.mintick

[str.tostring](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tostring) 関数で使用される名前付き定数です。この引数で [str.tostring](https://jp.tradingview.com/pine-script-reference/v5/#fun_str.tostring) に数値を渡すと、その数値を [syminfo.mintick](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.mintick) で割ることができる最も近い値に丸め、余りを取り除いて四捨五入し、その値の文字列バージョンを末尾にゼロパディングして返します。

タイプ

const string

こちらもご覧ください

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) [format.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_format.inherit) [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price) [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume)

### format.percent

インジケーター関数において、スクリプトの出力値をパーセントで表すフォーマットを選択するための名前付き定数です。値の後にパーセント記号を追加します。

タイプ

const string

備考

デフォルトの精度は、チャート自体の精度に関わらず2です。 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) 関数の 'precision' 引数で変更が可能です。

こちらもご覧ください

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) [format.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_format.inherit) [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price) [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume)

### format.price

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) 関数の価格としてスクリプトの出力値のフォーマットを選択するための名前付き定数です。

タイプ

const string

備考

フォーマットが format.price の場合、デフォルトの精度値が設定されます。インジケーター関数の precision 引数で精度の値を変更することができます。

こちらもご覧ください

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) [format.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_format.inherit) [format.volume](https://jp.tradingview.com/pine-script-reference/v5/#const_format.volume) [format.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_format.percent)

### format.volume

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) 関数でスクリプトの出力値のフォーマットを出来高として選択するための名前付き定数です。例えば '5183' は '5.183K' としてフォーマットされます。

この変数で定義された浮動小数点の精度のルールは、他の精度設定に優先します。 [indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator)、 [strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) または `plot*()` の呼び出しがこの `format` オプションを使用する場合、関数の `precision` パラメータは結果に影響しません。

タイプ

const string

こちらもご覧ください

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) [format.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_format.inherit) [format.price](https://jp.tradingview.com/pine-script-reference/v5/#const_format.price) [format.percent](https://jp.tradingview.com/pine-script-reference/v5/#const_format.percent)

### hline.style\_dashed

[hline](https://jp.tradingview.com/pine-script-reference/v5/#fun_hline) 関数の破線スタイルの名前付き定数です。

タイプ

const hline\_style

こちらもご覧ください

[hline.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_hline.style_solid) [hline.style\_dotted](https://jp.tradingview.com/pine-script-reference/v5/#const_hline.style_dotted)

### hline.style\_dotted

[hline](https://jp.tradingview.com/pine-script-reference/v5/#fun_hline) 関数の点線スタイルの名前付き定数です。

タイプ

const hline\_style

こちらもご覧ください

[hline.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_hline.style_solid) [hline.style\_dashed](https://jp.tradingview.com/pine-script-reference/v5/#const_hline.style_dashed)

### hline.style\_solid

[hline](https://jp.tradingview.com/pine-script-reference/v5/#fun_hline) 関数の実線スタイルの名前付き定数です。

タイプ

const hline\_style

こちらもご覧ください

[hline.style\_dotted](https://jp.tradingview.com/pine-script-reference/v5/#const_hline.style_dotted) [hline.style\_dashed](https://jp.tradingview.com/pine-script-reference/v5/#const_hline.style_dashed)

### label.style\_arrowdown

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_arrowup

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_circle

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_cross

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_diamond

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square)

### label.style\_flag

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_label\_center

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_label\_down

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_label\_left

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_label\_lower\_left

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_label\_lower\_right

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_label\_right

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_label\_up

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_label\_upper\_left

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_label\_upper\_right

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_none

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_square

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_text\_outline

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_triangledown

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_triangleup

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_xcross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_xcross) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_lower\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_left) [label.style\_label\_lower\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_lower_right) [label.style\_label\_upper\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_left) [label.style\_label\_upper\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_upper_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### label.style\_xcross

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) と [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) 関数のラベルスタイルです。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) [label.style\_none](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_none) [label.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_cross) [label.style\_triangleup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangleup) [label.style\_triangledown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_triangledown) [label.style\_flag](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_flag) [label.style\_circle](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_circle) [label.style\_arrowup](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowup) [label.style\_arrowdown](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_arrowdown) [label.style\_label\_up](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_up) [label.style\_label\_down](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_down) [label.style\_label\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_left) [label.style\_label\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_right) [label.style\_label\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_label_center) [label.style\_square](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_square) [label.style\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_label.style_diamond)

### line.style\_arrow\_both

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) と [line.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_style) 関数のラインスタイルです。双方のポイントに矢印が付いた実線です。

タイプ

const string

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [line.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_style) [line.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_solid) [line.style\_dotted](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dotted) [line.style\_dashed](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dashed) [line.style\_arrow\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_left) [line.style\_arrow\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_right)

### line.style\_arrow\_left

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) と [line.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_style) 関数のラインスタイルです。最初のポイントに矢印がある実線です。

タイプ

const string

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [line.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_style) [line.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_solid) [line.style\_dotted](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dotted) [line.style\_dashed](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dashed) [line.style\_arrow\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_right) [line.style\_arrow\_both](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_both)

### line.style\_arrow\_right

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) と [line.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_style) 関数のラインスタイルです。2番目のポイントに矢印がある実線です。

タイプ

const string

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [line.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_style) [line.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_solid) [line.style\_dotted](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dotted) [line.style\_dashed](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dashed) [line.style\_arrow\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_left) [line.style\_arrow\_both](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_both)

### line.style\_dashed

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) と [line.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_style) 関数のラインスタイルです。

タイプ

const string

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [line.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_style) [line.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_solid) [line.style\_dotted](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dotted) [line.style\_arrow\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_left) [line.style\_arrow\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_right) [line.style\_arrow\_both](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_both)

### line.style\_dotted

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) と [line.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_style) 関数のラインスタイルです。

タイプ

const string

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [line.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_style) [line.style\_solid](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_solid) [line.style\_dashed](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dashed) [line.style\_arrow\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_left) [line.style\_arrow\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_right) [line.style\_arrow\_both](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_both)

### line.style\_solid

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) と [line.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_style) 関数のラインスタイルです。

タイプ

const string

こちらもご覧ください

[line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [line.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_style) [line.style\_dotted](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dotted) [line.style\_dashed](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_dashed) [line.style\_arrow\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_left) [line.style\_arrow\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_right) [line.style\_arrow\_both](https://jp.tradingview.com/pine-script-reference/v5/#const_line.style_arrow_both)

### location.abovebar

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)、 [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) 関数の位置の値。 図形はメイン系列のバーの上にプロットされます。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [location.belowbar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.belowbar) [location.top](https://jp.tradingview.com/pine-script-reference/v5/#const_location.top) [location.bottom](https://jp.tradingview.com/pine-script-reference/v5/#const_location.bottom) [location.absolute](https://jp.tradingview.com/pine-script-reference/v5/#const_location.absolute)

### location.absolute

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)、 [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) 関数の位置の値。 図形は価格スケールの座標に連動して、インジケーターが示す値にプロットされます。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [location.abovebar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.abovebar) [location.belowbar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.belowbar) [location.top](https://jp.tradingview.com/pine-script-reference/v5/#const_location.top) [location.bottom](https://jp.tradingview.com/pine-script-reference/v5/#const_location.bottom)

### location.belowbar

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)、 [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) 関数の位置の値。 図形はメイン系列のバーの下にプロットされます。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [location.abovebar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.abovebar) [location.top](https://jp.tradingview.com/pine-script-reference/v5/#const_location.top) [location.bottom](https://jp.tradingview.com/pine-script-reference/v5/#const_location.bottom) [location.absolute](https://jp.tradingview.com/pine-script-reference/v5/#const_location.absolute)

### location.bottom

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)、 [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) 関数の位置の値。図形はチャートの境界線の下部付近にプロットされます。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [location.abovebar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.abovebar) [location.belowbar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.belowbar) [location.top](https://jp.tradingview.com/pine-script-reference/v5/#const_location.top) [location.absolute](https://jp.tradingview.com/pine-script-reference/v5/#const_location.absolute)

### location.top

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)、 [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) 関数の位置の値。 図形はチャートの境界線の上部付近にプロットされます。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [location.abovebar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.abovebar) [location.belowbar](https://jp.tradingview.com/pine-script-reference/v5/#const_location.belowbar) [location.bottom](https://jp.tradingview.com/pine-script-reference/v5/#const_location.bottom) [location.absolute](https://jp.tradingview.com/pine-script-reference/v5/#const_location.absolute)

### math.e

[ネイピア数](https://en.wikipedia.org/wiki/E_(mathematical_constant)) の名前付き定数です。これは、2.7182818284590452 に相当します。

タイプ

const float

こちらもご覧ください

[math.phi](https://jp.tradingview.com/pine-script-reference/v5/#const_math.phi) [math.pi](https://jp.tradingview.com/pine-script-reference/v5/#const_math.pi) [math.rphi](https://jp.tradingview.com/pine-script-reference/v5/#const_math.rphi)

### math.phi

[黄金比](https://en.wikipedia.org/wiki/Golden_ratio) の名前付き定数です。これは、1.6180339887498948 に相当します。

タイプ

const float

こちらもご覧ください

[math.e](https://jp.tradingview.com/pine-script-reference/v5/#const_math.e) [math.pi](https://jp.tradingview.com/pine-script-reference/v5/#const_math.pi) [math.rphi](https://jp.tradingview.com/pine-script-reference/v5/#const_math.rphi)

### math.pi

[円周率](https://en.wikipedia.org/wiki/Pi) の名前付き定数です。これは、3.1415926535897932 に相当します。

タイプ

const float

こちらもご覧ください

[math.e](https://jp.tradingview.com/pine-script-reference/v5/#const_math.e) [math.phi](https://jp.tradingview.com/pine-script-reference/v5/#const_math.phi) [math.rphi](https://jp.tradingview.com/pine-script-reference/v5/#const_math.rphi)

### math.rphi

[黄金比の逆数](https://en.wikipedia.org/wiki/Golden_ratio#Golden_ratio_conjugate) の名前付き定数です。これは、0.6180339887498948 に相当します。

タイプ

const float

こちらもご覧ください

[math.e](https://jp.tradingview.com/pine-script-reference/v5/#const_math.e) [math.pi](https://jp.tradingview.com/pine-script-reference/v5/#const_math.pi) [math.phi](https://jp.tradingview.com/pine-script-reference/v5/#const_math.phi)

### order.ascending

配列のソート順を最小値から最大値に設定します。

タイプ

const sort\_order

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sort)

### order.descending

配列のソート順を最大値から最小値に設定します。

タイプ

const sort\_order

こちらもご覧ください

[array.new\_float](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.new_float) [array.sort](https://jp.tradingview.com/pine-script-reference/v5/#fun_array.sort)

### plot.style\_area

'Area' スタイルの名前付き定数です。 [plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) 関数の `style` パラメーターの引数として使用されます。

タイプ

const plot\_style

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plot.style\_steplinebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_steplinebr) [plot.style\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_line) [plot.style\_linebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_linebr) [plot.style\_stepline](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline) [plot.style\_stepline\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline_diamond) [plot.style\_histogram](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_histogram) [plot.style\_areabr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_areabr) [plot.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_cross) [plot.style\_columns](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_columns) [plot.style\_circles](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_circles)

### plot.style\_areabr

'Area With Breaks' スタイルの名前付き定数です。 [plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) 関数の `style` パラメーターの引数として使用されます。 [plot.style\_area](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_area) に似ていますが、間隔が埋められていないところが異なります。

タイプ

const plot\_style

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plot.style\_steplinebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_steplinebr) [plot.style\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_line) [plot.style\_linebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_linebr) [plot.style\_stepline](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline) [plot.style\_stepline\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline_diamond) [plot.style\_histogram](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_histogram) [plot.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_cross) [plot.style\_area](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_area) [plot.style\_columns](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_columns) [plot.style\_circles](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_circles)

### plot.style\_circles

'Circles' スタイルの名前付き定数です。 関数 [plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) において `style` パラメーターの引数として使用されます。

タイプ

const plot\_style

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plot.style\_steplinebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_steplinebr) [plot.style\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_line) [plot.style\_linebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_linebr) [plot.style\_stepline](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline) [plot.style\_stepline\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline_diamond) [plot.style\_histogram](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_histogram) [plot.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_cross) [plot.style\_area](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_area) [plot.style\_areabr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_areabr) [plot.style\_columns](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_columns)

### plot.style\_columns

'Columns' スタイルの名前付き定数です。 [plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) 関数の `style` パラメーターの引数として使用されます。

タイプ

const plot\_style

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plot.style\_steplinebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_steplinebr) [plot.style\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_line) [plot.style\_linebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_linebr) [plot.style\_stepline](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline) [plot.style\_stepline\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline_diamond) [plot.style\_histogram](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_histogram) [plot.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_cross) [plot.style\_area](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_area) [plot.style\_areabr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_areabr) [plot.style\_circles](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_circles)

### plot.style\_cross

'Cross' スタイルの名前付き定数です。 [plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) 関数の `style` パラメーターの引数として使用されます。

タイプ

const plot\_style

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plot.style\_steplinebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_steplinebr) [plot.style\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_line) [plot.style\_linebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_linebr) [plot.style\_stepline](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline) [plot.style\_stepline\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline_diamond) [plot.style\_histogram](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_histogram) [plot.style\_area](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_area) [plot.style\_areabr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_areabr) [plot.style\_columns](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_columns) [plot.style\_circles](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_circles)

### plot.style\_histogram

'Histogram' スタイルの名前付き定数です。 [plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) 関数の `style` パラメーターの引数として使用されます。

タイプ

const plot\_style

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plot.style\_steplinebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_steplinebr) [plot.style\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_line) [plot.style\_linebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_linebr) [plot.style\_stepline](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline) [plot.style\_stepline\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline_diamond) [plot.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_cross) [plot.style\_area](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_area) [plot.style\_areabr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_areabr) [plot.style\_columns](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_columns) [plot.style\_circles](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_circles)

### plot.style\_line

'Line' スタイルの名前付き定数です。 [plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) 関数において `style` パラメーターの引数として使用されます。

タイプ

const plot\_style

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plot.style\_steplinebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_steplinebr) [plot.style\_linebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_linebr) [plot.style\_stepline](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline) [plot.style\_stepline\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline_diamond) [plot.style\_histogram](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_histogram) [plot.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_cross) [plot.style\_area](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_area) [plot.style\_areabr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_areabr) [plot.style\_columns](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_columns) [plot.style\_circles](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_circles)

### plot.style\_linebr

'Line With Breaks' スタイルを表す名前付き定数です。 [plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) 関数において `style` パラメーターの引数として使用されます。 [plot.style\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_line) に似ていますが、間隔が埋められていないところが異なります。

タイプ

const plot\_style

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plot.style\_steplinebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_steplinebr) [plot.style\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_line) [plot.style\_stepline](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline) [plot.style\_stepline\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline_diamond) [plot.style\_histogram](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_histogram) [plot.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_cross) [plot.style\_area](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_area) [plot.style\_areabr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_areabr) [plot.style\_columns](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_columns) [plot.style\_circles](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_circles)

### plot.style\_stepline

'Step Line' スタイルの名前付き定数です。 [plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) 関数の `style` パラメーターの引数として使用されます。

タイプ

const plot\_style

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plot.style\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_line) [plot.style\_steplinebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_steplinebr) [plot.style\_stepline\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline_diamond) [plot.style\_linebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_linebr) [plot.style\_histogram](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_histogram) [plot.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_cross) [plot.style\_area](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_area) [plot.style\_areabr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_areabr) [plot.style\_columns](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_columns) [plot.style\_circles](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_circles)

### plot.style\_stepline\_diamond

'Step Line With Diamonds' スタイルの名前付き定数です。 [plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) 関数の `style` パラメーターの引数として使用されます。 [plot.style\_stepline](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline) に似ていますが、データの変化が菱形でマークされる点が異なります。

タイプ

const plot\_style

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plot.style\_steplinebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_steplinebr) [plot.style\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_line) [plot.style\_linebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_linebr) [plot.style\_histogram](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_histogram) [plot.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_cross) [plot.style\_area](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_area) [plot.style\_areabr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_areabr) [plot.style\_columns](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_columns) [plot.style\_circles](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_circles)

### plot.style\_steplinebr

'Step line with Breaks' スタイルの名前付き定数です。 [plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) 関数の `style` パラメーターの引数として使用されます。

タイプ

const plot\_style

こちらもご覧ください

[plot](https://jp.tradingview.com/pine-script-reference/v5/#fun_plot) [plot.style\_circles](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_circles) [plot.style\_line](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_line) [plot.style\_linebr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_linebr) [plot.style\_stepline](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline) [plot.style\_stepline\_diamond](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_stepline_diamond) [plot.style\_histogram](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_histogram) [plot.style\_cross](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_cross) [plot.style\_area](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_area) [plot.style\_areabr](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_areabr) [plot.style\_columns](https://jp.tradingview.com/pine-script-reference/v5/#const_plot.style_columns)

### position.bottom\_center

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) と [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) 関数で使用される表の位置です。

テーブルを画面中央の下端にバインドします。

タイプ

const string

こちらもご覧ください

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position) [position.top\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_left) [position.top\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_center) [position.top\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_right) [position.middle\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_left) [position.middle\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_center) [position.middle\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_right) [position.bottom\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_left)

### position.bottom\_left

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) と [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) 関数で使用される表の位置です。

テーブルを画面の左下にバインドします。

タイプ

const string

こちらもご覧ください

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position) [position.top\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_left) [position.top\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_center) [position.top\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_right) [position.middle\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_left) [position.middle\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_center) [position.middle\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_right) [position.bottom\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_center)

### position.bottom\_right

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) と [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) 関数で使用される表の位置です。

テーブルを画面の右下にバインドします。

タイプ

const string

こちらもご覧ください

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position) [position.top\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_left) [position.top\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_center) [position.top\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_right) [position.middle\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_left) [position.middle\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_center) [position.middle\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_right) [position.bottom\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_left) [position.bottom\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_center)

### position.middle\_center

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) と [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) 関数で使用される表の位置です。

テーブルを画面の中央にバインドします。

タイプ

const string

こちらもご覧ください

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position) [position.top\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_left) [position.top\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_center) [position.top\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_right) [position.middle\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_left) [position.middle\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_right) [position.bottom\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_left) [position.bottom\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_center)

### position.middle\_left

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) と [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) 関数で使用される表の位置です。

テーブルを画面の左端にバインドします。

タイプ

const string

こちらもご覧ください

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position) [position.top\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_left) [position.top\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_center) [position.top\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_right) [position.middle\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_center) [position.middle\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_right) [position.bottom\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_left) [position.bottom\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_center)

### position.middle\_right

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) と [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) 関数で使用される表の位置です。

テーブルを画面の右端にバインドします。

タイプ

const string

こちらもご覧ください

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position) [position.top\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_left) [position.top\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_center) [position.top\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_right) [position.middle\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_left) [position.middle\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_center) [position.bottom\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_left) [position.bottom\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_center)

### position.top\_center

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) と [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) 関数で使用される表の位置です。

テーブルを中央の上端にバインドします。

タイプ

const string

こちらもご覧ください

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position) [position.top\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_left) [position.top\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_right) [position.middle\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_left) [position.middle\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_center) [position.middle\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_right) [position.bottom\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_left) [position.bottom\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_center)

### position.top\_left

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) と [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) 関数で使用される表の位置です。

テーブルを左上の端にバインドします。

タイプ

const string

こちらもご覧ください

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position) [position.top\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_center) [position.top\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_right) [position.middle\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_left) [position.middle\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_center) [position.middle\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_right) [position.bottom\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_left) [position.bottom\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_center)

### position.top\_right

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) と [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) 関数で使用される表の位置です。

テーブルを右上の端にバインドします。

タイプ

const string

こちらもご覧ください

[table.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.new) [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.set\_position](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.set_position) [position.top\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_left) [position.top\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.top_center) [position.middle\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_left) [position.middle\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_center) [position.middle\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_position.middle_right) [position.bottom\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_left) [position.bottom\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_position.bottom_center)

### scale.left

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) 関数のスケール値。左の価格スケールにインジケーターが追加されます。

タイプ

const scale\_type

こちらもご覧ください

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator)

### scale.none

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) 関数のスケール値。'スケールなし' モードでインジケーターを追加します。 'overlay=true' の時のみ使用可能です。

タイプ

const scale\_type

こちらもご覧ください

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator)

### scale.right

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator) 関数のスケール値。右の価格スケールにインジケーターが追加されます。

タイプ

const scale\_type

こちらもご覧ください

[indicator](https://jp.tradingview.com/pine-script-reference/v5/#fun_indicator)

### session.extended

時間外セッションタイプの定数（時間外のデータがある場合）。

タイプ

const string

こちらもご覧ください

[session.regular](https://jp.tradingview.com/pine-script-reference/v5/#const_session.regular) [syminfo.session](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.session)

### session.regular

通常セッションタイプの定数（時間外のデータがない場合）。

タイプ

const string

こちらもご覧ください

[session.extended](https://jp.tradingview.com/pine-script-reference/v5/#const_session.extended) [syminfo.session](https://jp.tradingview.com/pine-script-reference/v5/#var_syminfo.session)

### settlement\_as\_close.inherit

関数 [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) および [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) 内のパラメーター `settlement_as_close` の値を指定する定数です。

タイプ

const settlement

こちらもご覧ください

[ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) [settlement\_as\_close.on](https://jp.tradingview.com/pine-script-reference/v5/#const_settlement_as_close.on) [settlement\_as\_close.off](https://jp.tradingview.com/pine-script-reference/v5/#const_settlement_as_close.off)

### settlement\_as\_close.off

関数 [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) および [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) 内のパラメーター `settlement_as_close` の値を指定する定数です。

タイプ

const settlement

こちらもご覧ください

[ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) [settlement\_as\_close.on](https://jp.tradingview.com/pine-script-reference/v5/#const_settlement_as_close.on) [settlement\_as\_close.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_settlement_as_close.inherit)

### settlement\_as\_close.on

関数 [ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) および [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) 内のパラメーター `settlement_as_close` の値を指定する定数です。

タイプ

const settlement

こちらもご覧ください

[ticker.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.new) [ticker.modify](https://jp.tradingview.com/pine-script-reference/v5/#fun_ticker.modify) [settlement\_as\_close.inherit](https://jp.tradingview.com/pine-script-reference/v5/#const_settlement_as_close.inherit) [settlement\_as\_close.off](https://jp.tradingview.com/pine-script-reference/v5/#const_settlement_as_close.off)

### shape.arrowdown

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) 関数の図形スタイル。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)

### shape.arrowup

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) 関数の図形スタイル。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)

### shape.circle

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) 関数の図形スタイル。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)

### shape.cross

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) 関数の図形スタイル。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)

### shape.diamond

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) 関数の図形スタイル。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)

### shape.flag

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) 関数の図形スタイル。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)

### shape.labeldown

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) 関数の図形スタイル。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)

### shape.labelup

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) 関数の図形スタイル。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)

### shape.square

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) 関数の図形スタイル。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)

### shape.triangledown

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) 関数の図形スタイル。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)

### shape.triangleup

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) 関数の図形スタイル。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)

### shape.xcross

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) 関数の図形スタイル。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)

### size.auto

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)、 [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) 関数のサイズの値。 図形のサイズは、バーのサイズに基づいて自動的に調節されます。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [label.set\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_size) [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny) [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small) [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal) [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large) [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge)

### size.huge

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)、 [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) 関数のサイズの値。 図形は常に最大のサイズで表示されます。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [label.set\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_size) [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto) [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny) [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small) [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal) [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large)

### size.large

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)、 [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) 関数のサイズの値。 図形は常に大きいサイズで表示されます。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [label.set\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_size) [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto) [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny) [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small) [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal) [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge)

### size.normal

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)、 [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) 関数のサイズの値。 図形は常に通常のサイズで表示されます。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [label.set\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_size) [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto) [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny) [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small) [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large) [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge)

### size.small

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)、 [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) 関数のサイズの値。 図形は常に小さいサイズで表示されます。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [label.set\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_size) [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto) [size.tiny](https://jp.tradingview.com/pine-script-reference/v5/#const_size.tiny) [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal) [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large) [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge)

### size.tiny

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape)、 [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) 関数のサイズの値。図形は常に最小なサイズで表示されます。

タイプ

const string

こちらもご覧ください

[plotshape](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotshape) [plotchar](https://jp.tradingview.com/pine-script-reference/v5/#fun_plotchar) [label.set\_size](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_size) [size.auto](https://jp.tradingview.com/pine-script-reference/v5/#const_size.auto) [size.small](https://jp.tradingview.com/pine-script-reference/v5/#const_size.small) [size.normal](https://jp.tradingview.com/pine-script-reference/v5/#const_size.normal) [size.large](https://jp.tradingview.com/pine-script-reference/v5/#const_size.large) [size.huge](https://jp.tradingview.com/pine-script-reference/v5/#const_size.huge)

### splits.denominator

[request.splits](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.splits) 関数の名前付き定数です。株式分割の分母をリクエストする為に使用されます。

タイプ

const string

こちらもご覧ください

[request.splits](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.splits)

### splits.numerator

[request.splits](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.splits) 関数の名前付き定数です。株式分割の分子をリクエストする為に使用されます。

タイプ

const string

こちらもご覧ください

[request.splits](https://jp.tradingview.com/pine-script-reference/v5/#fun_request.splits)

### strategy.cash

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) の宣言文の `default_qty_type` パラメーターに指定することができる引数のひとつです。 [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) や [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order) の関数呼び出しで ‘qty’ パラメーターに値が指定されていない場合にのみ、このパラメーターは意味を持ちます。これは、トレードにエントリーする `strategy.account_currency` での金額を指定します。

タイプ

const string

例

```
//@version=5
strategy("strategy.cash", overlay = true, default_qty_value = 50, default_qty_type = strategy.cash, initial_capital = 1000000)

if bar_index == 0
    // As ‘qty’ is not defined, the previously defined values for the `default_qty_type` and `default_qty_value` parameters are used to enter trades, namely 50 units of cash in the currency of `strategy.account_currency`.
    // `qty` is calculated as (default_qty_value)/(close price). If current price is $5, then qty = 50/5 = 10.
    strategy.entry("EN", strategy.long)
if bar_index == 2
    strategy.close("EN")
```

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### strategy.commission.cash\_per\_contract

注文の手数料タイプ。1枚あたりの金額が口座に設定された通貨で表示されます。

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### strategy.commission.cash\_per\_order

注文の手数料タイプ。注文ごとの口座通貨金額。

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### strategy.commission.percent

注文の手数料タイプ。注文金額のパーセンテージ。

タイプ

const string

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### strategy.direction.all

ストラテジーでロングとショートの双方のポジションを許可します。

タイプ

const string

こちらもご覧ください

[strategy.risk.allow\_entry\_in](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.risk.allow_entry_in)

### strategy.direction.long

ストラテジーでロングのみのポジションを許可します。

タイプ

const string

こちらもご覧ください

[strategy.risk.allow\_entry\_in](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.risk.allow_entry_in)

### strategy.direction.short

ストラテジーでショートのみのポジションを許可します。

タイプ

const string

こちらもご覧ください

[strategy.risk.allow\_entry\_in](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.risk.allow_entry_in)

### strategy.fixed

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) の宣言文の `default_qty_type` パラメーターに指定することができる引数のひとつです。 [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) や [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order) の関数呼び出しで ‘qty’ パラメーターに値が指定されていない場合にのみ、このパラメーターは意味を持ちます。これは、トレードにエントリーする契約数／株数／ロット数を指定します。

タイプ

const string

例

```
//@version=5
strategy("strategy.fixed", overlay = true, default_qty_value = 50, default_qty_type = strategy.fixed, initial_capital = 1000000)

if bar_index == 0
    // As ‘qty’ is not defined, the previously defined values for the `default_qty_type` and `default_qty_value` parameters are used to enter trades, namely 50 contracts.
    // qty = 50
    strategy.entry("EN", strategy.long)
if bar_index == 2
    strategy.close("EN")
```

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### strategy.long

名前付き定数で [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) および [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order) のコマンドで使用する `direction` パラメーターに対して使用します。コマンドが買い注文を作成するように指定します。

タイプ

const strategy\_direction

こちらもご覧ください

[strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) [strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order)

### strategy.oca.cancel

名前付き定数で [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) および [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order) のコマンドで使用する `oca_type` パラメーターに対して使用します。これは同じ `oca_name` と `oca_type` を伴う別の注文が実行された際に、そのストラテジーが未約定の注文をキャンセルするように指定します。

タイプ

const string

備考

OCAグループからの未約定の注文が同じティックで執行された場合、ストラテジーは注文のキャンセルやサイズの縮小を行うことはできません。たとえば、市場価格が同じ `oca_*` 引数を持つ　[strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order) の呼び出しからの2つの逆指値注文をトリガーした場合、ストラテジーはどちらか一方の完全な、あるいは部分的なキャンセルはできません。

こちらもご覧ください

[strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) [strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order)

### strategy.oca.none

名前付き定数で [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) および [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order) のコマンドで使用する `oca_type` パラメーターに対して使用します。これはその注文が同じ `oca_name` を伴う注文も含め、他のすべての注文から独立して実行されるように指定します。

タイプ

const string

こちらもご覧ください

[strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) [strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order)

### strategy.oca.reduce

名前付き定数で [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) および [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order) のコマンドで使用する `oca_type` パラメーターに対して使用します。これは、同じ `oca_name` と `oca_type` を伴う別の注文が約定したときに、ストラテジーが未約定の注文をその注文のサイズだけ縮小するように指定するものです。サイズの縮小後に未約定注文のサイズが0になった場合は、その注文が完全にキャンセルされるのと同じことになります。

タイプ

const string

備考

OCAグループからの未約定の注文が同じティックで執行された場合、ストラテジーは注文のキャンセルやサイズの縮小を行うことはできません。たとえば、市場価格が同じ `oca_*` 引数を持つ　[strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order) の呼び出しからの2つの逆指値注文をトリガーした場合、ストラテジーはどちらか一方の完全な、あるいは部分的なキャンセルはできません。

[strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) からの注文は自動でこのOCAタイプを使用し、デフォルトで同じOCAグループに属します。

こちらもご覧ください

[strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) [strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order)

### strategy.percent\_of\_equity

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy) の宣言文の `default_qty_type` パラメーターに指定することができる引数のひとつです。 [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) や [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order) の関数呼び出しで ‘qty’ パラメーターに値が指定されていない場合にのみ、このパラメーターは意味を持ちます。これは、トレードにエントリーする資金のパーセンテージ (0-100) を指定します。

タイプ

const string

例

```
//@version=5
strategy("strategy.percent_of_equity", overlay = false, default_qty_value = 100, default_qty_type = strategy.percent_of_equity, initial_capital = 1000000)

// As ‘qty’ is not defined, the previously defined values for the `default_qty_type` and `default_qty_value` parameters are used to enter trades, namely 100% of available equity.
if bar_index == 0
    strategy.entry("EN", strategy.long)
if bar_index == 2
    strategy.close("EN")
plot(strategy.equity)

 // The ‘qty’ parameter is set to 10. Entering position with fixed size of 10 contracts and entry market price = (10 * close).
if bar_index == 4
    strategy.entry("EN", strategy.long, qty = 10)
if bar_index == 6
    strategy.close("EN")
```

こちらもご覧ください

[strategy](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy)

### strategy.short

名前付き定数で [strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) および [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order) のコマンドで使用する `direction` パラメーターに対して使用します。コマンドが売り注文を作成するように指定します。

タイプ

const strategy\_direction

こちらもご覧ください

[strategy.entry](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.entry) [strategy.exit](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.exit) [strategy.order](https://jp.tradingview.com/pine-script-reference/v5/#fun_strategy.order)

### text.align\_bottom

これらの関数の垂直方向へのテキストアライメントです: [box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new), [box.set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_valign), [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell), [table.cell\_set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_valign) 。

タイプ

const string

こちらもご覧ください

[table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.cell\_set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_valign) [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center) [text.align\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_left) [text.align\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_right)

### text.align\_center

これらの関数のテキストアライメントです: [box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new), [box.set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_halign), [box.set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_valign), [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new), [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) 。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [text.align\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_left) [text.align\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_right)

### text.align\_left

これらの関数の水平方向へのテキストアライメントです: [box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new)、 [box.set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_halign)、 [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)、 [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) 。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center) [text.align\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_right)

### text.align\_right

これらの関数の水平方向へのテキストアライメントです: [box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new)、 [box.set\_text\_halign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_halign)、 [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new)、 [label.set\_textalign](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_textalign) 。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_style](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_style) [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center) [text.align\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_left)

### text.align\_top

これらの関数の垂直方向へのテキストアライメントです: [box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new), [box.set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_valign), [table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell), [table.cell\_set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_valign) 。

タイプ

const string

こちらもご覧ください

[table.cell](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell) [table.cell\_set\_text\_valign](https://jp.tradingview.com/pine-script-reference/v5/#fun_table.cell_set_text_valign) [text.align\_center](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_center) [text.align\_left](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_left) [text.align\_right](https://jp.tradingview.com/pine-script-reference/v5/#const_text.align_right)

### text.wrap\_auto

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) と [box.set\_text\_wrap](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_wrap) 関数の自動折り返しモードを設定します。

タイプ

const string

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text) [box.set\_text\_wrap](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_wrap)

### text.wrap\_none

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) と [box.set\_text\_wrap](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_wrap) 関数の折り返しモードを無効にします。

タイプ

const string

こちらもご覧ください

[box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [box.set\_text](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text) [box.set\_text\_wrap](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.set_text_wrap)

### true

[bool](https://jp.tradingview.com/pine-script-reference/v5/#type_bool) 変数が取ることのできる値の1つを表すリテラル、または比較演算子または論理演算子を使用する場合に式を評価できます。

備考

[比較演算子](https://www.tradingview.com/pine-script-docs/language/operators/#comparison-operators) や [論理演算子](https://www.tradingview.com/pine-script-docs/language/operators/#logical-operators) については、ユーザーマニュアルをご覧ください。

こちらもご覧ください

[bool](https://jp.tradingview.com/pine-script-reference/v5/#type_bool)

### xloc.bar\_index

Pineの描画を作成・変更する関数がx座標をどのように解釈するかを指定する定数です。`xloc = xloc.bar_index` の場合、描画オブジェクトは各x座標を `bar_index` として扱います。

タイプ

const string

こちらもご覧ください

[xloc.bar\_time](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_time) [line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [polyline.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_polyline.new) [line.set\_xloc](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_xloc) [label.set\_xloc](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_xloc)

### xloc.bar\_time

Pineの描画を作成・変更する関数がx座標をどのように解釈するかを指定する定数です。`xloc = xloc.bar_time` の場合、描画オブジェクトは各x座標をUNIX時間をミリ秒単位で表したタイムスタンプとして扱います。

タイプ

const string

こちらもご覧ください

[xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index) [line.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.new) [label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [box.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_box.new) [polyline.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_polyline.new) [line.set\_xloc](https://jp.tradingview.com/pine-script-reference/v5/#fun_line.set_xloc) [label.set\_xloc](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_xloc) [xloc.bar\_index](https://jp.tradingview.com/pine-script-reference/v5/#const_xloc.bar_index)

### yloc.abovebar

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) 関数で、y値を解釈するアルゴリズムを指定する名前付き定数です。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_yloc](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_yloc) [yloc.price](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.price) [yloc.belowbar](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.belowbar)

### yloc.belowbar

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) 関数で、y値を解釈するアルゴリズムを指定する名前付き定数です。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_yloc](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_yloc) [yloc.price](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.price) [yloc.abovebar](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.abovebar)

### yloc.price

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) 関数で、y値を解釈するアルゴリズムを指定する名前付き定数です。

タイプ

const string

こちらもご覧ください

[label.new](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.new) [label.set\_yloc](https://jp.tradingview.com/pine-script-reference/v5/#fun_label.set_yloc) [yloc.abovebar](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.abovebar) [yloc.belowbar](https://jp.tradingview.com/pine-script-reference/v5/#const_yloc.belowbar)


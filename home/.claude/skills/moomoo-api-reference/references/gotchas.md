# moomoo API 実測 gotchas（公式 doc に見つけにくい挙動・制約）

実プロジェクトでの実測（SDK 10.07.6708 + 公式ドキュメント v10.9、2026-06〜07）で確定した、公式リファレンスだけでは気づきにくい挙動・制約集。

## 注文タイプ・注文機能

- **paper trading（`TrdEnv.SIMULATE`）は limit / market のみ**（公式 Q&A 明記）。STOP / STOP_LIMIT / MIT / LIT / TRAILING 系は発注不可。TIF も DAY のみ。modify（`ModifyOrderOp.NORMAL`）/ cancel は paper でも可、enable / disable / delete は不可。
  - 含意: broker-side の resting stop 等を使う防御機構は paper では end-to-end 検証できない。real でのみ検証可能な機能は「実装完了」と「実環境実証」を分けて扱う。
- real 環境の米国株は stop 系全種対応。トリガー価格は `place_order(aux_price=...)`、`modify_order(ModifyOrderOp.NORMAL)` で qty / aux_price を変更可。
- **OCO / bracket（親子連動注文）は SDK・公式ドキュメントとも存在しない**。`place_combo_order` はオプションの複数レッグ戦略用であり別物。
- stop のトリガー条件（last price / BBO のどちら基準か）は公式ドキュメントに記載なし（未確認）。
- **MOC（market on close）は米国市場 API 非対応**。引け成注文が必要な場合は、引けウィンドウ内の market 注文で代替するしかない。

## 取引解錠（trade unlock）

- **解錠は OpenD 全体の状態**で、1つの接続で解錠すれば同じ OpenD につながる他の接続にも効く。したがって「照会が通った」も「発注が通った」も、それだけでは解錠不要の証明にならない。
- **「いま解錠済みか」を照会する API は SDK に無い**うえ、解錠は日単位で失効する（サーバ側の push で失効し得る）。書き込み能力を「真」と見なす期間を持つ設計にするなら、失効の窓をどう塞ぐかが必ず論点になる。
- **paper（`TrdEnv.SIMULATE`）は元々解錠不要**。したがって paper での書き込み成功は、real の書き込み能力について何も語らない。下の「取消しとレート制限」で CANCEL に解錠が要らないと書けるのも paper 前提であり、real へそのまま一般化しない。
- **GUI 版 OpenD では SDK の `unlock_trade` を使えず**、OpenD の画面上で解錠する。稼働しているのが GUI 版か CLI 版かで「アプリ側から解錠する」という設計案の成否そのものが変わるため、バージョン番号ではなくこの区別を確かめる。

## 取消しとレート制限

- **取消しは個別 `modify_order(ModifyOrderOp.CANCEL, order_id, ...)`**。paper でも公式サポートされ、CANCEL 時は `qty` / `price` は無視され `unlock_trade` も不要。一方 **`cancel_all_order` は paper 非対応が公式明記**なので、一括取消しを前提にした設計は paper で検証できない。
- **CANCEL の同期応答は `trd_env` と `order_id` のみで status を返さない**。取消しの成否は強制 refresh の再照会（read-back）で確認する設計になる。
- **レート制限はいずれも acc_id 単位**: cancel（`modify_order`）は 30秒あたり20リクエスト・呼び出し間隔 0.04 秒以上。`order_list_query` は 30秒あたり10リクエストだが、**`refresh_cache=True` のときに限り**適用される。read-back を伴う cancel ループでは、照会側を常に強制 refresh する実装だと **cancel 枠（20）より照会枠（10）が先に律速する**。
- 枠は acc_id 単位で共有される。常駐 daemon・手動スクリプト・バッチ処理が並行して broker を照会する構成では、rate budget を全経路の合算で見積もる（SDK・API 側にスロットリングは無い）。

## OrderStatus の分類

- 終端: `CANCELLED_ALL` / `CANCELLED_PART` / `FILLED_ALL`。非終端（working）: `FILLED_PART`。
- partial fill は終端（`CANCELLED_PART`）と非終端（`FILLED_PART`）に分かれる点に注意。
- ほかに `TIMEOUT` / `SUBMIT_FAILED` / `FAILED` / `DISABLED` / `DELETED` / `FILL_CANCELLED` がある。status 分岐を書くときは代表値の列挙でなく、インストール済み SDK の enum 全値を総当たりで写像し、未分類は fail-closed にするのが安全。

## 約定の観測

- **simulate の成行 entry は submit 時に pending（`dealt_qty=0`）で返る**。同期的に FILLED が返ることはなく、約定の把握は注文/ポジション照会（reconciliation）で非同期に行う必要がある。「place_order の戻りで約定確認」を前提にしたロジックは構造的に不発になる。

## ポジションの取得単価

- **証券口座の `cost_price` は平均取得単価ではなく Diluted Cost**（実現損益を反映して希薄化する値）。先物口座では Average Cost を返すため、同じフィールド名で口座種別により意味が変わる。公式も `average_cost` / `diluted_cost` を使うことを推奨している。
- **平均取得単価の `average_cost` は証券の paper 口座では無効**（公式に "Not valid for securities paper trading accounts"）。`diluted_cost` は逆に先物口座で無効。
- 含意: 自前の entry price と broker 取得単価の乖離監査は、`cost_price` を基準にすると実現損益ぶん恒常的にずれる。かといって paper では `average_cost` が取れないため、**paper での不一致は「不合格」ではなく「観測不能」として扱い、real 口座で初めて検証可能**と設計する。

## 市場状態

- **`market_state` は米国レギュラー取引時間（09:30–16:00 ET）全体を `AFTERNOON` で返す**（公式ドキュメントで確認済み）。`MORNING` は米国レギュラー時間帯では返らない。「AFTERNOON のみ許可＝午前を弾くバグ」という誤読が起きやすいが、レギュラーセッション全体の判定として正しい。

## 口座スコープ

- **照会は「acc_id を取るもの」と「取らないもの」の2系統に分かれ、名前からは区別が付かない**。前者は指定した口座を見る（ただし口座種別によっては非対応の照会がある）。後者は SDK 内部で実弾環境の先頭口座に固定され、引数で口座を選べない。
- 含意: acc_id を取らない照会は**口座権限の証拠に使えない**。`TrdEnv.SIMULATE` を渡しても実弾の先頭口座を見に行くため、paper でのリハーサルが本番同等の予行にならない。しかも返る値は正常に見えるので、口座の取り違えを実行時に検出する手段が無い。実弾の口座並びは口座種別で決まらないので「先頭＝使いたい口座」と推定するのも成り立たない。
- どちらの型かは**インストール済み SDK の実装でシグネチャを確認**する。ここに「どの照会がどちらの型か」の一覧は作らない — 真実源は SDK 実装であり、一覧を持つと同じ事実が2箇所になって片方だけ精密化される。

---

出典: daytrade auto-memory から昇格（2026-07-29、取消し・レート制限の節は 2026-07-31 追加、ポジションの取得単価の節は 2026-08-06 追加、取引解錠の節は 2026-08-07 追加、口座スコープの節は 2026-08-09 追加）。

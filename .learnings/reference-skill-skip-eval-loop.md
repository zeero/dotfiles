### reference 型 skill は skill-creator の評価ループをスキップし description 最適化に絞ってよい

**学び**: 出力が主観的な reference 型 skill（pi/hermes/agent-skill-reference 系）を作るときは、skill-creator の評価ループ（test 実行・assertion・benchmark）はスキップしてよい。assertion で客観評価しづらく費用対効果が低いため。代わりに、比較的客観的に測れる **トリガー精度（description）の最適化**に労力を寄せる。

**根拠**: 2026-06-26、`agent-skill-reference` 作成時に評価方針を選択した際。reference 型は出力が主観的＝assertion 検証に不向きという整理で、ユーザも作成優先（評価スキップ）を選んだ。

**適用範囲**: 知識提供が主目的で出力が主観的な reference / convention / style 系 skill の新規作成・改善。task 型（deploy・commit 等、検証可能な手順）には当てはまらない。

**例外・前提**: retrieval 的に「正しい節を引けたか」を検証できる reference skill では、output benchmark は省いてもトリガー eval だけは実施する中間案が有効な場合がある。判断軸は「出力が客観的に採点できるか」。

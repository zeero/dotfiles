#!/bin/bash

# エージェントチームのティームメイトが idle に入る直前（TeammateIdle）に、
# 完了申告と実態の乖離（silent edit failure）を防ぐための検証を一度だけ促します。
# 「編集完了」と報告されながら実際には未適用・内容破損だった事例への対策で、
# 検証の実施そのものは決定論的に確認できないため、強制ではなく
# exit 2 のフィードバックで検証手順（実ファイル再読・テスト実行）を要求します。

# ツールの入力を標準入力から受け取ります。
INPUT=$(cat)

SESSION_ID=$(echo "$INPUT" | jq -r '.session_id // empty')
CWD=$(echo "$INPUT" | jq -r '.cwd // empty')

# 判定材料が取れない場合はゲートせずに通します（フック起因の停止を避ける）。
if [ -z "$SESSION_ID" ] || [ -z "$CWD" ]; then
    exit 0
fi

# TeammateIdle は毎回発火するため、同一セッションで再度ブロックすると
# 「ブロック → 検証 → idle → 再ブロック」の無限ループになります。
# sentinel ファイルでセッションにつき一度だけ発火させます。
SENTINEL="${TMPDIR:-/tmp}/verify-before-idle-${SESSION_ID}"
if [ -e "$SENTINEL" ]; then
    exit 0
fi

# 未コミット変更が無ければ（読み取り専用の作業やコミット済みの作業）、
# 検証を促す意味が薄いのでそのまま idle を許可します。
if ! git -C "$CWD" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    exit 0
fi
if [ -z "$(git -C "$CWD" status --porcelain 2>/dev/null)" ]; then
    exit 0
fi

touch "$SENTINEL"

# exit 2: idle をブロックし、stderr がティームメイトへのフィードバックになります。
echo "完了前チェック: 未コミットの変更が残っています。idle に入る前に、(1) 変更したファイルを再読して申告どおり適用されているか（文字化け・欠落がないか）を確認し、(2) 指定されたテスト・lint があれば実行してください。verifier エージェントが利用可能なら検証を委譲して構いません。検証済みであれば、その結果を報告に明記してから完了してください。" >&2
exit 2

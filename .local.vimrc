" プロジェクトローカルな設定

" プロジェクトルートに移動
exe ":lcd " . escape(expand("<sfile>:p:h"), " \\")
" tagsファイルの設定
exe "setlocal tags+=" . expand("<sfile>:p:h") . "/tags"


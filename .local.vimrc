" プロジェクトローカルな設定

" プロジェクトルートに移動
exe "lcd " . expand("<sfile>:p:h")
" tagsファイルの設定
exe "setlocal tags+=" . expand("<sfile>:p:h") . "/tags"


" コメントアウト
nmap <buffer> ,/ <Plug>(caw:wrap:toggle)
vmap <buffer> ,/ <Plug>(caw:wrap:toggle)

" Previm
nnoremap <buffer> gX :<C-u>PrevimOpen<CR>

" ヘッダ見出しにする（下線スタイル）
nnoremap <buffer> ,= :<C-u>MyMarkdownHeader =<CR>
nnoremap <buffer> ,- :<C-u>MyMarkdownHeader -<CR>
command! -nargs=1 MyMarkdownHeader call s:my_markdown_header(<q-args>)
function! s:my_markdown_header(char) "{{{
  " 行先頭の'# 'は除く
  exe 'silent! s/^# //'
  " 見た目と同じだけ下線を引く
  let len = strwidth(getline('.'))
  exe 'normal! o'
  exe 'normal! ' . len . 'i' . a:char
endfunction "}}}


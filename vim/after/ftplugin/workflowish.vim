" 見出しマーク
nnoremap <silent> <buffer> <C-t> :MyWorkflowishToggle<CR>
vnoremap <silent> <buffer> <C-t> :MyWorkflowishToggle<CR>
command! -nargs=0 -range MyWorkflowishToggle call s:my_workflowish_toggle(<line1>, <line2>)
function! s:my_workflowish_toggle(line1, line2) "{{{
  let index = a:line1
  let col = virtcol('.')
  while index <= a:line2
    let first_char = matchstr(getline(index), '\S')
    if first_char == '*'
      exe ':'.index.','.index.'s/\*/-/'
    elseif first_char == '-'
      exe ':'.index.','.index.'s/\-/*/'
    elseif first_char == ''
    else
      exe ':'.index.','.index.'s/\(\S\)/* \1/'
    endif
    let index += 1
  endwhile
  exe 'normal! ' . col . '|'
endfunction "}}}

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

" コンシール
setl conceallevel=2

" WorkflowishFocus
nnoremap <buffer> gj :call WorkflowishFocusToggle(line("."))<CR>
nnoremap <buffer> gk :call WorkflowishFocusPrevious()<CR>

" インデントを削除しない
nnoremap <buffer> o oX<C-h>
nnoremap <buffer> O OX<C-h>
inoremap <buffer> <CR> <CR>X<C-h>
inoremap <buffer> <S-CR> <C-o>OX<C-h>


" タスクトグル: -/* → [ ] → [x] （プレフィックスを維持）
nnoremap <silent> <buffer> <C-t> :MyWorkflowishToggle<CR>
vnoremap <silent> <buffer> <C-t> :MyWorkflowishToggle<CR>
command! -nargs=0 -range MyWorkflowishToggle call s:my_workflowish_toggle(<line1>, <line2>)
function! s:my_workflowish_toggle(line1, line2) "{{{
  let index = a:line1
  let col = virtcol('.')
  while index <= a:line2
    let line = getline(index)
    if line =~ '^\s*[-*] \[x\]'
      " [x] → チェックボックス削除（プレフィックス維持）
      exe ':'.index.','.index.'s/\([-*]\) \[x\] /\1 /'
    elseif line =~ '^\s*[-*] \[ \]'
      " [ ] → [x] （プレフィックス維持）
      exe ':'.index.','.index.'s/\([-*]\) \[ \]/\1 [x]/'
    elseif line =~ '^\s*[-*] '
      " - / * のみ → [ ] 追加（プレフィックス維持）
      exe ':'.index.','.index.'s/\([-*]\) /\1 [ ] /'
    elseif line =~ '^\s*$'
      " 空行はスキップ
    else
      " テキストのみ → - を追加
      exe ':'.index.','.index.'s/\(\s*\)\(\S\)/\1- \2/'
    endif
    let index += 1
  endwhile
  exe 'normal! ' . col . '|'
endfunction "}}}

" コメントアウト
nmap <buffer> ,/ <Plug>(caw:wrap:toggle)
vmap <buffer> ,/ <Plug>(caw:wrap:toggle)
let b:caw_oneline_comment = "<!--"
let b:caw_wrap_oneline_comment = ["<!--", "-->"]
let b:caw_wrap_multiline_comment = {"right": "-->", "bottom": " ", "left": "<!--", "top": " "}

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

setl conceallevel=2
setl tabstop=2

" WikiLinkJump
nnoremap <silent> <buffer> <C-j> :call <SID>my_wiki_link_jump()<CR>
function! s:my_wiki_link_jump() abort "{{{
  try
    let default_input_backup = get(g:, 'ctrlp_default_input', '')
    let g:ctrlp_default_input = expand('<cword>')
    CtrlP
  finally
    if exists('default_input_backup')
      let g:ctrlp_default_input = default_input_backup
    endif
  endtry
endfunction "}}}

" WorkflowishFocus
nnoremap <buffer> gj :call WorkflowishFocusToggle(line("."))<CR>
nnoremap <buffer> gk :call WorkflowishFocusPrevious()<CR>

" インデントを削除しない
nnoremap <buffer> o oX<C-h>
nnoremap <buffer> O OX<C-h>
inoremap <buffer> <CR> <CR>X<C-h>
inoremap <buffer> <S-CR> <C-o>OX<C-h>


" WFHeadline 行の背景色をウィンドウ終わりまで拡張

hi WFHeadlineExtend ctermbg=58 guibg=#363428

sign define WFHeadlineSign linehl=WFHeadlineExtend

function! s:highlight_headlines() abort
  if &filetype !=# 'workflowish'
    return
  endif

  call sign_unplace('workflowish_headlines', {'buffer': bufnr('%')})

  silent! call matchdelete(w:workflowish_mytodo_match)

  let l:lnum = 1
  while l:lnum <= line('$')
    let l:line = getline(l:lnum)
    if l:line =~# '^#\+ '
      call sign_place(0, 'workflowish_headlines', 'WFHeadlineSign', bufnr('%'), {'lnum': l:lnum})
    endif
    let l:lnum += 1
  endwhile

  let w:workflowish_mytodo_match = matchadd('MyTodo', '\v\c \zs\[?(TODO|FIXME)\]?:?\ze ', 11)
endfunction

augroup WorkflowishHeadlineExtend
  autocmd!
  autocmd FileType workflowish call s:highlight_headlines()
  autocmd TextChanged,TextChangedI,BufEnter * if &filetype ==# 'workflowish' | call s:highlight_headlines() | endif
augroup END


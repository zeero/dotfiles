setl tabstop=4
setl shiftwidth=0
setl softtabstop=-1

" インデントを削除しない
nnoremap <buffer> o oX<C-h>
nnoremap <buffer> O OX<C-h>
inoremap <buffer> <CR> <CR>X<C-h>
inoremap <buffer> <S-CR> <C-o>OX<C-h>

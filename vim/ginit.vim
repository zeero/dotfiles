if has('mac')
  Guifont! Ricty Diminished devicon:h20
else
  Guifont! Ricty Diminished devicon:h16:cSHIFTJIS
endif

nnoremap <Esc> <Esc>:<C-u>Noh<CR>:<C-u>ZoomReset<CR>:<C-u>echo<CR>

let g:singleton#opener = 'tab drop'
call singleton#enable()


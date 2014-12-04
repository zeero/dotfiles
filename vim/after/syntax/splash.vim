if exists("b:current_syntax")
  finish
endif

syntax sync fromstart

syn match Splash /.*/
hi Splash ctermfg=10 ctermbg=0 guifg=#A8FF60 guibg=#000000

let b:current_syntax = "splash"


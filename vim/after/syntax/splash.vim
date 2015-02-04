if exists("b:current_syntax")
  finish
endif

syntax sync fromstart

syn match Splash /.*/
hi link Splash String

let b:current_syntax = "splash"


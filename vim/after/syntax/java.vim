" new
hi Operator guifg=#ff0099

" class
syn match MyJavaClass "[a-z]\@<!\([A-Z]\+[0-9]*[a-z]\+[0-9]*\)\+"
hi link MyJavaClass Constant

" constant
syn match MyJavaConstant "[a-z]\@<!\([A-Z]\+[0-9_]*\)\+[a-z]\@!" containedin=TOP,javaString,javaDocComment,javaLineComment
hi link MyJavaConstant Delimiter


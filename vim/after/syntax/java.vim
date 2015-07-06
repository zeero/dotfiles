" new
hi Operator guifg=#ff33aa

" class
syn match MyJavaClass "[a-z]\@<!\([A-Z]\+[0-9]*[a-z]\+[0-9]*\)\+" containedin=ALLBUT,javaString,javaDocComment,javaLineComment
hi link MyJavaClass PreProc
hi link javaC_JavaLang MyJavaClass

" constant
syn match MyJavaConstant "[a-z]\@<!\([A-Z]\+[0-9_]*\)\+[a-z]\@!" containedin=ALLBUT,javaString,javaDocComment,javaLineComment
hi link MyJavaConstant Delimiter


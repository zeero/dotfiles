" new
hi javaOperator guifg=#ff33aa

" constant
syn match MyJavaConstant "[a-z0-9]\@<!\([A-Z]\+[0-9_]*\)\+[a-z]\@!" containedin=ALLBUT,javaString,javaDocComment,javaLineComment,javaCommentTitle,javaFuncDef,MyJavaClass
hi link MyJavaConstant Delimiter

" class
syn match MyJavaClass "[a-z0-9_]\@<!\([A-Z]\+[a-z0-9]\+\)\+_\@!" containedin=ALLBUT,javaString,javaDocComment,javaLineComment,javaCommentTitle
" syn match MyJavaClass "[\s,()@!]\@<=\([A-Z]\+[a-z0-9]\+\)\+_\@!" containedin=ALLBUT,javaString,javaDocComment,javaLineComment,javaCommentTitle
hi link MyJavaClass PreProc
hi link javaC_JavaLang MyJavaClass


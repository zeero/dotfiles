" URL
syn region WFIdDeclaration matchgroup=WFLinkDelimiter start="^ \{0,3\}!\=\[" end="\]:" oneline keepend nextgroup=WFUrl skipwhite
syn match  WFUrl "\S\+"    nextgroup=WFUrlTitle skipwhite contained
syn region WFUrl           matchgroup=WFUrlDelimiter start="<" end=">" oneline keepend nextgroup=WFUrlTitle skipwhite contained
syn region WFUrlTitle      matchgroup=WFUrlTitleDelimiter start=+"+ end=+"+ keepend contained
syn region WFUrlTitle      matchgroup=WFUrlTitleDelimiter start=+'+ end=+'+ keepend contained
syn region WFUrlTitle      matchgroup=WFUrlTitleDelimiter start=+(+ end=+)+ keepend contained
"   syn    region          WFLinkText matchgroup=WFLinkTextDelimiter start="!\=\[\%(\_[^]]*]\%( \=[[(]\)\)\@=" end="\]\%( \=[[(]\)\@=" nextgroup=WFLink,WFId skipwhite contains=@WFInline,WFLineStart
syn region WFLinkText      matchgroup=WFLinkTextDelimiter start="!\=\[\%(\_[^]]*]\%( \=[[(]\)\)\@=" end="\]\%( \=[[(]\)\@=" nextgroup=WFLink,WFId skipwhite concealends
syn region WFLink          matchgroup=WFLinkDelimiter start="(" end=")" contains=WFUrl keepend contained conceal
syn region WFId            matchgroup=WFIdDelimiter start="\[" end="\]" keepend contained
syn region WFAutomaticLink matchgroup=WFUrlDelimiter start="<\%(\w\+:\|[[:alnum:]_+-]\+@\)\@=" end=">" keepend oneline
hi          WFLinkText              term=underline ctermfg=9 guifg=#96CBFE gui=underline
hi def link WFIdDeclaration         Typedef
hi def link WFId                    Type
hi def link WFAutomaticLink         WFUrl
hi def link WFUrl                   Underlined
hi def link WFUrlTitle              String
hi def link WFIdDelimiter           WFLinkDelimiter
hi def link WFUrlDelimiter          htmlTag
hi def link WFUrlTitleDelimiter     Delimiter

" コードブロック
syn match WFInlineCode "`[^`]\{-1,}`"
syn match WFInlineCodeConceal "`" containedin=WFInlineCode contained conceal
syn region WFBlockCode matchgroup=WFBlockCodeDelimiter start="^\s*```.*$" end="^\s*```$" keepend concealends
hi def link WFInlineCode            Special
hi def link WFInlineCodeConceal     Special
hi def link WFBlockCode             Special
hi def link WFBlockCodeDelimiter    Special

" コメント
syn match WFCommentHTMLStyle "<!\-\-.*\-\->"
hi def link WFCommentHTMLStyle      Comment


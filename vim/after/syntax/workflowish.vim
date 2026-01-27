" URL
syn region WFIdDeclaration matchgroup=WFLinkDelimiter start="^ \{0,3\}!\=\[" end="\]:" oneline keepend nextgroup=WFUrl skipwhite
syn match  WFUrl "\S\+"    nextgroup=WFUrlTitle skipwhite contained
syn region WFUrl           matchgroup=WFUrlDelimiter start="<" end=">" oneline keepend nextgroup=WFUrlTitle skipwhite contained
syn region WFUrlTitle      matchgroup=WFUrlTitleDelimiter start=+"+ end=+"+ keepend contained
syn region WFUrlTitle      matchgroup=WFUrlTitleDelimiter start=+'+ end=+'+ keepend contained
syn region WFUrlTitle      matchgroup=WFUrlTitleDelimiter start=+(+ end=+)+ keepend contained

syn region WFWikiLink      matchgroup=WFWikiLinkDelimiter start="\[\[" end="\]\]" contains=WFWikiLinkTarget concealends
syn match WFWikiLinkTarget "[^|\]]\+|" contained conceal

syn region WFLinkText      matchgroup=WFLinkTextDelimiter start="!\=\[" skip="\[[^\]]*\]" end="\]\ze[[(]" oneline nextgroup=WFLink,WFId skipwhite concealends
syn region WFLink          matchgroup=WFLinkDelimiter start="(" end=")" contains=WFUrl keepend contained conceal
syn region WFId            matchgroup=WFIdDelimiter start="\[" end="\]" keepend contained
syn region WFAutomaticLink matchgroup=WFUrlDelimiter start="<\%(\w\+:\|[[:alnum:]_+-]\+@\)\@=" end=">" keepend oneline

hi          WFLinkText              term=underline ctermfg=9 guifg=#96CBFE gui=underline
hi def link WFWikiLink              SpecialChar
hi def link WFWikiLinkDelimiter     WFWikiLink
hi def link WFWikiLinkTarget        Underlined
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
syn region WFCommentHTMLStyle start=/<!--/ end=/-->/
hi def link WFCommentHTMLStyle      Comment

" - を * と同じ扱いにする（オリジナルのWFDoneLIneを上書き）
syn match WFToDoDot /^\s*[-*]/
syn match WFToDo /^\s*[-*](.*)/

" [x] の行をコメント色に（完了タスク）
syn match WFDoneLine /^\s*[-*] \[x\].*$/
hi def link WFDoneLine              Comment


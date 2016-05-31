" URL
syn region workflowishIdDeclaration matchgroup=workflowishLinkDelimiter start="^ \{0,3\}!\=\[" end="\]:" oneline keepend nextgroup=workflowishUrl skipwhite
syn match workflowishUrl "\S\+" nextgroup=workflowishUrlTitle skipwhite contained
syn region workflowishUrl matchgroup=workflowishUrlDelimiter start="<" end=">" oneline keepend nextgroup=workflowishUrlTitle skipwhite contained
syn region workflowishUrlTitle matchgroup=workflowishUrlTitleDelimiter start=+"+ end=+"+ keepend contained
syn region workflowishUrlTitle matchgroup=workflowishUrlTitleDelimiter start=+'+ end=+'+ keepend contained
syn region workflowishUrlTitle matchgroup=workflowishUrlTitleDelimiter start=+(+ end=+)+ keepend contained

syn region workflowishLinkText matchgroup=workflowishLinkTextDelimiter start="!\=\[\%(\_[^]]*]\%( \=[[(]\)\)\@=" end="\]\%( \=[[(]\)\@=" nextgroup=workflowishLink,workflowishId skipwhite contains=@workflowishInline,workflowishLineStart
syn region workflowishLink matchgroup=workflowishLinkDelimiter start="(" end=")" contains=workflowishUrl keepend contained
syn region workflowishId matchgroup=workflowishIdDelimiter start="\[" end="\]" keepend contained
syn region workflowishAutomaticLink matchgroup=workflowishUrlDelimiter start="<\%(\w\+:\|[[:alnum:]_+-]\+@\)\@=" end=">" keepend oneline

hi def link workflowishLinkText              htmlLink
hi def link workflowishIdDeclaration         Typedef
hi def link workflowishId                    Type
hi def link workflowishAutomaticLink         workflowishUrl
hi def link workflowishUrl                   Float
hi def link workflowishUrlTitle              String
hi def link workflowishIdDelimiter           workflowishLinkDelimiter
hi def link workflowishUrlDelimiter          htmlTag
hi def link workflowishUrlTitleDelimiter     Delimiter


" コードブロック
syn match workflowishInlineCode "`[^`]\{-1,}`"
syn region workflowishBlockCode matchgroup=workflowishBlockCodeDelimiter start="^\s*```" end="^\s*```"

hi def link workflowishInlineCode            Special
hi def link workflowishBlockCode             Special
hi def link workflowishBlockCodeDelimiter    Special


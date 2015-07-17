" log level
syn match MyLogLevelError /\v\[?(ERROR|ERR|FATAL)\]?/
syn match MyLogLevelWarning /\v\[?(WARNING|WARN)\]?/
syn match MyLogLevelInfo /\v\[?INFO\]?/
syn match MyLogLevelDebug /\v\[?(DEBUG)\]?/
hi MyLogLevelError gui=bold guibg=red guifg=black
hi link MyLogLevelWarning DiffChange
hi link MyLogLevelInfo ModeMsg
hi link MyLogLevelDebug ColorColumn


" log level
syn match MyLogLevelError /\v\[?(ERROR|ERR|FATAL)\]?/
syn match MyLogLevelWarning /\v\[?(WARNING|WARN)\]?/
syn match MyLogLevelInfo /\v\[?INFO\]?/
syn match MyLogLevelDebug /\v\[?(DEBUG)\]?/
hi MyLogLevelError gui=bold guibg=red
hi MyLogLevelWarning guibg=DarkMagenta
hi MyLogLevelInfo guibg=#6565CE
hi MyLogLevelDebug guibg=DarkRed


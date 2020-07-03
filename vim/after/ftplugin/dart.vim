let g:dart_format_on_save = 1
let g:dart_style_guide = 2

nnoremap <buffer> ,r :<C-u>FlutterRun -d all<CR>:resize 5<CR>:wincmd w<CR>
nnoremap <buffer> ,R :<C-u>FlutterHotRestart<CR>
nnoremap <buffer> ,q :<C-u>silent FlutterQuit<CR>:wincmd o<CR>
nnoremap <buffer> ,d :<C-u>FlutterVisualDebug<CR>


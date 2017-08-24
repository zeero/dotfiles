// Hint
vimfx.set('hints.chars', 'qwertasdfgzxcv')

// Mappings
let map = (command, shortcuts, custom=false) => {
    vimfx.set(`${custom ? 'custom.' : ''}mode.normal.${command}`, shortcuts)
}

map('history_back',          'h')
map('history_forward',       'l')
map('tab_select_previous',   'H')
map('tab_select_next',       'L')
map('scroll_right',          'zh')
map('scroll_left',           'zl')
map('scroll_half_page_down', '<space>')
map('scroll_half_page_up',   '<s-space>')
map('scroll_page_down',      'g<space>')
map('scroll_page_up',        'g<s-space>')

map('tab_close',             'd')
map('tab_restore',           'u')
map('tab_new',               't')
map('copy_current_url',      'y')

map('tab_move_forward',      ',l')
map('tab_move_backward',     ',L')


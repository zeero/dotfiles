" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" call plug#begin('~/.vim/plugged')
call plug#begin('~/AppData/Local/nvim/plugged')

" Make sure you use single quotes

" 基本 {{{1
Plug 'junegunn/vim-plug'

Plug 'Shougo/vimproc.vim', { 'do': 'make' }
  Plug 'Shougo/vimshell', { 'on': ['VimShell', 'VimShellPop', 'VimShellTab'] }
    Plug 'supermomonga/vimshell-inline-history.vim', { 'for': 'vimshell' }

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
elseif has('python3') && v:version >= 800
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'Shougo/deoplete.nvim', { 'do': ':call MyDeinHookDeoplete()' }
elseif has('lua') && (v:version >= 704 || (v:version == 703 && has('patch885')))
  Plug 'Shougo/neocomplete', { 'do': ':call MyDeinHookNeoComplete()' }
else
  Plug 'Shougo/neocomplcache', { 'do': ':call MyDeinHookNeoComplcache()' }
endif
Plug 'Shougo/neco-vim', { 'for': 'vim' }
Plug 'Shougo/neco-syntax'
if executable('look')
  Plug 'ujihisa/neco-look'
endif

Plug 'Shougo/neosnippet'
" , { 'on': ['NeoSnippetEdit', 'Unite'], 'for': ['neosnippet'] }
  Plug 'Shougo/neosnippet-snippets'

Plug 'Lokaltog/vim-easymotion', { 'on': ['<Plug>(easymotion-bd-w)', '<Plug>(easymotion-s2)', '<Plug>(easymotion-j)', '<Plug>(easymotion-k)'] }

Plug 'thinca/vim-localrc'
Plug 'lambdalisue/vim-unified-diff'

Plug 'mattn/webapi-vim'
Plug 'tyru/open-browser.vim'
" , { 'for': ['html', 'mkd'], 'on': '<Plug>(openbrowser-' }
Plug 'thinca/vim-openbuf'
" CtrlPGistaより先に読み込まれないとgistを開けなくなる...
Plug 'lambdalisue/vim-gista'
" { 'on': ['Gista'] }
" { 'on': '<Plug>(gista-' }
" on_func = ['gista#gist#api#list']
" on_source = ['unite.vim']
"いったんlazyをコメントアウト
" depends = ['unite.vim', 'open-browser.vim']

if has('nvim')
  Plug 'equalsraf/neovim-gui-shim'
endif


" CtrlP {{{1
Plug 'ctrlpvim/ctrlp.vim'
  Plug 'zeero/vim-slack_files', { 'on': ['SlackFilesUpload', 'CtrlPSlackFiles', 'Unite'] }
  Plug 'zeero/vim-ctrlp-help', { 'on': ['CtrlPHelp'] }
  Plug 'zeero/vim-ctrlp-gista', { 'on': ['CtrlPGista'] }
  Plug 'zeero/vim-ctrlp_highlight', { 'on': ['CtrlPHighlight'] }
  Plug 'zeero/vim-ctrlp_git', { 'on': ['CtrlpGitBranch', 'CtrlpGitLog', 'CtrlpGitStatus'] }
  Plug 'mattn/ctrlp-register'
  Plug 'sgur/ctrlp-extensions.vim'


" " Unite {{{1
"
" Plug 'Shougo/unite.vim'
" lazy = 1
" { 'on': ['Unite', 'UniteWithBufferDir', 'UniteResume'] }
" hook_post_source = '''call MyDeinHookUnite()'''
"
" Plug 'Shougo/vimfiler'
" lazy = 1
" { 'on': ['VimFiler', 'VimFilerBufferDir'] }
" depends = ['unite.vim']
"
" Plug 'Shougo/unite-outline'
" lazy = 1
" on_source = ['unite.vim']
"
" Plug 'osyo-manga/unite-fold'
" lazy = 1
" on_source = ['unite.vim']
"
" Plug 'thinca/vim-unite-history'
" lazy = 1
" on_source = ['unite.vim']
"
" Plug 'tsukkee/unite-help'
" lazy = 1
" on_source = ['unite.vim']
"
" Plug 'tsukkee/unite-tag'
" lazy = 1
" on_source = ['unite.vim']
"
" Plug 'basyura/unite-rails'
" lazy = 1
" on_source = ['unite.vim']
"
" Plug 'ujihisa/unite-rake'
" lazy = 1
" on_source = ['unite.vim']
"
" Plug 'ujihisa/unite-gem'
" lazy = 1
" on_source = ['unite.vim']
"
" Plug 'ujihisa/unite-locate'
" lazy = 1
" on_source = ['unite.vim']
"
" Plug 'ujihisa/unite-colorscheme'
" lazy = 1
" on_source = ['unite.vim']
"
" Plug 'osyo-manga/unite-highlight'
" lazy = 1
" on_source = ['unite.vim']
"
" Plug 'tacroe/unite-alias'
" lazy = 1
" on_source = ['unite.vim']
"
" Plug 'pasela/unite-webcolorname'
" lazy = 1
" on_source = ['unite.vim']
"
" Plug 'zeero/unite-localrc'
" lazy = 1
" on_source = ['unite.vim']
" depends = ['vim-localrc']
"
" Plug 'osyo-manga/unite-quickfix'
" lazy = 1
" on_source = ['unite.vim']
"
"
" 入力補助 {{{1
Plug 'tyru/caw.vim', { 'on': '<Plug>(caw:' }
Plug 'thinca/vim-qfreplace', { 'for': ['unite', 'quickfix'], 'on': ['Qfreplace'] }
Plug 'kana/vim-smartchr'
Plug 'AndrewRadev/switch.vim', { 'on': ['Switch'] }
Plug 'zeero/yankround.vim'
Plug 'osyo-manga/vim-jplus', { 'on': ['<Plug>(jplus'] }
Plug 'kana/vim-smartinput'
  Plug 'cohama/vim-smartinput-endwise', { 'do': ':call smartinput_endwise#define_default_rules()' }
Plug 'rhysd/github-complete.vim', { 'for': ['workflowish', 'markdown'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': ['TableModeToggle'] }

" テキストオブジェクト {{{1
Plug 'kana/vim-textobj-user'
  Plug 'kana/vim-textobj-fold', { 'on': ['<Plug>(textobj-fold-a)', '<Plug>(textobj-fold-i)'] }
  Plug 'kana/vim-textobj-entire', { 'on': '<Plug>(textobj-entire-' }
  Plug 'kana/vim-textobj-line', { 'on': ['<Plug>(textobj-line-a)', '<Plug>(textobj-line-i)'] }
  Plug 'kana/vim-textobj-indent', { 'on': ['<Plug>(textobj-indent-a)', '<Plug>(textobj-indent-i)'] }
  Plug 'kana/vim-textobj-lastpat', { 'on': ['<Plug>(textobj-lastpat-a)', '<Plug>(textobj-lastpat-i)'] }
  Plug 'syngan/vim-textobj-postexpr', { 'on': '<Plug>(textobj-postexpr-' }
  Plug 'rhysd/vim-textobj-wiw', { 'on': '<Plug>(textobj-wiw-' }
  Plug 'thinca/vim-textobj-between', { 'on': '<Plug>(textobj-between-' }
  Plug 'sgur/vim-textobj-parameter', { 'on': ['<Plug>(textobj-parameter-a)', '<Plug>(textobj-parameter-i)'] }
  Plug 'deris/vim-textobj-enclosedsyntax', { 'on': ['<Plug>(textobj-enclosedsyntax-a)', '<Plug>(textobj-enclosedsyntax-i)'], 'for': ['ruby', 'perl'] }
  Plug 'osyo-manga/vim-textobj-multiblock', { 'on': '<Plug>(textobj-multiblock-' }
  Plug 'osyo-manga/vim-textobj-multitextobj', { 'on': '<Plug>(textobj-multitextobj-' }
  Plug 'rhysd/vim-textobj-ruby', { 'for': ['ruby'] }

Plug 'tpope/vim-surround'

Plug 'terryma/vim-expand-region', { 'on': '<Plug>(expand_region_' }


" オペレータ {{{1
Plug 'kana/vim-operator-user'
  Plug 'kana/vim-operator-replace', { 'on': '<Plug>(operator-replace)' }
  Plug 'zeero/vim-operator-surround', { 'branch': 'keep_input_option', 'on': '<Plug>(operator-surround-' }
  Plug 'tyru/operator-camelize.vim', { 'on': '<Plug>(operator-camelize-' }
  Plug 'tyru/operator-html-escape.vim', { 'on': '<Plug>(operator-html-' }
  Plug 'tyru/operator-reverse.vim', { 'on': '<Plug>(operator-reverse-' }


" コマンド {{{1
Plug 'thinca/vim-ref', { 'on': ['Ref', 'Unite'] }
  Plug 'mojako/ref-sources.vim'

Plug 'osyo-manga/shabadou.vim'
Plug 'thinca/vim-quickrun', { 'on': ['QuickRun', '<Plug>(quickrun'] , 'do': ':call MyDeinHookQuickrun()' }

Plug 'majutsushi/tagbar', { 'on': ['TagbarToggle', 'TagbarOpen'] }

Plug 'tyru/restart.vim', { 'on': ['Restart'] }

Plug 'sjl/gundo.vim', { 'on': ['GundoToggle'] }

Plug 't9md/vim-quickhl', { 'on': ['QuickhlManualAdd', 'QuickhlManualReset', '<Plug>(quickhl-'] }

Plug 'AndrewRadev/linediff.vim'

Plug 'thinca/vim-prettyprint', { 'on': ['PP'] }

Plug 'AndrewRadev/splitjoin.vim', { 'on': ['SplitjoinSplit', 'SplitjoinJoin'] }

Plug 'thinca/vim-scall', { 'on': ['Scall'] }

Plug 'osyo-manga/vim-over', { 'on': ['OverCommandLine'] }

Plug 'junegunn/vim-easy-align', { 'on': ['EasyAlign'] }

Plug 'h1mesuke/vim-alignta', { 'on': ['Alignta', 'Unite'] }

Plug 'vim-scripts/Align', { 'on': ['Align', 'AlignCtrl', 'AlignPush', 'AlignPop'] }

Plug 'vim-scripts/SQLUtilities', { 'on': ['SQLUFormatter'] }

Plug 'vim-scripts/copypath.vim', { 'on': ['CopyPath', 'CopyFileName'] }

Plug 'jceb/vim-editqf', { 'on': ['QFAddNote', 'QFSave', 'QFLoad'] }

Plug 'will133/vim-dirdiff', { 'on': ['DirDiff'] }

Plug 'vim-scripts/loremipsum', { 'on': ['Loremipsum'] }

Plug 'thinca/vim-scouter', { 'on': ['Scouter'] }

Plug 'vim-scripts/dbext.vim', { 'on': ['DBExt'] }

Plug 'mattn/qiita-vim', { 'on': ['Qiita', 'CtrlPQiita'] }


" 表示 {{{1
Plug 'itchyny/lightline.vim'

Plug 'ryanoasis/vim-devicons'

Plug 'osyo-manga/vim-anzu'

Plug 'fholgado/minibufexpl.vim', { 'on': ['MBEbp', 'MBEbn', 'MBEToggle'] }

Plug 'Shougo/context_filetype.vim'
  Plug 'osyo-manga/vim-precious', { 'on': ['PreciousSwitch', 'PreciousReset'] }

Plug 'thinca/vim-guicolorscheme', { 'on': ['GuiColorScheme'] }

Plug 'godlygeek/csapprox', { 'on': ['CSApproxSnapshot'] }

Plug 'vim-scripts/ScrollColors', { 'on': ['SCROLLCOLOR'] }

" 普段使わないカラースキームは使用時にアクティベート
Plug 'vim-scripts/molokai'
Plug 'twerth/ir_black'
" Plug 'vim-scripts/wombat256.vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'w0ng/vim-hybrid'
" Plug 'nanotech/jellybeans.vim'
" Plug 'jpo/vim-railscasts-theme'
" Plug 'jonathanfilip/vim-lucius'
" Plug 'vim-scripts/Zephyr-Color-Scheme'
" Plug 'cocopon/iceberg.vim'
" Plug 'vim-scripts/newspaper.vim'
" Plug 'itchyny/landscape.vim'
" Plug 'jscappini/material.vim'

Plug 'cocopon/colorswatch.vim', { 'on': ['ColorSwatchGenerate'] }


" 補助 {{{1
Plug 'thinca/vim-singleton'
Plug 'taku-o/vim-zoom', { 'on': ['ZoomIn', 'ZoomOut', 'ZoomReset'] }

Plug 'thinca/vim-localrc'

Plug 'vim-jp/vimdoc-ja'

Plug 'Konfekt/FastFold'

Plug 'mattn/benchvimrc-vim', { 'on': ['BenchVimrc'] }

" Plug 'haya14busa/vim-migemo'
  " Plug 'rhysd/migemo-search.vim'

Plug 'vim-scripts/sudo.vim', { 'on': ['SudoWrite', 'SudoRead'] }

Plug 'nathanaelkane/vim-indent-guides'

Plug 'thinca/vim-splash', { 'on': ['Splash'] }

Plug 'mklabs/vim-cowsay', { 'on': ['Cowsay'] }

Plug 'yonchu/accelerated-smooth-scroll', { 'on': '<Plug>(ac-smooth-scroll-' }

Plug 'vim-scripts/ShowMarks', { 'on': ['ShowMarksToggle'] }

Plug 'vim-scripts/AnsiEsc.vim', { 'on': ['AnsiEsc'] }

Plug 'kana/vim-submode'

Plug 'tpope/vim-repeat'

Plug 'fuenor/qfixhowm', { 'on': ['QFixHowm'] }

Plug 'xolox/vim-misc'
  Plug 'xolox/vim-reload'

Plug 'haya14busa/incsearch.vim', { 'on': '<Plug>(incsearch-' }
  Plug 'haya14busa/incsearch-migemo.vim', { 'on': '<Plug>(incsearch-migemo-' }
  Plug 'haya14busa/incsearch-fuzzy.vim', { 'on': '<Plug>(incsearch-fuzzy-' }

Plug 'thinca/vim-visualstar', { 'on': '<Plug>(visualstar-' }

Plug 'rhysd/clever-f.vim', { 'on': ['<Plug>(clever-f-'] }

Plug 'bkad/CamelCaseMotion', { 'on': ['<Plug>CamelCaseMotion_'] }
  Plug 'zeero/vim-smartword', { 'on': ['<Plug>(smartword-'] }


" Git {{{1
Plug 'Shougo/vim-vcs', { 'on': ['Vcs'] }
Plug 'tpope/vim-fugitive'
  Plug 'gregsexton/gitv', { 'on': ['Gitv'] }
Plug 'cohama/agit.vim', { 'on': ['Agit'] }
Plug 'jreybert/vimagit'


" Ruby {{{1
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby'] }
Plug 'tpope/vim-rails', { 'for': ['ruby'] }
Plug 'taka84u9/vim-ref-ri'
Plug 'k-takata/matchit.vim'
" if executable('rct-complete')
"   Plug 'osyo-manga/vim-monster', { 'for': ['ruby'] }
" endif

Plug 'fishbullet/deoplete-ruby', { 'for': ['ruby'] }
if executable('solargraph')
  Plug 'uplus/deoplete-solargraph', { 'for': ['ruby'] }
endif

Plug 'rlue/vim-fold-rspec', { 'for': ['ruby'] }


" Swift {{{1
Plug 'Keithbsmiley/swift.vim', { 'for': ['swift'] }


" HTML/JavaScript/Markdown {{{1
Plug 'mattn/emmet-vim', { 'for': ['html'] }
Plug 'othree/html5.vim', { 'for': ['html'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['html'] }

Plug 'jelera/vim-javascript-syntax', { 'for': ['javascript'] }
Plug 'vim-scripts/jQuery', { 'for': ['javascript'] }
Plug 'https://bitbucket.org/teramako/jscomplete-vim', { 'for': ['javascript'] }
" Plug 'jiangmiao/simple-javascript-indenter', { 'for': ['javascript'] }

Plug 'leshill/vim-json', { 'for': ['json'] }

Plug 'kchmck/vim-coffee-script', { 'for': ['javascript', 'coffee'] }

" Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
  Plug 'maximbaz/lightline-ale'

Plug 'lukaszkorecki/workflowish', { 'for': ['workflowish'] }
Plug 'zeero/previm', { 'for': ['markdown', 'workflowish'] }
" Plug 'plasticboy/vim-markdown', { 'for': ['markdown'] }
" Plug 'tpope/vim-markdown', { 'for': ['markdown'] }
" Plug 'nelstrom/vim-markdown-folding', { 'for': ['markdown'] }


" Java {{{1
" Plug 'http://www.fleiner.com/vim/syntax_60/javaid.vim', { 'for': ['java'] }
" name = 'javaid.vim'
" type = 'raw'
" script_type = 'syntax'
Plug 'kamichidu/vim-edit-properties', { 'for': ['jproperties'] }


" VimScript {{{1
Plug 'vim-jp/vital.vim', { 'on': ['Vitalize'] }

Plug 'kana/vim-vspec'
Plug 'rhysd/vim-vspec-matchers'

Plug 'Shougo/vesting', { 'on': 'Unite' }

" Plug 'thinca/vim-themis'
" Plug 'kannokanno/vmock'
" Plug 'haya14busa/go-vimlparser'
Plug 'machakann/vim-Verdin', { 'for': ['vim'] }

" その他のファイルタイプ {{{1
Plug 'chase/vim-ansible-yaml', { 'for': ['ansible'] }

" 1}}}

" Initialize plugin system
call plug#end()


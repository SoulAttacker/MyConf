" 使用特定键位实现某种功能（非修改而是设定快捷键）
map S <nop>
map S :w<CR>
map SQ :wq<CR>
map Q! :q!<CR>

" 插入模式
inoremap  <C-h> <Left>
inoremap  <C-j> <Down>
inoremap  <C-k> <Up>
inoremap  <C-l> <Right>
inoremap  <C-a> <Home>
inoremap  <C-e> <End>

" 命令模式
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" 普通模式
nnoremap <C-a> <Home>
nnoremap <C-e> <End>

" 文件类型检测
filetype plugin on
filetype indent on


" 设置缩进
set tabstop=4
" 设置自动缩进
set autoindent
" 设置软制表符
set softtabstop=4
" 更改缩进方式
set shiftwidth=4
" 设置默认进行大小写不敏感查找
set ignorecase
" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase
" 显示行号
set nu
" 不打开 relativenumber
set norelativenumber 
" 打开光标线
" set cursorline
" 自动使用系统剪切板进行复制粘贴
set clipboard=unnamedplus
" 删除改行后跳到上一行继续删除
set backspace=2
" 鼠标可用
set mouse=a
" 移动问题
set whichwrap+=<,>,[,],h,l
" 自动缩进
set autoindent
" C自动缩进
set cindent
" 自动缩进空白字符个数
set shiftwidth=4
" tab键的一个制表符//tab键的一个制表符，如果softtabstop=5,tabstop=4,则tab是1>
set softtabstop=4
" tab键的空格数
set tabstop=4
" 查找高亮
set hls
highlight Search ctermbg=yellow ctermfg=black 
highlight IncSearch ctermbg=black ctermfg=yellow 
highlight MatchParen cterm=underline ctermbg=NONE ctermfg=NONE

" 语法高亮
syntax enable
syntax on

" 插件列表
call plug#begin('~/.vim/plugged')
" vim 主页命令
Plug 'mhinz/vim-startify'

" vim 状态条
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 文件树
" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'


" 函数列表
" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" 书签
" Bookmarks
Plug 'kshenoy/vim-signature'


" ultisnips是引擎
" Plug 'SirVer/ultisnips'
" snippets
" Plug 'honza/vim-snippets'

" 缩进线
" indentLine
" Plug 'Yggdroot/indentLine'

" latex插件
" Plug 'lervag/vimtex'

" 代码美化
" vim-snazzy
Plug 'connorholyday/vim-snazzy'

" vim 主题
" vim-hybrid
Plug 'w0ng/vim-hybrid'

" markdown 代码补全
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'

" Use release branch (Recommend)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by use yarn: https://yarnpkg.com
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" 代码补全
" YouCompleteMe
" Plug 'Valloric/YouCompleteMe'

" 括号补全
" delimitMate
Plug 'Raimondi/delimitMate'

" 彩虹括号
" rainbow_parentheses
Plug 'kien/rainbow_parentheses.vim'

" 代码片段
" Plug 'SirVer/ultisnips'
" Plug 'keelii/vim-snippets'

" 用于YouCompleteMe和UltiSnips的tab冲突
Plug 'ervandew/supertab'

" latex 实时预览
" Plug 'xuhdev/vim-latex-live-preview'

" 复制高亮
Plug 'machakann/vim-highlightedyank'

call plug#end()


" -------------------------------------------------------------------


" 以下用于插件配置
" ===
" === vim-airline
" ===
let g:airline#extensions#tabline#enabled = 1 " 仅打开一个选项卡时自动显示所有缓冲区


" ===
" === supertab
" ===
" 这样YouCompleteMe就被绑定到了Ctrl+n，然后这个快捷键又被SuperTab绑定到tab
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"




" ===
" === hybrid
" ===
" set background=dark " (设置vim背景色)
" colorscheme hybrid " 是否使用hybrid的主题



" ===
" === NERDTree
" ===
map ff :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ===
" === You Complete Me
" ===
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>

" ===
" === Taglist
" ===
map <silent> T :TagbarOpenAutoClose<CR>
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" ===
" === vim-signiture
" ===
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "dm-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "dm/",
        \ 'PurgeMarkers'       :  "dm?",
        \ 'GotoNextLineAlpha'  :  "m<LEADER>",
        \ 'GotoPrevLineAlpha'  :  "",
        \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
        \ 'GotoPrevSpotAlpha'  :  "",
        \ 'GotoNextLineByPos'  :  "",
        \ 'GotoPrevLineByPos'  :  "",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "",
        \ 'GotoPrevMarker'     :  "",
        \ 'GotoNextMarkerAny'  :  "",
        \ 'GotoPrevMarkerAny'  :  "",
        \ 'ListLocalMarks'     :  "m/",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

" ===
" === indentLine
" ===
let g:indentLine_setColors = 0 
let g:indentLine_color_term = 239 " 设置缩进线的颜色为灰色(RGB)


" ===
" === vim-snazzy
" ===
let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }



" ===
" === rainbow_parenthese.vim
" ===
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
" make it always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare


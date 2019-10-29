" =================== vim-plug ===================
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" vim启动页面优化
Plug 'mhinz/vim-startify'
" 主题
Plug 'morhetz/gruvbox'
" 状态栏美化
Plug 'itchyny/lightline.vim'

" 增加代码缩进线条
Plug 'yggdroot/indentline'

Plug 'tmhedberg/SimpylFold'

" nerdtree
Plug 'scrooloose/nerdtree'
" nerdtree git plugin
Plug 'Xuyuanp/nerdtree-git-plugin'
" 图标
Plug 'ryanoasis/vim-devicons'

" leader f
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" easymotion
Plug 'easymotion/vim-easymotion'
" insearch
Plug 'haya14busa/incsearch.vim'
" insearch-easymotion
Plug 'haya14busa/incsearch-easymotion.vim'
" vim surround, cs"',从双引号改成单引号
Plug 'tpope/vim-surround'

" ,k看相应文字
Plug 'lfv89/vim-interestingwords'

" 彩虹括号
Plug 'luochen1990/rainbow'

" undotree F5查看
Plug 'mbbill/undotree'

" gS/gJ来一句变等价的多句
Plug 'AndrewRadev/splitjoin.vim'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ale静态检查
Plug 'w0rp/ale'
" autoformat
Plug 'Chiel92/vim-autoformat'

" gcc注释
Plug 'tpope/vim-commentary'
" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' " 提示修改
Plug 'junegunn/gv.vim' " 查看提交记录

" 光标多选
Plug 'terryma/vim-multiple-cursors'

" 输入法
" Plug 'ybian/smartim'
" Plug 'lilydjwg/fcitx.vim'
" Plug 'CodeFalling/fcitx-vim-osx'

" auto pairs
Plug 'jiangmiao/auto-pairs'

" 单词加下划线
Plug 'itchyny/vim-cursorword'


" ------------ 语言插件 ------------
" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'AndrewRadev/splitjoin.vim' " gS来拆开，gJ来合并，每行后有逗号


" python
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" markdown
Plug 'godlygeek/tabular' " vim-markdown必要插件
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'

Plug 'mzlogin/vim-markdown-toc' " 目录
" 生成目录 :GenTocMarked
" 更新目录 :UpdateToc

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Initialize plugin system
call plug#end()

" ===============================================

" ================ 自定义 =================
" 对vim折叠
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

" 配置立刻生效
autocmd! BufWritePost ~/.vimrc :source ~/.vimrc

set helplang=cn
language messages zh_CN.utf-8

" 设置主题
set background=dark
colorscheme gruvbox
" colorscheme molokai

filetype off                  " reset
filetype plugin indent on
" ======= set ====
set showmode
set nocompatible              " 不与vi兼容
set showcmd
" set mouse=a
set encoding=utf-8
set t_Co=256

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1         "vim会根据该设置识别文件编码

set fileformat=unix                    " 设置以unix的格式保存文件"
set fileencoding=utf-8          " 在保存文件时，指定编码
set termencoding=utf-8          " 终端环境告诉vim使用编码

" 缩进
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set smarttab

" 折叠
set foldmethod=indent " 基于缩进折叠
set foldlevel=99
set nofoldenable

" 外观
set number
set relativenumber
set cursorline
set textwidth=80
set wrap
set linebreak
set wrapmargin=2
set scrolloff=5
set laststatus=2 " 状态栏展示，2常开
set ruler

set backspace=2 " 解决 backspace 按键删除的问题
set splitright " 左右分屏后光标在右侧
set splitbelow

" 字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5

" 搜索
set showmatch
set matchtime=1
set hlsearch
set incsearch
set ignorecase
set smartcase

" 编辑
set autochdir
set autoread
set listchars=tab:»■,trail:●
set list
set wildmenu
set wildmode=longest:list,full

set undofile
set undodir=~/.vim/undodir
set history=1000

set nobackup
set nowritebackup
set noswapfile

" 按F2进入粘贴模式
set pastetoggle=<F2>

" 语法高亮
syntax on

" 改键
let g:mapleader=','
noremap <leader>so :so %<CR>
noremap <leader>w :w<CR>
noremap <leader>q :q<CR>
nnoremap <leader>p "+p
vnoremap <leader>y "+y
nnoremap <leader><leader>p "0p
nnoremap <leader><leader>d diw"0P
noremap <C-c> <Esc>
nnoremap <space> :

noremap H ^
noremap L $
noremap K H
noremap J L

" 命令行模式增强，ctrl - a到行首， -e 到行尾
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" 使用 C-h/j/k/l 来切换窗口
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" sudo写入，使用:w!!
cnoremap w!! w !sudo tee % >/dev/null

" json 格式化
com! FormatJSON %!python3 -m json.tool " json文件内，:formatjson 来格式化

" 输入模式改变光标的样子
if empty($TMUX)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif



" ========== 插件配置 =================
" ---- startify img ----- {{{
let g:weight_lifting= [
      \'. MMMMMM......................MMMMMMMMM.',
      \'MMMMMMMMM....................MMMMMMMMMM.',
      \'MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMD',
      \'MMMMMMMMMM...NM .........MM..MMMMMMMMMM.',
      \'MMMMMMMMMM....MM.........MM...MMMMMMMMM.',
      \'MMMMMMMMMM....MM7.......MMM... MMMMMMM .',
      \'.,MMMMMM.......MM.. MMM MM..............',
      \'...............~MM..MMMMMM..............',
      \'................MM..MMMMMO..............',
      \'............... MMMMMMMMM ..............',
      \'................MMMMMMMMM...............',
      \'................ MMMMMMM................',
      \'.................MMMMMMM................',
      \'.................MMMMMMM................',
      \'.................MMMMMMM................',
      \'................MMMMMMM.................',
      \'...............MMMMMMMO.................',
      \'..............=MMMMMMMMMMD..............',
      \'..............MMMMMMMMMMMMM.............',
      \'.............MMMMM....MMMMMM............',
      \'.............MMMM........MMM............',
      \'............MMMM.........MMM............',
      \'.........DMMMMMM..........MM ...........',
      \'..... NMMMMMMM= ..........MM............',
      \'....MMMM...................M............',
      \'.....MMM..................MMMM..........',
      \'............................ZM..........',
      \]

let g:barbell_img = [
      \'. . 8M,M.MZ  .. ................................ZM.M,M8.....',
      \'. MMDM:M.MZ     ........ .. ... ................ZM.M,MDMM...',
      \'..MMDM,M.MZ. ...................................ZM.M,M8MM...',
      \'MMMMDM,M.MZMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZM.M,MDMMMMM',
      \'..MMDM,M.MZ.....................................ZM.M,MDMM...',
      \'..MMDM,M.MZ.....................................ZM.M,MDMM...',
      \'....8M:M.MZ ....................................ZM.M:M8.....',
      \'......,M.MZ.....................................ZM.M,.......',
      \]
"}}}

let g:startify_custom_header = startify#fortune#boxed() + g:weight_lifting " 方框内每日一句
let g:startify_custom_footer = g:barbell_img

" nerd tree
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>  " 查找文件位置
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.git$', '\.DS_Store$']
" 最后一个窗口为nerdtree的时候，关掉vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" adding to vim-startify screen
let g:webdevicons_enable_startify = 1
let g:DevIconsDefaultFolderOpenSymbol = ''

" easymotion
nmap <leader>f <Plug>(easymotion-overwin-f2)

" multiple-cursors
let g:multi_cursor_quit_key            = '<C-c>'
let g:multi_cursor_select_all_key      = 'g<C-n>'
let g:multi_cursor_start_key           = 'g<A-n>'

" rainbow
let g:rainbow_active = 1

" auto pairs
let g:AutoPairsFlyMode = 0
" let g:AutoPairsShortcutBackInsert = '<C-i>' " 写了会影响到tab键
inoremap <buffer> <silent> <BS> <C-R>=AutoPairsDelete()<CR>

" incsearch-easymotion
map / <Plug>(incsearch-easymotion-/)


" undotree
nnoremap <F5> :UndotreeToggle<cr>

" gitgutter
set updatetime=300 " 100 ms


" linghtline
let g:lightline = {'colorscheme': 'seoul256'}

" ale
let g:ale_sign_column_always = 1 " 侧边栏一直可见
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '✔ ok'] " 改变状态栏信息格式
let g:ale_lint_on_text_changed='never'
let g:ale_lint_on_enter=0
let g:ale_lint_on_save=1
let g:ale_fix_on_save=0

" autoformat
noremap <F3> :Autoformat<CR>
au BufWrite * :Autoformat

" leaderf
let g:Lf_ShortcutF = '<C-P>'
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_ReverseOrder = 1 " 最优结果展示在下面

noremap <F8> :LeaderfFunction!<cr>
" 回溯上一次的搜索
noremap go :<C-U>Leaderf! rg --stayOpen --recall<CR>

let g:Lf_WildIgnore = {
      \ 'dir': ['.svn','.git','.hg', 'node_modules'],
      \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]', '*.gitignore', '.DS_Store']
      \}

" devicons
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding to vim-startify screen
let g:webdevicons_enable_startify = 1
" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" simplyfold
let g:SimpylFold_docstring_preview=1

" ------  coc  -------
" Use a command like :verbose imap <tab> to make sure that your keymap has taken effect.
" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes


" Use <tab> to confirm completion
inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)


" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" -----------------------------------
" ---------- 语言插件配置 -----------
" python
let g:pymode = 1
let g:pymode_warnings = 1
let g:pymode_python = 'python3'  " 默认用python3
let g:pymode_trim_whitespaces = 1
let g:pymode_options_max_line_length = 80
let g:pymode_rope_goto_definition_bind = "<C-]>"

let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_message = 1
let g:pymode_lint_sort = ['E', 'C', 'I']
let g:pymode_lint_signs = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
let g:pymode_motion = 1

let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'

let g:pymode_rope_goto_definition_bind = '<C-c>g'

" vim-go
set autowrite
noremap <leader>n :cnext<CR>
noremap  <leader>m :cprevious<CR>
nnoremap <leader>c :GoCallers<CR>

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_test_timeout = '10s'
let g:go_textobj_include_function_doc = 0
let g:go_fmt_fail_silently = 1
let g:go_addtags_transform = "camelcase"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
let g:rehash256 = 1
" let g:molokai_original = 1 " 主题的设置，对比度高

let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"

" markdown
let g:vim_markdown_math=1
let g:vim_markdown_conceal=0 " 禁用一些隐藏
let g:vim_markdown_fenced_languages = ['javascript=js', 'python=py']
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_json_frontmatter = 1


let g:mkdp_refresh_slow = 1 "保存后更新
nnoremap <leader><leader>r <Plug>MarkdownPreviewToggle

" js
autocmd FileType javascript nmap <Leader>r :w<CR>:!node % <CR>


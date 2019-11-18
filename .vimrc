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

Plug 'Konfekt/FastFold'

" nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" nerdtree git plugin
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }
" 图标
Plug 'ryanoasis/vim-devicons', { 'on':  'NERDTreeToggle' }

" leader f
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" easymotion
" Plug 'easymotion/vim-easymotion'

Plug 'justinmk/vim-sneak'

" insearch
Plug 'haya14busa/incsearch.vim'
" insearch-easymotion
" vim surround, cs"',从双引号改成单引号
Plug 'tpope/vim-surround'

" ,k看相应文字
Plug 'lfv89/vim-interestingwords'

" 彩虹括号
Plug 'luochen1990/rainbow'

" undotree F5查看
Plug 'mbbill/undotree'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ale静态检查
Plug 'w0rp/ale'
" autoformat
Plug 'Chiel92/vim-autoformat'

" gcc注释
Plug 'tpope/vim-commentary'

" 光标多选
Plug 'terryma/vim-multiple-cursors'

" auto pairs
Plug 'jiangmiao/auto-pairs'

" easylog
Plug 'joeyZhouYicheng/vim-easylog'

Plug 'terryma/vim-smooth-scroll'

Plug 'terryma/vim-expand-region'

" ------------ 语言插件 ------------
" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' , 'for':'go'}

" ts
Plug 'leafgarland/typescript-vim', { 'for':'xml'}


" Initialize plugin system
call plug#end()

" ===============================================

" ========== 插件配置 ================={{{
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
" adding to vim-startify screen
let g:webdevicons_enable_startify = 1
let g:DevIconsDefaultFolderOpenSymbol = ''


" multiple-cursors
let g:multi_cursor_quit_key            = '<C-c>'
let g:multi_cursor_select_all_key      = 'g<C-n>'
let g:multi_cursor_start_key           = 'g<A-n>'

" fastfold
let g:vimsyn_folding='af'
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7


" auto pairs
let g:AutoPairsFlyMode = 0
inoremap <buffer> <silent> <BS> <C-R>=AutoPairsDelete()<CR>

" undotree
nnoremap <F5> :UndotreeToggle<cr>


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

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remcap for rename current word
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


" smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" sneak
let g:sneak#label = 1

map f <Plug>Sneak_f
map F <Plug>Sneak_F

map ' <Plug>Sneak_,

" -----------------------------------
" ---------- 语言插件配置 -----------
" python
" let g:pymode = 1
" let g:pymode_warnings = 1
" let g:pymode_python = 'python3'  " 默认用python3
" let g:pymode_trim_whitespaces = 1
" let g:pymode_options_max_line_length = 80
" let g:pymode_rope_goto_definition_bind = "<C-]>"

" let g:pymode_lint = 1
" let g:pymode_lint_on_write = 1
" let g:pymode_lint_message = 1
" let g:pymode_lint_sort = ['E', 'C', 'I']
" let g:pymode_lint_signs = 1
" let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
" let g:pymode_motion = 1

" let g:pymode_run = 1
" let g:pymode_run_bind = '<leader>r'

" let g:pymode_rope_goto_definition_bind = '<C-c>g'

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

" python3
autocmd FileType python nmap <Leader>r :w<CR>:!python3 % <CR>
"}}}


" ================ 自定义 =================
" 配置立刻生效
autocmd! BufWritePost ~/.vimrc :source ~/.vimrc

set updatetime=300 " 100 ms
set lazyredraw
set ttyfast

set helplang=cn
" language messages zh_CN.utf-8

" 设置主题
set background=dark
colorscheme gruvbox

filetype off                  " reset
filetype plugin indent on
" ======= set ====
set showmode
set nocompatible              " 不与vi兼容
set showcmd
" set mouse=a
set encoding=utf-8
set t_Co=256

set fileencodings=ucs-bom,utf-8,gb18030        "vim会根据该设置识别文件编码

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


" 外观
set number
set relativenumber
" 激活的窗口才会有当前行的高亮
autocmd WinEnter * set cursorline
autocmd WinLeave * set nocursorline
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

set foldmethod=manual

" 按F2进入粘贴模式
set pastetoggle=<F2>

" 语法高亮
syntax on

" ------ 改键 -----
" 折叠下也能正常移动
nnoremap j gj
nnoremap k gk

let g:mapleader=','
nnoremap <leader>so :w<cr>:so %<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>p "+p
vnoremap <leader>y "+y
nnoremap <leader><leader>p "0p
nnoremap <leader><leader>d viw"0P
noremap <C-c> <Esc>
nnoremap <space> :

noremap H ^
noremap L $
" noremap K H
" noremap J L

" 缩进后依然保持选中
xnoremap <  <gv
xnoremap >  >gv

" 命令行模式增强，ctrl - a到行首， -e 到行尾
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-n> <down>
cnoremap <C-p> <up>

" 使用 C-h/j/k/l 来切换窗口
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" 快速移动当前行
nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

" 快速添加空行
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" terminal
nnoremap <leader><leader>t <c-w><c-v>:<c-u>terminal<cr>
tnoremap <Esc> <C-\><C-n>
tnoremap <c-h> <C-\><C-N><C-w>h
tnoremap <c-j> <C-\><C-N><C-w>j
tnoremap <c-k> <C-\><C-N><C-w>k
tnoremap <c-l> <C-\><C-N><C-w>l

autocmd BufWinEnter,WinEnter * if &buftype == 'terminal' | silent! normal i | endif

" sudo写入，使用:w!!
cnoremap w!! w !sudo tee % >/dev/null

" json 格式化
" json文件内，:formatjson 来格式化
com! FormatJSON %!python3 -m json.tool

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


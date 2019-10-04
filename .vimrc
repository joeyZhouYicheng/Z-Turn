" =================== vim-plug ===================
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-startify'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'


" Initialize plugin system
call plug#end()


" ================ 自定义 =================
" 配置立刻生效
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 设置主题
" colorscheme hybrid

" ======= set ====
set showmode
set nocompatible              " be iMproved, required, 不与vi兼容
set showcmd
set mouse=a
set encoding=utf-8
set t_Co=256

" 缩进
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set smarttab

" 折叠
set foldmethod=syntax " 基于语法折叠
set foldmethod=indent " 基于缩进折叠
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
set laststatus=1 " 状态栏展示，2常开
set ruler

" 字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5

" 搜索
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase

" 编辑
set autochdir
set autoread
set listchars=tab:»■,trail:■
set list
set wildmenu
set wildmode=longest:list,full

set undofile
set history=1000

set nobackup
set noswapfile

" 按F2进入粘贴模式
set pastetoggle=<F2>

" 语法高亮
syntax on

" 改键
nmap fwq :wq<CR>
let mapleader=","
let g:mapleader=','
inoremap <C-d> <Esc>

" 使用 C-h/j/k/l 来切换窗口
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" sudo写入，使用:w!!
cnoremap w!! w !sudo tee % >/dev/null

" json 格式化
com! FormatJSON %!python3 -m json.tool " json文件内，:formatjson 来格式化


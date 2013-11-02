" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

"pathogen setup
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
"if &t_Co > 2 || has("gui_running")
"  syntax on
"endif

filetype plugin indent on
set helplang=cn
set number "显示行数
set autoindent		" always set autoindenting on
set ignorecase smartcase	" Do case insensitive matching
set hlsearch
if has('gui_running')
    set guioptions-=L "删除左侧边栏
    se guifont=monaco:h14
    se guioptions -=T "删除工具条
    se guioptions -=e "删除tab的gui样式
    se guioptions -=m "删除tab的gui样式
else
endif
set fileencodings=utf-8,GB2312,gbk "当我们打开一个文件时 按照顺序陪编码
set softtabstop=4 "输入tab时为4个空格	
set shiftwidth=4 "indent时 也能是4个空格 


"powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'unicode'

"colorScheme
syntax enable
if has('gui_running')
    set background=dark
    colorscheme solarized
endif

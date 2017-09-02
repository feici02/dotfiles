" If you don't understand a setting in here, just type ':h setting'.

" ========================================
" vundle
" ========================================

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off                  " required

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/vundle.vim

call vundle#begin()
" alternatively, pass a path where vundle should install plugins
" call vundle#begin('~/some/path/here')

" let vundle manage vundle, required
Plugin 'vundlevim/vundle.vim'

Plugin 'nanotech/jellybeans.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-commentary'
Plugin 'altercation/vim-colors-solarized'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'nvie/vim-flake8'
"Plugin 'vim-syntastic/syntastic'

Plugin 'Chiel92/vim-autoformat'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" ========================================
" vundle help
" ========================================

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

colorscheme jellybeans
set background=dark
" colorscheme solarized
" toggle dark/light theme
call togglebg#map("<F5>")

" Switch syntax highlighting on
syntax on

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" highlight the line containing the cursor
set cursorline

" Show the line number relative to the line with the cursor in front of each line.
" set relativenumber

" Precede each line with its line number.
set number

" Show the line and column number of the cursor position, separated by a comma.
set ruler

" The value of this option influences when the last window will have a status line:
" 0: never
" 1: only if there are at least two windows
" 2: always
set laststatus=2

" When there is a previous search pattern, highlight all its matches.
set hlsearch

" Tabs converted to 4 spaces
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set autoindent

set fileformat=unix
set encoding=utf-8

let mapleader = ","
let maplocalleader = "\\"

" $MYVIMRC is a special Vim variable that points to your ~/.vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

map <C-n> :NERDTreeToggle<CR>

" format JSON file
nmap =j :%!jq '.'<CR>

" format code
noremap <F3> :Autoformat<CR>
autocmd FileType python map <buffer> <F4> :call Flake8()<CR>

" format on save
"autocmd BufWrite *.py :Autoformat
"autocmd BufWritePost *.py call Flake8()

" easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

command! Q q " Bind :Q to :q
command! QA qa
command! W w
command! Wq wq
command! WQ wq

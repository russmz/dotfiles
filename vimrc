set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" filesystem
Plugin 'scrooloose/nerdtree'          " A tree explorer plugin
Plugin 'kien/ctrlp.vim'               " Fuzzy file, buffer, etc finder

" color scheme
Plugin 'vim-scripts/molokai'          " The monokai scheme for TextMate
Plugin 'vim-scripts/Solarized'        " Beautiful colorscheme

" ftplugin
Plugin 'tmhedberg/SimpylFold'         " No-BS Python code folding

" code utility
Plugin 'vim-scripts/taglist.vim'      " Source code browser
Plugin 'Yggdroot/indentLine'          " Display the indention levels
Plugin 'Valloric/YouCompleteMe'       " A code-completion engine
Plugin 'jiangmiao/auto-pairs'         " Brackets, parens, quotes in pair

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Configure
" #Flag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"{ nerdtree
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$'] "ignore files in NERDTree
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=25
nnoremap <F2>  :NERDTreeToggle<CR>
"}

"{ ctrlp.vim
"}

"{ molokai
"colorscheme molokai
"}

"{ Solarized
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
"}

"{ SimpylFold
"set foldmethod=indent
"set foldlevel=99
let g:SimpylFold_docstring_preview = 1
"let g:SimpylFold_fold_docstring = 0
"let g:SimpylFold_fold_import = 0
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
"}

"{ taglist.vim
"}

"{ indentLine
let g:indentLine_char='鈹?
let g:indentLine_enabled = 1
"}

"{ YouCompleteMe
"}

"{ auto-pairs
"}

"{ $powerline
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
set t_Co=256
let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

set laststatus=2
"}



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Configure
" #Flag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set Configure
" #Flag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set so=7
set colorcolumn=80
set ignorecase
set smartcase
set hlsearch
set showmatch
set lazyredraw
set cursorline
set cursorcolumn
set number
set nowrap
set autoread
set autoindent
set smartindent



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Let Configure
" #Flag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map Configure
" #Flag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" ctags
nnoremap <F12> :!ctags -R<CR>
" fold and unfold
nnoremap <space> za
" fast saving
nnoremap <leader>w :w!<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto Command
" #Flag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

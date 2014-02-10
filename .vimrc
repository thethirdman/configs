"    The_third_man's .vimrc !    "

" Vundle call
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

source ~/.vim/.bundlerc
filetype plugin indent on

" Basic Stuff
set cf
set autochdir
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set fileformats=unix,dos,mac
set modelines=0
set encoding=utf-8
set scrolloff=5
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
syn on

"faster Shift+O
set timeout timeoutlen=5000 ttimeoutlen=100

" Waiting for the version to be up to date "
set relativenumber
set undofile
set undodir=~/.vim/tmp
" Tabs
set expandtab
set shiftwidth=2
set tabstop=2

set encoding=utf8

" LOOOOOOOOOOOOOOONG LINES
set textwidth=79
set cc=80
set formatoptions=qrnl
set wrap

" Search
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
let mapleader = ","
nnoremap <leader><space> :noh<cr>

nnoremap <tab> %
vnoremap <tab> %

" lrn2move in vim : disables arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
nnoremap j gj
nnoremap k gk

" theme options
set t_Co=256
colorscheme molokai

"trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" Redim buffer alias
map <C-l> <C-W>>
map <C-h> <C-W><
map <C-j> <C-W>+
map <C-k> <C-W>-

" Tab navigation
map <left> gT
map <right> gt

" Opening a new tab
nnoremap t :tabnew<cr>

" Clang-complete
set completeopt=menu,menuone


" File templates
if has("autocmd")
augroup autoinsert
  au!
  autocmd BufNewFile *.hh call s:Template("header")
  autocmd BufNewFile *.hxx call s:Template("header")
  autocmd BufNewFile *.hcc call s:Template("header")
  autocmd BufNewFile *.h call s:Template("header")
  autocmd BufNew     *.ll 0r set ft=lex
augroup END
endif

function s:Template(argument)
  if (a:argument == "header")
    silent %!~/.vim/template/set_header.sh %
    call cursor(4,1)
    set ft=cpp
  endif
endfunction

set statusline=%t       "tail of the filename
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" Special chars highlight : DO NOT REMOVE TRAILING WHITESPACE
set list!
set listchars=nbsp:·,tab:\ \ 

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme= 'powerlineish'

" Rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax *   RainbowParenthesesLoadRound
" au Syntax *   RainbowParenthesesLoadSquare
" au Syntax *   RainbowParenthesesLoadBraces

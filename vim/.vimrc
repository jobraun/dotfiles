" Activate syntax-highlighting
syntax enable

set term=screen-256color

if has('gui_running')
  set guifont=Monospace\ 11
endif

" Disable menu bar, toolbar and scrollbar
set guioptions-=m
set guioptions-=T
set guioptions-=r

colorscheme jellybeans

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Better command-line completion
set wildmenu
set wildmode=list:full

" Show partial commands in the last line of the screen
set showcmd

" Show mode of the cursor (color)
set showmode

" Enable incremental searching
set incsearch

" Highlight searches
set hlsearch

" disable case-sensitivity for searches
set ignorecase

" Display line numbers
set number

" Show the column and row number of the ruler
set ruler

" Highlights the current cursor line
set cursorline

" Line lenght indicator
set colorcolumn=80

" File-type based indentation
filetype plugin indent on

" Use whitespaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Highlight trailing whitespaces
set list listchars=eol:¶,tab:>-,trail:.,extends:>,precedes:<

" Status line
set laststatus=2

" Two lines of context visible around the cursor at all times
set scrolloff=2

set tags=./tags;/

" Buffer shortcuts
map <F4> :ls<CR>
map <F5> :bp<CR>
map <F6> :bn<CR>
map <F8> :TagbarToggle<CR>

fun! TrimWhitespace()
  let l:save = winsaveview()
  %s/\s\+$//e
  call winrestview(l:save)
endfun
command! TrimWhitespace call TrimWhitespace()

" Configure airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

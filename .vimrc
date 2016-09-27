" Enable syntax highlighting
syntax on

set background=dark
colorscheme solarized

if has('gui_running')
  set guifont=Monospace\ 11
else
  set t_Co=16
  let g:solarized_termcolors=16
endif

" No backup files
set nobackup

" Only in case you don`t want a backup file while editing
set nowritebackup

" No swap file
set noswapfile

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Enable incremental searching
set incsearch

" Highlight searches
set hlsearch

" Display line numbers
set number

" Disable backup
set nobackup

" Set the command window height to 2 lines, to avoid many cases having to
" press <Enter> to continue
set cmdheight=2

" Use whitespaces
set expandtab
set tabstop=2
set shiftwidth=2
""set textwidth=78

" Don`t show invisible signs. To enable change nolist to list
set nolist

" Two lines of context visible around the cursor at all times
set scrolloff=2


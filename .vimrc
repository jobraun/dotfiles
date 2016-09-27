" Activate syntax-highlighting
syntax enable

" Change color scheme
colorscheme wombat256

if has('gui_running')
  set guifont=Monospace\ 11
endif

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Better command-line completion
set wildmenu

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
set relativenumber

" Show the column and row number of the ruler
set ruler

" Highlights the current cursor line
set cursorline

" Line lenght indicator
set colorcolumn=80

" Use whitespaces
set expandtab
set tabstop=2
set shiftwidth=2

" No invisible signs
set nolist

" Highlight trailing whitespaces
match ErrorMsg '\s\+$'

" Status line
set laststatus=2

" Set the command window height to 2 lines, to avoid many cases having to
" press <Enter> to continue
set cmdheight=2

" Two lines of context visible around the cursor at all times
set scrolloff=2

" customize the status line
set statusline=Buffer[%n]\ File:%F%=ASCII-Value:hex(0x%02B),dez(%03b)\ Position:\ %l,%-4c\ --%P--

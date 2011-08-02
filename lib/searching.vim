" Search should be very magic
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase
set incsearch
set showmatch
set nohlsearch
set gdefault   " All matches in a line are substituted

map <leader><space> :let @/=''<cr>

" runtime macros/matchit.vim
nmap <tab> %
vmap <tab> %

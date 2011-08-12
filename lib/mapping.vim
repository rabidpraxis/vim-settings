" This is vim's default, but lets be explicit anyways
let mapleader = ","

" Format paragraph remapping
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Replace escape with jj when in insert mode
imap jj <esc>

" Don't require shift for entering commands
noremap ; :

" Remove arrow key functionality
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Move based on visual lines and not wrapped content
nnoremap j gj
nnoremap k gk

" Caps lock hjkl is great for window traversing
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Convenient window maker
map <leader>w <C-w>v<C-w>l

" Open vimrc for quick editing
nmap <leader>ev :e ~/.vim/vimrc<CR>

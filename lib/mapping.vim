let mapleader = ","

map Q gq

map ,x :CommandTTag<cr>
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Replace escape with jj when in insert mode
imap jj <esc>

" Remap zen coding
imap <C-z> <C-Y>, 

" Replace Things
noremap ; :

" Insert color mappings
map <Leader>ch :PickHEX<cr>
map <Leader>cr :PickRGB<cr>
map <Leader>cl :PickHSL<cr>

" NERDTree toggle
map <Leader>v :NERDTreeToggle<cr>

"taglist toggle

" Remove arrow key functionality
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

nnoremap j gj
nnoremap k gk

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>w <C-w>v<C-w>l

" Edit vimrc
nmap <leader>ev :e ~/.vim/vimrc<CR>

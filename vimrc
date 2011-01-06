" rabidpraxis vimrc

set nocompatible                " No vi compatability

filetype off
" Pathogen Setup
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on       " Enable file type detection.
syntax on                       " Enable Syntax

" Generics {{{1
set ttyfast
set autoindent	        	      " always set autoindenting on
set backspace=indent,eol,start
set nowrap
" set ruler

set history=500
set ruler			                  " show the cursor position all the time
set showcmd			                " display incomplete commands

set clipboard+=unnamed          " yanks go on clipboard
set hidden                      " Buffers can go in the background

" Visual
set number
set cursorline
set showmatch
set novisualbell
" set colorcolumn=82
set guicursor=a:blinkon0

" Tab
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab

set shell=zsh
"}}}
" Searching {{{1
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set nohlsearch
set gdefault
map <leader><space> :let @/=''<cr>
" runtime macros/matchit.vim
nmap <tab> %
vmap <tab> %
" }}}
" Folding {{{1
set foldlevelstart=100 " Don't allow initial folding
nnoremap <Space> za<cr>
vnoremap <Space> za<cr>

" Save folding when leaving file and reload when entering
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

au BufNewFile,BufRead *.html map <leader>ft Vatzf

" Customize foldtext
" function! MyFoldText()
    " let line = getline(v:foldstart)

    " let nucolwidth = &fdc + &number * &numberwidth
    " let windowwidth = winwidth(0) - nucolwidth - 3
    " let foldedlinecount = v:foldend - v:foldstart

    " " expand tabs into spaces
    " let onetab = strpart('          ', 0, &tabstop)
    " let line = substitute(line, '\t', onetab, 'g')

    " let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - 4
    " return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
" endfunction
" set foldtext=MyFoldText()
" }}}

let mapleader = ","

" General Mappings {{{1
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Replace escape with jj when in insert mode
imap jj <esc>

" Remap zen coding
imap <C-z> <C-Y>, 

imap <C-D>c <F5>
vmap <C-D>c <F5>

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
nmap <leader>v :edit $HOME/.vim/vimrc<CR>

"}}}
" Plugins and Settings {{{1

" Command-T
let g:CommandTMatchWindowAtTop=1 " show window at top

" ZenCoding Setup
let g:user_zen_settings = {
\  'php' : {
\    'extends' : 'html',
\    'filters' : 'c',
\  },
\  'xml' : {
\    'extends' : 'html',
\  },
\  'scss' : {
\    'extends' : 'css',
\  },
\}

let g:user_zen_expandabbr_key = '<c-e>'
let g:user_zen_next_key = '<c-j>'
let g:user_zen_prev_key = '<c-k>'

"}}}
" Commands {{{1

if has("autocmd")
  " For all text files set 'textwidth' to 80 characters.
  autocmd FileType text setlocal textwidth=80

  " Refresh browsers
  au! BufWritePost *.html,*.scss,*.php :silent !python /Users/rabidPraxis/Dropbox/rpLib/Scripts/Textmate\ Bundles/rp-web-tools-tmbundle/bin/refresh_browsers.py  

  " Restore cursor positioning
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  " Source the vimrc file after saving it
  autocmd! bufwritepost vimrc source $MYVIMRC

  " Buffer diff
  if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
        \ | wincmd p | diffthis
  endif
endif

" }}}
" Functions {{{1

" Add RebuildTagsFile function/command
function! s:RebuildTagsFile()
  !ctags -R --exclude=coverage --exclude=files --exclude=public --exclude=log --exclude=tmp --exclude=vendor *
endfunction
command! -nargs=0 RebuildTagsFile call s:RebuildTagsFile()

" StatusLine
set laststatus=2
set statusline=\ "
set statusline+=%f\ " file name
set statusline+=[
set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&fileformat}] " file format
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=%= " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

"}}}

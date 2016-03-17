" Search should be very magic
nnoremap / /\v
vnoremap / /\v

set ignorecase " perfect cocktail for searching
set smartcase  " perfect cocktail for searching
set incsearch  " highlight current search matches
set showmatch  " move to search match
set gdefault   " All matches in a line are substituted

set hlsearch   " Highlight the search after I am done

 " Return clears highlighed search results
nnoremap <Space> :nohlsearch<Space><CR>

" matchit mapping
nmap <tab> %
vmap <tab> %

set ttyfast                    " Improves terminal smoothness
set autoindent                 " always set autoindenting on
set backspace=indent,eol,start " Found this on the internet
set nowrap                     " Wrapping is ugly

set history=500                " Allows for searching commands and searches
set ruler                      " show the cursor position all the time
set showcmd                    " display incomplete commands

set noswapfile                 " Thats right, its annoying having to clean these up

set viewdir=$VIMPATH/view

set clipboard=unnamed,unnamedplus " works both with OS X and ssh X11
set hidden                     " Buffers can go in the background

" OmniComplete
set completeopt=longest,menuone " Vim's popup menu doesn't select the first
                                " completion item, but rather just inserts the
                                " longest common text of all matches
                                "
set tags+=external.tags

set lazyredraw
set ttyfast

let loaded_matchparen=1 " Don't load matchit.vim (paren/bracket matching)
set noshowmatch         " Don't match parentheses/brackets
set nocursorcolumn      " Don't paint cursor column
set scrolljump=8        " Scroll 8 lines at a time at bottom/top
let html_no_rendering=1 " Don't render italic, bold, links in HTML

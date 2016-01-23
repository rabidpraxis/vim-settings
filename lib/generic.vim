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

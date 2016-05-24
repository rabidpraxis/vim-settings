set number               " Show line numbers
set cursorline           " Always show cursor line
set novisualbell         " I don't mind beeping
set guicursor=a:blinkon0 " cursor setting

set cmdheight=2          " Two spaces for feedback down below

set wildmenu              " make tab completion for files/buffers act like bash
set wildmode=list:longest " show a list when pressing tab and complete
"
 " patterns to ignore during file/directory completion
set wildignore+=tmp/**,*/node_modules/**,target/**

set winwidth=80           " Ensure that the splits are always at least 80 wide

"===  Tab  ====================================================================
let s:tab_num = 2          " How many spaces will tab be worth?
let &softtabstop=s:tab_num
let &shiftwidth=s:tab_num
let &tabstop=s:tab_num
set expandtab              " use spaces
set smarttab               " figure correct spaces to inject per tab

"===  Custom colorscheme  =====================================================
colorscheme rp
set t_Co=256
"===  zsh ftw  ================================================================
set shell=zsh

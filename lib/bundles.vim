set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

"===  Tabular  ================================================================
Bundle 'https://github.com/godlygeek/tabular.git'

"===  Ruby and Rails  =========================================================
Bundle 'https://github.com/vim-ruby/vim-ruby.git'
Bundle 'https://github.com/tpope/vim-rails.git'

"===  Fugitive  ===============================================================
Bundle 'https://github.com/tpope/vim-fugitive.git'

"===  Surround  ===============================================================
Bundle 'https://github.com/tpope/vim-surround.git'

"===  tComment  ===============================================================
Bundle 'tComment'

"===  Syntastic  ==============================================================
Bundle 'https://github.com/scrooloose/syntastic.git'

"===  Ragtag  =================================================================
Bundle 'https://github.com/tpope/vim-ragtag.git'

"===  UltiSnips  ==============================================================
Bundle 'https://github.com/SirVer/ultisnips.git'
set runtimepath+=~/.vim/bundle/UltiSnips 
" Remove mapping to c-m before setting trigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" My custom ultisnips bundle area (outside of the root)
let g:UltiSnipsSnippetsDir="~/.vim/bundle/rabidpraxis/UltiSnips"

"===  Command T  ==============================================================
Bundle 'git://git.wincent.com/command-t.git'
let g:CommandTMatchWindowAtTop=1 " show window at top

"===  NERDTree  ===============================================================
Bundle 'https://github.com/scrooloose/nerdtree.git'
map ,v :NERDTreeToggle<cr>

"===  ZenCoding  ==============================================================
Bundle 'https://github.com/mattn/zencoding-vim.git'
let g:user_zen_settings = {
\  'php' : {
\    'extends' : 'html',
\    'filters' : 'c',
\  },
\  'xml' : {
\    'extends' : 'html',
\  },
\  'haml' : {
\    'filters' : 'haml', 
\  },
\  'sass' : {
\    'filters' : 'fc',
\  },
\}

let g:user_zen_expandabbr_key = '<c-e>'
let g:user_zen_next_key = '<leader><tab>'
let g:user_zen_prev_key = '<c-g>'

" Remap zen coding
imap <C-z> <C-Y>, 

"===  Ack  ====================================================================
Bundle 'https://github.com/mileszs/ack.vim.git'
nnoremap ,a :Ack -a 

"===  Color Picker  ===========================================================
Bundle 'PickAColor.vim'
map ,ch :PickHEX<cr>
map ,cr :PickRGB<cr>
map ,cl :PickHSL<cr>


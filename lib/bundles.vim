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
" Every time you open a git object using fugitive it creates a new buffer.
" This means that your buffer listing can quickly become swamped with
" fugitive buffers. This prevents this from becomming an issue:

autocmd BufReadPost fugitive://* set bufhidden=delete

"===  Surround  ===============================================================
Bundle 'https://github.com/tpope/vim-surround.git'

"===  tComment  ===============================================================
Bundle 'tComment'

"===  Syntastic  ==============================================================
Bundle 'https://github.com/scrooloose/syntastic.git'

"===  Ragtag  =================================================================
Bundle 'https://github.com/tpope/vim-ragtag.git'

"===  Clojure  ================================================================
Bundle 'https://github.com/tpope/vim-fireplace.git'
Bundle 'https://github.com/tpope/vim-classpath.git'
Bundle 'https://github.com/guns/vim-clojure-static'
Bundle 'https://github.com/kien/rainbow_parentheses.vim'
" I use dark mode, so I need to limit the amount of dark colors
let g:rbpt_colorpairs=[
	\ ['brown',       'RoyalBlue3'],
	\ ['Darkblue',    'SeaGreen3'],
	\ ['darkgray',    'DarkOrchid3'],
	\ ['darkgreen',   'firebrick3'],
	\ ['darkcyan',    'RoyalBlue3'],
	\ ['darkred',     'SeaGreen3'],
	\ ['darkmagenta', 'DarkOrchid3'],
	\ ['brown',       'firebrick3'],
	\ ['gray',        'RoyalBlue3'],
	\ ['darkmagenta', 'DarkOrchid3'],
	\ ['Darkblue',    'firebrick3'],
	\ ['darkgreen',   'RoyalBlue3'],
	\ ['darkcyan',    'SeaGreen3'],
	\ ['darkred',     'DarkOrchid3'],
	\ ['red',         'firebrick3'],
	\ ]

Bundle 'https://github.com/vim-scripts/paredit.vim.git'
" This feature gets old, DISABLED!
let g:paredit_electric_return=0

"===  UltiSnips  ==============================================================
Bundle 'https://github.com/SirVer/ultisnips.git'
Bundle "https://github.com/kchmck/vim-coffee-script.git"
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
let NERDTreeShowHidden=1

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
nnoremap ,a :Ack

"===  Color Picker  ===========================================================
Bundle 'PickAColor.vim'
map ,ch :PickHEX<cr>
map ,cr :PickRGB<cr>
map ,cl :PickHSL<cr>

"===  Airline  ================================================================
Bundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

set laststatus=2 "always show the statusline

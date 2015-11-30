" set nocompatible
" filetype off

call vundle#begin($VIMPATH . '/bundle/')

Plugin 'gmarik/vundle'
Plugin 'file://' . $VIMPATH . '/bundle/rabidpraxis', {'pinned': 1}

"===  Tabular  ================================================================
Plugin 'godlygeek/tabular'

"===  Ruby and Rails  =========================================================
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

"===  Fugitive  ===============================================================
Plugin 'tpope/vim-fugitive'
" Every time you open a git object using fugitive it creates a new buffer.
" This means that your buffer listing can quickly become swamped with
" fugitive buffers. This prevents this from becomming an issue:

autocmd BufReadPost fugitive://* set bufhidden=delete

"===  Surround  ===============================================================
Plugin 'tpope/vim-surround'

"===  tComment  ===============================================================
Plugin 'tComment'

"===  Ragtag  =================================================================
Plugin 'tpope/vim-ragtag'

"===  TPopes  =================================================================
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-dispatch'

"===  C & Debugging  ==========================================================
Plugin 'vim-scripts/Conque-GDB'
let g:ConqueGdb_Disable = 1
" au BufRead,BufNewFile *.c let g:ConqueGdb_Disable = 0

"===  Clojure  ================================================================
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'guns/vim-clojure-static'
" Plugin 'guns/vim-clojure-highlight'
Plugin 'tpope/vim-leiningen'
Plugin 'kien/rainbow_parentheses.vim'
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

Plugin 'vim-scripts/paredit.vim'
" This feature gets old, DISABLED!
let g:paredit_electric_return=0
" Lets try smartjump
let g:paredit_smartjump=1
" We have a nice machine, lets bump this up
let g:paredit_matchlines=1000

"===  UltiSnips  ==============================================================
Plugin 'SirVer/ultisnips'
Plugin 'kchmck/vim-coffee-script'

set runtimepath+=$VIMPATH/bundle/UltiSnips
" Remove mapping to c-m before setting trigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" My custom ultisnips bundle area (outside of the root)
let g:UltiSnipsSnippetsDir=$VIMPATH . "/bundle/rabidpraxis/UltiSnips"

Plugin 'kien/ctrlp.vim'

"===  NERDTree  ===============================================================
Plugin 'scrooloose/nerdtree'
map ,v :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

"===  ZenCoding  ==============================================================
Plugin 'mattn/emmet-vim'
let g:user_emmet_leader_key='<c-e>'

"===  Ack  ====================================================================
Plugin 'rking/ag.vim'
nnoremap ,a :Ag

"===  Color Picker  ===========================================================
Plugin 'PickAColor.vim'
map ,ch :PickHEX<cr>
map ,cr :PickRGB<cr>
map ,cl :PickHSL<cr>

Plugin 'itchyny/lightline.vim'

set laststatus=2 "always show the statusline

"===  vim-slime  ==============================================================
Plugin 'jpalardy/vim-slime'

let g:slime_target = "tmux"
" return cursor back to original point
nmap <c-c><c-c> mb<Plug>SlimeParagraphSend`b

"===  SQL  ====================================================================
Plugin 'vim-scripts/dbext.vim'
Plugin 'exu/pgsql.vim'

let g:sql_type_default = 'postgresql'
let g:dbext_default_profile_PG = 'type=PGSQL:user=kevin'
let g:sql_type_default = 'pgsql'

"===  Markdown  ===============================================================
Plugin 'plasticboy/vim-markdown'

"===  Work  ===================================================================
Plugin 'mtscout6/vim-cjsx'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/yajs.vim'

"===  JSX  ====================================================================
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

Plugin 'digitaltoad/vim-jade'
Plugin 'heavenshell/vim-jsdoc'
let g:jsdoc_enable_es6 = 1

call vundle#end()

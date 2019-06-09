call plug#begin($VIMPATH . '/plugged/')

" Polyglot
Plug 'sheerun/vim-polyglot'

" Ale
" Plug 'w0rp/ale'
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0

" Tagbar
Plug 'majutsushi/tagbar'

" Tabular
Plug 'godlygeek/tabular'

" Ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Nerdtree
Plug 'scrooloose/nerdtree'
map ,v :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

" Emmet
Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key='<c-e>'

" Ag
Plug 'mileszs/ack.vim'
nnoremap ,a :Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
map <C-p> :Files<cr>
map <C-;> :Buffers<cr>

" TPopes
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-ragtag'

" JsDoc
Plug 'heavenshell/vim-jsdoc'

" Testing
Plug 'janko-m/vim-test'
Plug 'jgdavey/tslime.vim'

nmap <silent> ,fn :TestNearest<CR>
nmap <silent> ,ft :TestFile<CR>
nmap <silent> ,fa :TestSuite<CR>
nmap <silent> ,fl :TestLast<CR>
nmap <silent> ,fg :TestVisit<CR>

let g:test#strategy = 'tslime'
let g:test#preserve_screen = 0

" let test#ruby#rspec#executable = 'bundle exec spring rspec'
let g:test#ruby#rspec#options = {
  \ 'file':    '--format documentation',
  \ 'suite':   '--tag ~slow',
\}

let test#javascript#mocha#options = '--require babel-register --require babel-polyfill'

" Rubies
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

" Clojure
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
" Plug 'tpope/vim-leiningen'
Plug 'kien/rainbow_parentheses.vim'

if has("autocmd")
  au FileType clojure RainbowParenthesesActivate
  au Syntax clojure RainbowParenthesesLoadRound
  au Syntax clojure RainbowParenthesesLoadSquare
  au Syntax clojure RainbowParenthesesLoadBraces
  au BufNewFile,BufRead *.cljc set filetype=clojure
endif

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

Plug 'vim-scripts/paredit.vim'
" This feature gets old, DISABLED!
let g:paredit_electric_return=0
" Lets try smartjump
let g:paredit_smartjump=1
" We have a nice machine, lets bump this up
let g:paredit_matchlines=1000

Plug 'jparise/vim-graphql'

" Go
Plug 'fatih/vim-go'
map ,gi :GoImports<cr>

" Git
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'
Plug 'airblade/vim-gitgutter'

" tComment
Plug 'tomtom/tcomment_vim'

" Lightline
Plug 'itchyny/lightline.vim'

Plug 'KabbAmine/vCoolor.vim'
let g:vcoolor_map = ',ch'
let g:vcool_ins_rgb_map = ',cr'		" Insert rgb color.
let g:vcool_ins_hsl_map = ',cl'		" Insert hsl color.
let g:vcool_ins_rgba_map = ',cra'		" Insert rgba color.

let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'fugitive', 'filename' ] ]
  \ },
  \ 'component_function': {
  \   'filename': 'LightLineFilename',
  \   'fugitive': 'LightLineFugitive'
  \ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
\ }

function! LightLineFilename()
  return expand('%')
endfunction

function! LightLineFugitive()
  return fugitive#head()
endfunction

set laststatus=2 "always show the statusline


call plug#end()

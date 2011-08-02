"
" Pairtools
"
let g:pairtools_javascript_pairclamp = 1

let g:pairtools_python_autoclose  = 1
let g:pairtools_python_closepairs = '{:},(:),[:],":"'

"
" CommandT
"
let g:CommandTMatchWindowAtTop=1 " show window at top

"
" ZenCoding
"
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
\    'extends' : 'css',
\    'filters' : 'sass',
\  },
\}

let g:user_zen_expandabbr_key = '<c-e>'
let g:user_zen_next_key = '<leader><tab>'
let g:user_zen_prev_key = '<c-g>'

"
" Ack
"
nnoremap <Leader>a :Ack 

"
" UltiSnips
"
set runtimepath+=~/.vim/bundle/UltiSnips 
" Remove mapping to c-m before setting trigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" My custom ultisnips bundle area (outside of the root)
let g:UltiSnipsSnippetsDir="~/.vim/bundle/rabidpraxis/UltiSnips"

" Highlight hex numbers as colors when this is toggled
if exists('*HexHighlight()')
  nmap <leader>h :call HexHighlight()<cr>
endif

" Add RebuildTagsFile function/command
function! s:RebuildTagsFile()
  !ctags -R --exclude=coverage --exclude=files --exclude=public --exclude=log --exclude=tmp --exclude=vendor *
endfunction
command! -nargs=0 RebuildTagsFile call s:RebuildTagsFile()

" Insert color mappings
map <Leader>ch :PickHEX<cr>
map <Leader>cr :PickRGB<cr>
map <Leader>cl :PickHSL<cr>

" NERDTree toggle
map <Leader>v :NERDTreeToggle<cr>

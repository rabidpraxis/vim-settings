let g:pairtools_javascript_pairclamp = 1

let g:pairtools_python_autoclose  = 1
let g:pairtools_python_closepairs = '{:},(:),[:],":"'

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

" Ack mapping
nnoremap <Leader>a :Ack 

" Ultisnips 
set runtimepath+=~/.vim/bundle/UltiSnips 
" Remove mapping to c-m before setting trigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Taglist
let Tlist_Enable_Fold_Column = 0
let Tlist_Show_One_File = 1
let Tlist_Compact_Format = 0
" nnoremap <Leader>b :TlistToggle<cr>

let g:delimitMate_expand_cr = 1

" Auto Documentation
if has("autocmd")
  au FileType php nnoremap <Leader>d :call PhpDocSingle()<cr>
endif

" Highlight hex numbers as colors when this is toggled
if exists('*HexHighlight()')
  nmap <leader>h :call HexHighlight()<cr>
endif

" Add RebuildTagsFile function/command
function! s:RebuildTagsFile()
  !ctags -R --exclude=coverage --exclude=files --exclude=public --exclude=log --exclude=tmp --exclude=vendor *
endfunction
command! -nargs=0 RebuildTagsFile call s:RebuildTagsFile()

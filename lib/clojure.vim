" au VimEnter *.clj RainbowParenthesesToggle
" au Syntax *.clj RainbowParenthesesLoadRound
" au Syntax *.clj RainbowParenthesesLoadSquare
" au Syntax *.clj RainbowParenthesesLoadBraces

" ---- Mappings
" Call Eval on outermost form
nmap <leader>ce :Eval<CR>

" let g:clojure_fuzzy_indent_patterns = ['defclass', 'with-pre-wrap', 'with-post-wrap', 'dom{.*}$', 'deftask', 'go-loop', 'wired{.*}', 'taps']
let g:clojure_maxlines = 150

" Align strings the pretty way
let g:clojure_align_multiline_strings = 1

" Why not?!?
let g:clojure_fold = 1

au BufNewFile,BufRead *.boot set filetype=clojure

let g:clojure_special_indent_words = 'render,deftype,defrecord,reify,proxy,extend-type,extend-protocol,letfn'
let g:clojure_fuzzy_indent = 1
let g:clojure_fuzzy_indent_patterns = [
      \ '^do',
      \ '^with',
      \ '^def',
      \ '^let',
      \ '^select',
      \ '^insert',
      \ '^create',
      \ '^update',
      \ '^delete',
      \ '^before',
      \ '^before-all',
      \ '^after',
      \ '^after-all',
      \ '^around',
      \ '^describe',
      \ '^it',
      \ '^ANY',
      \ '^GET',
      \ '^POST',
      \ '^PUT',
      \ '^PATCH',
      \ '^DELETE',
      \ '^OPTIONS',
      \ '^table',
      \ '^drop',
      \ '^fact',
      \ '^->',
      \ '^->>',
      \ '^dom\/{.*}',
      \ '^did',
      \ '^will',
      \ '^render',
      \ '^with-pre-wrap',
      \ '^with-post-wrap',
      \ '^deftask',
      \ '^go-loop',
      \ '^wired{.*}',
      \ '^taps',
      \ '^defclass',
      \ '^defui',
      \ '^query',
      \ '^ident'
      \ ]

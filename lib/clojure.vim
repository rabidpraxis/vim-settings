let g:clojure_special_indent_words = 'render'
let g:clojure_fuzzy_indent_patterns = ['^render', 'defclass', 'with-pre-wrap', 'with-post-wrap', 'dom{.*}', 'deftask']

" Why not?!?
let g:clojure_fold = 1
au BufNewFile,BufRead *.boot set filetype=clojure

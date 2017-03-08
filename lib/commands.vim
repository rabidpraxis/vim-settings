"==============================================================================
" rabidpraxis VIm AutoCommands Module
"==============================================================================

if has("autocmd")
  "---  Text  -----------------------------------------------------------------
  au FileType text setlocal textwidth=80

  "---  Ruby  -----------------------------------------------------------------
  au FileType ruby,eruby set omnifunc=rubycomplete#Complete
  au FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  au FileType ruby,eruby let g:rubycomplete_rails = 1
  au FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  " Using old regex engine for loading ruby files. Much better performance
  au FileType ruby,eruby set re=1

  "---  Clojure  --------------------------------------------------------------
  au FileType clojure RainbowParenthesesActivate
  au Syntax clojure RainbowParenthesesLoadRound
  au Syntax clojure RainbowParenthesesLoadSquare
  au Syntax clojure RainbowParenthesesLoadBraces
  au BufNewFile,BufRead *.cljc set filetype=clojure


  "---  Markdown  -------------------------------------------------------------
  au FileType markdown setlocal spell textwidth=80 linebreak

  "---  Save Folding, Window, and Cursor upon exit  ---------------------------
  au BufWinLeave ?* mkview
  au BufWinEnter ?* silent loadview


  if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
        \ | wincmd p | diffthis
  endif
endif

augroup vimrc
  autocmd QuickFixCmdPost * botright copen 8
augroup END

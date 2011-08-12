"==============================================================================
" rabidpraxis VIm AutoCommands Module
"==============================================================================

if has("autocmd")
  
  "----------------------------------------------------------------------------
  " File Specific Startup
  "----------------------------------------------------------------------------
  
  "---  Text  -----------------------------------------------------------------
  au FileType text setlocal textwidth=80

  "---  Ruby  -----------------------------------------------------------------
  au FileType ruby,eruby set omnifunc=rubycomplete#Complete
  au FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  au FileType ruby,eruby let g:rubycomplete_rails = 1
  au FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

  "---  Markdown  -------------------------------------------------------------
  au FileType markdown setlocal spell textwidth=80 linebreak 

  " Source the vimrc file after saving it
  au! bufwritepost vimrc,$HOME/.vim/lib/*.vim source $MYVIMRC
  
  "---  Reload UltiSnips  -----------------------------------------------------
  au! bufwritepost *.snippets UltiSnipsReset
  
  "---  Save Folding, Window, and Cursor upon exit  ---------------------------
  au BufWinLeave ?* mkview
  au BufWinEnter ?* silent loadview

  " Buffer diff
  if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
        \ | wincmd p | diffthis
  endif
endif

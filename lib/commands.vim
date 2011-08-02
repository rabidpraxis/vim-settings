if has("autocmd")
  "
  " File Specific Startup
  "

  " Text
  autocmd FileType text setlocal textwidth=80

  " Ruby
  au FileType ruby,eruby set omnifunc=rubycomplete#Complete
  au FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  au FileType ruby,eruby let g:rubycomplete_rails = 1
  au FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

  " Markdown
  au FileType markdown setlocal spell textwidth=80 linebreak 

  " Source the vimrc file after saving it
  au! bufwritepost vimrc,$HOME/.vim/lib/*.vim source $MYVIMRC

  au! bufwritepost *.snippets UltiSnipsReset

  " Buffer diff
  if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
        \ | wincmd p | diffthis
  endif
endif

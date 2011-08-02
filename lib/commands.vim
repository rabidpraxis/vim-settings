if has("autocmd")
  " For all text files set 'textwidth' to 80 characters.
  autocmd FileType text setlocal textwidth=80

  " Save folding when leaving file and reload when entering
  " au BufWinLeave ?* mkview
  " au BufWinEnter ?* silent loadview
  " au BufNewFile,BufRead *.html map <leader>ft Vatzf

  "ruby
  au FileType ruby,eruby set omnifunc=rubycomplete#Complete
  au FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  au FileType ruby,eruby let g:rubycomplete_rails = 1
  au FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

  au FileType markdown setlocal spell textwidth=80 linebreak 
  " Refresh browsers
  " au! BufWritePost *.html,*.scss,*.php :silent !python /Users/rabidPraxis/Dropbox/rpLib/Scripts/Textmate\ Bundles/rp-web-tools-tmbundle/bin/refresh_browsers.py  

  " Restore cursor positioning
  au BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  " Source the vimrc file after saving it
  au! bufwritepost vimrc,$HOME/.vim/lib/*.vim source $MYVIMRC

  au bufwritepost *.snippets UltiSnipsReset

  " Buffer diff
  if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
        \ | wincmd p | diffthis
  endif
endif

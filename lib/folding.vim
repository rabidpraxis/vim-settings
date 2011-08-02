" Don't allow initial folding
set foldlevelstart=100 

" Set spacebar to fold toggle
nnoremap <Space> za<cr>
vnoremap <Space> za<cr>

function! MyFoldText()
  let line = getline(v:foldstart)

  let line = substitute(line, '{{{[0-9]', '', 'g')
  let nucolwidth = &fdc + &number * &numberwidth
  let windowwidth = winwidth(0) - nucolwidth - 3
  let foldedlinecount = v:foldend - v:foldstart

  " expand tabs into spaces
  let onetab = strpart('          ', 0, &tabstop)
  let line = substitute(line, '\t', onetab, 'g')

  let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
  let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - 4
  return line . '   ' . repeat(" ",fillcharcount) . foldedlinecount . '   ' . ' '
endfunction
    
set foldtext=MyFoldText()

" Save folding when leaving file and reload when entering
if has("autocmd")
  au BufWinLeave ?* mkview
  au BufWinEnter ?* silent loadview
endif

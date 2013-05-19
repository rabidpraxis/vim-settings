" Add this to status line when you want to do some syntax debugging
" set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}

" set laststatus=2
" set statusline=\                           " just a space
" set statusline+=%f\                        " file name
" set statusline+=[                          " bracket start
" set statusline+=%{strlen(&ft)?&ft:'none'}  " filetype
" set statusline+=]\                         " bracket end
" set statusline+=%h%1*%m%r%w%0*             " flag
" set statusline+=%=                         " right align
" set statusline+=%-14.(%l,%c%V%)\ %<%P      " offset

"===  Stolen from shawncplus  =================================================
" https://github.com/shawncplus/dotfiles/blob/master/.vimrc#L38

" function! s:StatusLine(new_stl, type, current)
"   let current = (a:current ? "" : "NC")
"   let type = a:type
"   let new_stl = a:new_stl
"
"   " Prepare current buffer specific text
"   " Syntax: <CUR> ... </CUR>
"   let new_stl = substitute(new_stl, '<CUR>\(.\{-,}\)</CUR>', (a:current ? '\1' : ''), 'g')
"
"   " Prepare statusline colors
"   " Syntax: #[ ... ]
"   let new_stl = substitute(new_stl, '#\[\(\w\+\)\]', '%#StatusLine'.type.'\1'.current.'#', 'g')
"
"   if &l:statusline ==# new_stl
"     " Statusline already set, nothing to do
"     return
"   endif
"
"   if empty(&l:statusline)
"     " No statusline is set, use my_stl
"     let &l:statusline = new_stl
"   else
"     " Check if a custom statusline is set
"     let plain_stl = substitute(&l:statusline, '%#StatusLine\w\+#', '', 'g')
"
"     if &l:statusline ==# plain_stl
"       " A custom statusline is set, don't modify
"       return
"     endif
"
"     " No custom statusline is set, use my_stl
"     let &l:statusline = new_stl
"   endif
" endfunction
"
" function! s:StatusLineColors(colors)
"   for type in keys(a:colors)
"     for name in keys(a:colors[type])
"       let colors = {'c': a:colors[type][name][0], 'nc': a:colors[type][name][1]}
"       let type = (type == 'NONE' ? '' : type)
"       let name = (name == 'NONE' ? '' : name)
"
"       if exists("colors['c'][0]")
"         exec 'hi StatusLine'.type.name.' ctermbg='.colors['c'][0].' ctermfg='.colors['c'][1].' cterm='.colors['c'][2]
"       endif
"
"       if exists("colors['nc'][0]")
"         exec 'hi StatusLine'.type.name.'NC ctermbg='.colors['nc'][0].' ctermfg='.colors['nc'][1].' cterm='.colors['nc'][2]
"       endif
"     endfor
"   endfor
" endfunction
"
" let g:default_stl = ""
" let g:default_stl .= "<CUR>#[Mode] %{&paste ? 'PASTE ' : ''}%{substitute(mode(), '', '', 'g')} #[ModeS]</CUR>"
" let g:default_stl .= "#[ModFlag]%{&readonly ? 'RO ' : ''}" " RO flag
" let g:default_stl .= " #[FileName]%t " " File name
" let g:default_stl .= "#[ModFlag]%(%M %)" " Modified flag
" let g:default_stl .= "#[BufFlag]%(%H%W %)" " HLP,PRV flags
" let g:default_stl .= "#[FileNameS] " " Separator
" let g:default_stl .= "#[FunctionName] " " Padding/HL group
" let g:default_stl .= "%<" " Truncate right
" let g:default_stl .= "%= " " Right align
" let g:default_stl .= "<CUR>#[FileFormat]%{&fileformat} </CUR>" " File format
" let g:default_stl .= "<CUR>#[FileEncoding]%{(&fenc == '' ? &enc : &fenc)} </CUR>" " File encoding
" let g:default_stl .= "<CUR>#[FileType]%{strlen(&ft) ? &ft : 'n/a'} </CUR>" " File type
" let g:default_stl .= "#[LinePercentS] #[LinePercent] %p%% " " Line/column/virtual column, Line percentage
" let g:default_stl .= "#[LineNumberS] #[LineNumber] %l#[LineColumn]:%c%V " " Line/column/virtual column, Line percentage
" let g:default_stl .= "%{exists('g:synid') && g:synid ? ' '.synIDattr(synID(line('.'), col('.'), 1), 'name').' ' : ''}" " Current syntax group
"
" let s:statuscolors = {
"       \ 'NONE': {
"         \ 'NONE' : [[ 236, 231, 'bold'], [ 232, 244, 'none']]
"       \ }
"       \ , 'Normal': {
"         \ 'Mode' : [[ 214, 235, 'bold'], [ ]]
"         \ , 'ModeS' : [[ 214, 240, 'bold'], [ ]]
"         \ , 'Branch' : [[ 240, 250, 'none'], [ 234, 239, 'none']]
"         \ , 'BranchS' : [[ 240, 246, 'none'], [ 234, 239, 'none']]
"         \ , 'FileName' : [[ 240, 231, 'bold'], [ 234, 244, 'none']]
"         \ , 'FileNameS' : [[ 240, 236, 'bold'], [ 234, 232, 'none']]
"         \ , 'Error' : [[ 240, 202, 'bold'], [ 234, 239, 'none']]
"         \ , 'ModFlag' : [[ 240, 196, 'bold'], [ 234, 239, 'none']]
"         \ , 'BufFlag' : [[ 240, 250, 'none'], [ 234, 239, 'none']]
"         \ , 'FunctionName' : [[ 236, 247, 'none'], [ 232, 239, 'none']]
"         \ , 'FileFormat' : [[ 236, 244, 'none'], [ 232, 239, 'none']]
"         \ , 'FileEncoding' : [[ 236, 244, 'none'], [ 232, 239, 'none']]
"         \ , 'Separator' : [[ 236, 242, 'none'], [ 232, 239, 'none']]
"         \ , 'FileType' : [[ 236, 248, 'none'], [ 232, 239, 'none']]
"         \ , 'LinePercentS' : [[ 240, 236, 'none'], [ 234, 232, 'none']]
"         \ , 'LinePercent' : [[ 240, 250, 'none'], [ 234, 239, 'none']]
"         \ , 'LineNumberS' : [[ 252, 240, 'bold'], [ 234, 234, 'none']]
"         \ , 'LineNumber' : [[ 252, 236, 'bold'], [ 234, 244, 'none']]
"         \ , 'LineColumn' : [[ 252, 240, 'none'], [ 234, 239, 'none']]
"       \ }
"       \ , 'Insert': {
"         \ 'Mode' : [[ 153, 23, 'bold'], [ ]]
"         \ , 'ModeS' : [[ 153, 31, 'bold'], [ ]]
"         \ , 'Branch' : [[ 31, 117, 'none'], [ ]]
"         \ , 'BranchS' : [[ 31, 117, 'none'], [ ]]
"         \ , 'FileName' : [[ 31, 231, 'bold'], [ ]]
"         \ , 'FileNameS' : [[ 31, 24, 'bold'], [ ]]
"         \ , 'Error' : [[ 31, 202, 'bold'], [ ]]
"         \ , 'ModFlag' : [[ 31, 196, 'bold'], [ ]]
"         \ , 'BufFlag' : [[ 31, 75, 'none'], [ ]]
"         \ , 'FunctionName' : [[ 24, 117, 'none'], [ ]]
"         \ , 'FileFormat' : [[ 24, 75, 'none'], [ ]]
"         \ , 'FileEncoding' : [[ 24, 75, 'none'], [ ]]
"         \ , 'Separator' : [[ 24, 37, 'none'], [ ]]
"         \ , 'FileType' : [[ 24, 81, 'none'], [ ]]
"         \ , 'LinePercentS' : [[ 31, 24, 'none'], [ ]]
"         \ , 'LinePercent' : [[ 31, 117, 'none'], [ ]]
"         \ , 'LineNumberS' : [[ 117, 31, 'bold'], [ ]]
"         \ , 'LineNumber' : [[ 117, 23, 'bold'], [ ]]
"         \ , 'LineColumn' : [[ 117, 31, 'none'], [ ]]
"       \ }
"       \ }
"
" augroup StatusLineHighlight
"   autocmd!
"
"   let s:round_stl = 0
"
"   au ColorScheme * call <SID>StatusLineColors(s:statuscolors)
"   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter,CursorHold,BufWritePost,InsertLeave * call <SID>StatusLine((exists('b:stl') ? b:stl : g:default_stl), 'Normal', 1)
"   au BufLeave,BufWinLeave,WinLeave,CmdwinLeave * call <SID>StatusLine((exists('b:stl') ? b:stl : g:default_stl), 'Normal', 0)
"   au InsertEnter,CursorHoldI * call <SID>StatusLine((exists('b:stl') ? b:stl : g:default_stl), 'Insert', 1)
" augroup END

" Add this to status line when you want to do some syntax debugging
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}

set laststatus=2
set statusline=\                           " just a space
set statusline+=%f\                        " file name
set statusline+=[                          " bracket start
set statusline+=%{strlen(&ft)?&ft:'none'}  " filetype
set statusline+=]\                         " bracket end
set statusline+=%h%1*%m%r%w%0*             " flag
set statusline+=%=                         " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P      " offset

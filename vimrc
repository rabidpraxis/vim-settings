"==============================================================================
" rabidpraxis vimrc
"==============================================================================
set rtp=$VIMPATH,$VIMPATH/after,$VIMRUNTIME

set nocompatible                " No vi compatability
filetype off
" Pathogen Setup
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on       " Enable file type detection.
syntax on                       " Enable Syntax

"===  Source Lib Files  =======================================================
for scr in split(globpath($VIMPATH, 'lib/**'), '\n')
  exec "source " . scr
endfor

" vim:ft=vim fdm=marker

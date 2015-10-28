"==============================================================================
" rabidpraxis vimrc
"==============================================================================
set rtp=$VIMPATH,$VIMPATH/after,$VIMRUNTIME

set nocompatible                " No vi compatability
filetype off
" Pathogen Setup
call pathogen#infect()
call pathogen#helptags()

"===  Source Lib Files  =======================================================
for scr in split(globpath($VIMPATH, 'lib/**'), '\n')
  exec "source " . scr
endfor

filetype plugin indent on       " Enable file type detection.
syntax on                       " Enable Syntax

" vim:ft=vim fdm=marker

"==============================================================================
" rabidpraxis vimrc
"==============================================================================
set rtp=$VIMINIT,$VIMINIT/after,$VIMRUNTIME

set nocompatible                " No vi compatability
filetype off
" Pathogen Setup
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"===  Source Lib Files  =======================================================
for scr in split(globpath($VIMINIT, 'lib/**'), '\n')
  exec "source " . scr
endfor

filetype plugin indent on       " Enable file type detection.
syntax on                       " Enable Syntax

" vim:ft=vim fdm=marker

" Vim indent file
" Language:		Ruby
" Maintainer:		Nikolai Weibull <now at bitwi.se>
" Last Change:		2009 Dec 17
" URL:			http://vim-ruby.rubyforge.org
" Anon CVS:		See above site
" Release Coordinator:	Doug Kearns <dougkearns@gmail.com>
" [-- local settings (must come before aborting the script) --]
                    
setlocal indentexpr=HtmlIndenter()
setlocal indentkeys=o,O,*<Return>,<>>,{,}
setlocal nosmartindent

fun! HtmlIndenter()
  let line = getline(v:lnum)
  echo line
endfun

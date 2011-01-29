
" Vim color file
" Converted from Textmate theme rabidPraxis using Coloration v0.2.5 (http://github.com/sickill/coloration)

" TODO: More Textmate like, Especially with the javascript

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "rp"

hi Cursor       guifg=NONE    guibg=#ffffff ctermbg=15    gui=NONE
hi Visual       guifg=NONE    guibg=#3a424d ctermbg=238   gui=NONE
hi CursorLine   guifg=NONE    guibg=#1d222c ctermbg=235   cterm=NONE gui=NONE
hi CursorColumn guifg=NONE    guibg=#1d222c ctermbg=235   gui=NONE
hi LineNr       guifg=#888b90 ctermfg=245   guibg=#111621 gui=NONE
hi VertSplit    guifg=#3e424b ctermfg=238   guibg=#3e424b gui=NONE
hi MatchParen   guifg=#e29a63 ctermfg=173   guibg=NONE    gui=NONE
hi StatusLine   guifg=#ffffff ctermfg=15    guibg=#3e424b gui=bold
hi StatusLineNC guifg=#ffffff ctermfg=15    guibg=#3e424b gui=NONE
hi Pmenu        guifg=#89bdff ctermfg=111   guibg=NONE    gui=NONE
hi PmenuSel     guifg=NONE    guibg=#3a424d ctermbg=238   gui=NONE
hi IncSearch    guifg=NONE    guibg=#203b61 ctermbg=237   gui=NONE
hi Search       guifg=NONE    guibg=#203b61 ctermbg=237   gui=NONE
hi Directory    guifg=#3387cc ctermfg=68    guibg=NONE    gui=NONE
hi Folded       guifg=#777c86 ctermfg=8     guibg=#111621 gui=NONE

hi Normal       guifg=#ffffff ctermfg=15  guibg=#111621 gui=NONE
hi Boolean      guifg=#3387cc ctermfg=68  guibg=NONE    gui=NONE
hi Character    guifg=#3387cc ctermfg=68  guibg=NONE    gui=NONE
hi Comment      guifg=#777c86 ctermfg=8   guibg=NONE    gui=italic
hi Conditional  guifg=#e29a63 ctermfg=173 guibg=NONE    gui=NONE
hi Constant     guifg=#3387cc ctermfg=68  guibg=NONE    gui=NONE
hi Define       guifg=#e29a63 ctermfg=173 guibg=NONE    gui=NONE
hi ErrorMsg     guifg=NONE    guibg=NONE  gui=NONE
hi WarningMsg   guifg=NONE    guibg=NONE  gui=NONE
hi Float        guifg=#3387cc ctermfg=68  guibg=NONE    gui=NONE
hi Function     guifg=#89bdff ctermfg=111 guibg=NONE    gui=NONE
hi Identifier   guifg=#99cf50 ctermfg=113 guibg=NONE    gui=NONE
hi Keyword      guifg=#e29a63 ctermfg=173 guibg=NONE    gui=NONE
hi Label        guifg=#65b042 ctermfg=71  guibg=NONE    gui=NONE
hi NonText      guifg=#3c4553 ctermfg=238 guibg=#1d222c gui=NONE
hi Number       guifg=#3387cc ctermfg=68  guibg=NONE    gui=NONE
hi Operator     guifg=#e29a63 ctermfg=173 guibg=NONE    gui=NONE
hi PreProc      guifg=#e29a63 ctermfg=173 guibg=NONE    gui=NONE
hi Special      guifg=#ffffff ctermfg=15  guibg=NONE    gui=NONE
hi SpecialKey   guifg=#3c4553 ctermfg=238 guibg=#1d222c gui=NONE
hi Statement    guifg=#e29a63 ctermfg=173 guibg=NONE    gui=NONE
hi StorageClass guifg=#99cf50 ctermfg=113 guibg=NONE    gui=NONE
hi String       guifg=#65b042 ctermfg=71  guibg=NONE    gui=NONE
hi Tag          guifg=#89bdff ctermfg=111 guibg=NONE    gui=NONE
hi Title        guifg=#ffffff ctermfg=15  guibg=NONE    gui=bold
hi Todo         guifg=#777c86 ctermfg=8   guibg=NONE    gui=inverse,bold,italic
hi Type         guifg=#89bdff ctermfg=111 guibg=NONE    gui=NONE
hi Underlined   guifg=NONE    guibg=NONE  gui=underline
hi helpStar     guifg=#afe599

" Ruby Specific
hi rubyClass                    guifg=#e29a63 ctermfg=173 guibg=NONE gui=NONE
hi rubyFunction                 guifg=#89bdff ctermfg=111 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter   guifg=NONE    guibg=NONE  gui=NONE
hi rubySymbol                   guifg=#3387cc ctermfg=68  guibg=NONE gui=NONE
hi rubyConstant                 guifg=#9b859d ctermfg=246 guibg=NONE gui=underline 
hi rubyStringDelimiter          guifg=#65b042 ctermfg=71  guibg=NONE gui=NONE
hi rubyBlockParameter           guifg=#3e87e3 ctermfg=68  guibg=NONE gui=NONE
hi rubyInstanceVariable         guifg=#3e87e3 ctermfg=68  guibg=NONE gui=NONE
hi rubyInclude                  guifg=#e29a63 ctermfg=173 guibg=NONE gui=NONE
hi rubyGlobalVariable           guifg=#3e87e3 ctermfg=68  guibg=NONE gui=NONE
hi rubyRegexp                   guifg=#e9c062 ctermfg=179 guibg=NONE gui=NONE
hi rubyRegexpDelimiter          guifg=#e9c062 ctermfg=179 guibg=NONE gui=NONE
hi rubyEscape                   guifg=#3387cc ctermfg=68  guibg=NONE gui=NONE
hi rubyControl                  guifg=#e29a63 ctermfg=173 guibg=NONE gui=NONE
hi rubyClassVariable            guifg=#3e87e3 ctermfg=68  guibg=NONE gui=NONE
hi rubyOperator                 guifg=#e29a63 ctermfg=173 guibg=NONE gui=NONE
hi rubyException                guifg=#e29a63 ctermfg=173 guibg=NONE gui=NONE
hi rubyPseudoVariable           guifg=#3e87e3 ctermfg=68  guibg=NONE gui=NONE
hi rubyRailsUserClass           guifg=#9b859d ctermfg=246 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE
hi rubyRailsARMethod            guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE
hi rubyRailsRenderMethod        guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE
hi rubyRailsMethod              guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE
hi erubyDelimiter               guifg=NONE    guibg=NONE  gui=NONE
hi erubyComment                 guifg=#777c86 ctermfg=8   guibg=NONE gui=italic
hi erubyRailsMethod             guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE

" HTML Specific
hi htmlTag  guifg=#89bdff ctermfg=111 guibg=NONE gui=NONE
hi htmlEndTag  guifg=#89bdff ctermfg=111 guibg=NONE gui=NONE
hi htmlTagName  guifg=#89bdff ctermfg=111 guibg=NONE gui=NONE
hi htmlArg  guifg=#89bdff ctermfg=111 guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#3387cc ctermfg=68 guibg=NONE gui=NONE

" Javascript Specific
hi javaScriptFunction      guifg=#99cf50 ctermfg=113 guibg=NONE gui=NONE
hi javaScriptRailsFunction guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE
hi javaScriptBraces        guifg=NONE    guibg=NONE  gui=NONE
hi javaScriptLabel  guifg=#78adeb

" YAML Specific
hi yamlKey  guifg=#89bdff ctermfg=111 guibg=NONE gui=NONE
hi yamlAnchor  guifg=#3e87e3 ctermfg=68 guibg=NONE gui=NONE
hi yamlAlias  guifg=#3e87e3 ctermfg=68 guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=#65b042 ctermfg=71 guibg=NONE gui=NONE

" CSS Specific
hi cssURL  guifg=#3e87e3 ctermfg=68 guibg=NONE gui=NONE
hi cssFunctionName  guifg=#dad085 ctermfg=186 guibg=NONE gui=NONE
hi cssColor  guifg=#3387cc ctermfg=68 guibg=NONE gui=NONE
hi cssPseudoClassId  guifg=#89bdff ctermfg=111 guibg=NONE gui=NONE
hi cssClassName  guifg=#89bdff ctermfg=111 guibg=NONE gui=NONE
hi cssValueLength  guifg=#3387cc ctermfg=68 guibg=NONE gui=NONE
hi cssCommonAttr  guifg=#cf6a4c ctermfg=167 guibg=NONE gui=NONE
hi cssBraces  guifg=NONE guibg=NONE gui=NONE

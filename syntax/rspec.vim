" Should be in addition to ruby coloring

syn match rspecDescribe "^\s*describe"
syn match rspecIf       "^\s*it\>"

hi link rspecDescribe rspecDefine
hi link rspecIf       rspecDefine

hi link rspecDefine   Define

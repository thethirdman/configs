if exists("b:current_syntax")
  finish
endif

syn match kw '^\s*\[[a-zA-Z1-9_]\+\]'
syn match ppl '@\S\+'
syn match fast '!!!.\+'
syn match list '^\s\+-'

hi def link kw Statement
hi def link ppl Type
hi def link fast Constant
hi def link list PreProc

setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab

hi link jsFuncName PreProc
hi link jsFuncCall Type
hi link jsOperatorKeyword Statement
hi link jsGlobalNodeObjects Statement

let b:ale_fixers = ['eslint']

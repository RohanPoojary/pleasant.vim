
" Basic Python Colors

" Picked from new vim-python/python-syntax. This is required for Vim8.1
if !exists("g:pleasant_python_syntax") || g:pleasant_python_syntax == 0
    syn match pythonOperator        '\V=\|-\|+\|*\|/\|%\|&\||\|^\|~\|<\|>\|!=' 
    syn match pythonFunctionCall '\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\ze\%(\s*(\)'
    syn keyword pythonBooleans     False True None
end

hi! link pythonInclude Keyword
hi! link pythonBuiltin PreProc
hi! link pythonBooleans Constant
hi! link pythonFunctionCall Type
hi! link pythonExceptions Constant
hi! link pythonDecorator PreProc
hi! link pythonDecoratorName PreProc

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
    finish
endif
let b:did_indent = 1

setlocal cindent
setlocal cinoptions=L0,(s,Ws,J1,j1,m1
setlocal cinkeys=0{,0},!^F,o,O,0[,0],0(,0)
setlocal cinwords=if,else,loop,fun

setlocal nolisp
setlocal autoindent

setlocal indentkeys=0{,0},!^F,o,O,0[,0],0(,0)

setlocal indentexpr=XIndent(v:lnum)

if exists("*XIndent")
    finish
endif

function XIndent(lnum)
    return cindent(a:lnum)
endfunction

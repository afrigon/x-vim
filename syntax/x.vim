" Literals

" String
syntax region xString start=/"/ skip=/\\\\\|\\"/ end=/"/ oneline

" Char
syntax region xChar start=/'/ skip=/\\\\\|\\'/ end=/'/ oneline

" Integer
syntax match xInteger "\v<\d+>"

" Float
syntax match xFloat "\v<\d+\.\d+>"

" Bool
syntax keyword xBoolean t f

" Operators
syntax match xOperator "\v\&\&"
syntax match xOperator "\v\|\|"
syntax match xOperator "\v\+"
syntax match xOperator "\v-"
syntax match xOperator "\v\*"
syntax match xOperator "\v\/"
syntax match xOperator "\v\%"
syntax match xOperator "\v\:?\="
syntax match xOperator "\v\<"
syntax match xOperator "\v\>"

" Keywords
syntax keyword xKeywords
            \ fun
            \ self
            \ break
            \ continue
            \ return
            \ nil

syntax keyword xConditional
            \ if
            \ else

syntax keyword xRepeat
            \ loop

syntax keyword xImports
            \ import

" Comment patterns
syntax match xComment "\v\/\/.*$" oneline
" syntax region xComment start="/\*" end="\*/" fold

" Set highlights
highlight default link xComment Comment

highlight default link xString String
highlight default link xChar Character
highlight default link xInteger Number
highlight default link xFloat Float
highlight default link xBoolean Boolean
highlight default link xTypeDeclaration Delimiter

highlight default link xOperator Operator
highlight default link xKeywords Keyword
highlight default link xConditional Conditional
highlight default link xRepeat Repeat
highlight default link xImports Include

syn sync minlines=100

let b:current_syntax = "x"

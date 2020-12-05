" Highlight Class and Function names
syn match    jCustomParen    "(" 
syn match    jDot            "."
syn match    jBracket        "{" contains=cParen,cCppParen
syn match    jVariable       "[A-Za-z_]\+\w*"
syn match    jFunction       "[A-Za-z]\+\w*\s*(" contains=jCustomParen
syn match    jClass          "\s\+[A-Z]\+[A-Za-z0-9_]*" 
syn match    jConstant       "\s\+([A-Z]){2,}[A-Z0-9]*" 
syn match    jImport         "\s\+\w+"

hi link jImport      Typedef
hi link jFunction    Function
hi link jClass       Structure
hi link jVariable    Identifier
hi link jConstant    Identifier

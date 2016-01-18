" Vim color scheme based on http://github.com/jpo/vim-railscasts-theme
"
" Name:        mikekreeki-colors.vim
" Maintainer:  Michal Krejčí (@mikekreeki)
" License:     MIT
"
"   Colors
"   Brown        #BC9357
"   Dark Blue    #6D9CBD
"   Dark Green   #509E50
"   Dark Orange  #CC7733
"   Light Blue   #CFCFFF
"   Light Green  #A5C160
"   Tan          #FFC66D
"   Red          #DA4938

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mikekreeki"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI
hi ColorColumn  guibg=#1C1C1C
hi Cursor       guifg=#FFFFFF guibg=steelblue
hi CursorLine   guibg=#333435
hi CursorLineNr guifg=#444444 guibg=NONE
hi LineNr       guifg=#666666
hi Normal       guifg=#E6E1DC guibg=#000000
hi Search       guibg=#585858 guifg=NONE
hi SignColumn   guibg=#000000
hi VertSplit    guifg=#585858
hi Visual       guibg=#5A647E
hi Search       guifg=NONE    guibg=steelblue  gui=NONE
hi Folded       guifg=#F6F3E8 guibg=#444444  gui=NONE
hi Directory    guifg=#A5C160 gui=NONE
hi Title        guifg=#E6E1DC
hi WarningMsg   guifg=#DA4938

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Diff
hi DiffAdd    guifg=#E6E1DC guibg=#144212
hi DiffDelete guifg=#E6E1DC guibg=#660000
hi DiffText   gui=NONE      guifg=Red      guibg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code
hi Comment    guifg=#BC9357 guibg=NONE
hi Constant   guifg=#6D9CBD
hi Define     guifg=#CC7733 gui=NONE
hi Delimiter  guifg=#509E50
hi Error      guifg=#FFFFFF guibg=#DA4938
hi Function   guifg=#FFC66D gui=NONE
hi Identifier guifg=#CFCFFF gui=NONE
hi MatchParen guibg=NONE    guifg=green gui=bold
hi Operator   guifg=#CC7733 gui=NONE
hi Statement  guifg=#CC7733 gui=NONE
hi String     guifg=#A5C160
hi Type       guifg=NONE    gui=NONE
hi link Include Define
hi link Keyword Define
hi link Macro Define
hi link Number String
hi! link PreCondit Statement
hi! link PreProc Statement
hi! link Todo Comment

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-ruby
hi rubySymbol guifg=#6D9CBD gui=NONE
hi rubySymbolDelimiter guifg=#6D9CBD gui=NONE
hi rubyConstant guifg=#DA4938 gui=NONE
hi rubyOperator guifg=#CC7733 gui=NONE

hi! link rubyStringDelimiter String

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-rails
hi railsMethod guifg=#DA4938 gui=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Popup Menu
hi Pmenu      guifg=#F6F3E8 guibg=#444444 gui=NONE
hi PmenuSel   guifg=#000000 guibg=#A5C160 gui=NONE
hi PMenuSbar  guibg=#5A647E gui=NONE
hi PMenuThumb guibg=#AAAAAA gui=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yajs.vim (imports)
hi link javascriptImport Statement
hi link javascriptImportAs Statement
hi link javascriptExport Statement

" yajs.vim (class)
hi link javascriptClassName Normal
hi link javascriptClassSuperName Normal

" yajs.vim (static)
hi link javascriptClassStatic Statement
hi javascriptClassProperty guifg=#FFC66D

" yajs.vim (variables)
hi link javascriptVariable Statement
hi link javascriptIdentifier Statement
hi link javascriptIdentifierName Normal

" yajs.vim (objects)
hi link javascriptObjectLabel javascriptClassProperty
hi link javascriptObjectLabelColon javascriptClassProperty
hi link javascriptLabel javascriptClassProperty

" yajs.vim (operators)
hi link javascriptOpSymbol Statement
hi link javascriptLogicSymbol Statement
hi link javascriptOperator Statement

" yajs.vim (functions and properties)
hi link javascriptArrayMethod          Normal
hi link javascriptArrayStaticMethod    Normal
hi link javascriptArrowFunc            Statement
hi link javascriptBOMHistoryMethod     Normal
hi link javascriptBOMHistoryProp       Normal
hi link javascriptBOMLocationMethod    Normal
hi link javascriptBOMNavigatorProp     Normal
hi link javascriptCacheMethod          Normal
hi link javascriptConsoleMethod        Normal
hi link javascriptDateStaticMethod     Normal
hi link javascriptDOMDocMethod         Normal
hi link javascriptDOMDocProp           Normal
hi link javascriptDOMElemProp          Normal
hi link javascriptDOMEventMethod       Normal
hi link javascriptDOMEventProp         Normal
hi link javascriptDOMEventTargetMethod Normal
hi link javascriptDOMStorageMethod     Normal
hi link javascriptDOMStorageProp       Normal
hi link javascriptES6SetMethod         Normal
hi link javascriptFileReaderProp       Normal
hi link javascriptFunctionMethod       Normal
hi link javascriptHeadersMethod        Normal
hi link javascriptJSONStaticMethod     Normal
hi link javascriptMathStaticMethod     Normal
hi link javascriptObjectMethod         Normal
hi link javascriptObjectMethodName     Normal
hi link javascriptObjectStaticMethod   Normal
hi link javascriptPromiseMethod        Normal
hi link javascriptPromiseStaticMethod  Normal
hi link javascriptRequestProp          Normal
hi link javascriptResponseProp         Normal
hi link javascriptStringMethod         Normal
hi link javascriptTemplateSubstitution Normal
hi link javascriptURLUtilsProp         Normal
hi link javascriptXHRMethod            Normal
hi link javascriptXHRProp              Normal
hi link javascriptDateMethod           Normal

" yajs.vim (exceptions)
hi link javascriptExceptions Statement

" yajs.vim (parentheses)
hi link javascriptBraces       Statement
hi link javascriptBrackets     Statement
hi link javascriptProperty     Statement
hi link javascriptProp         Statement
hi link javascriptTemplateSB   Statement
hi link javascriptArrowFuncDef Statement

" yajs.vim (operators)
hi link javascriptOpSymbols Statement

" yajs.vim (comments)
hi link javascriptCommentTodo Comment

" yajs.vim (debugging)
hi link javascriptDebugger Statement

" Experiments

" .func*()*
hi link javascriptParens Statement

" { foo: { *bar*() { ... }}
hi link javascriptObjectMethodName javascriptObjectLabel


" foo({*foo*, *bar*})
hi link javascriptFuncArg javascriptIdentifierName

" {...*foo*()}
hi link javascriptComma javascriptParens

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rspec.vim
hi! link rspecGroupMethods Statement
hi! link rspecMatchers Statement

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-json
hi link jsonQuote Statement

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML/XML/JSX
hi xmlTag guifg=#E8BF6A
hi! link htmlArg     xmlArg
hi! link htmlEndTag  xmlEndTag
hi! link htmlTag     xmlTag
hi! link htmlTagName xmlTagName
hi! link htmlSpecialTagName xmlTagName
hi! link xmlArg      xmlTag
hi! link xmlAttrib   xmlTagName
hi! link xmlEndTag   xmlTag
hi! link xmlTagName  xmlTag

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-gitgutter
hi! link DiffAdd GitGutterAdd
hi! link DiffDelete GitGutterDelete
hi! link DiffChange GitGutterChange

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-multiple-cursors
hi link multiple_cursors_visual Visual
hi link multiple_cursors_cursor Visual

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-notes
hi! notesListBullet guifg=gray40 gui=NONE
hi! notesTitle guifg=goldenrod gui=NONE
hi! notesAtxHeading guifg=goldenrod gui=NONE
hi! notesName guifg=#80a0ff gui=NONE
hi! notesSingleQuoted guifg=#80a0ff gui=NONE
hi! notesDoubleQuoted guifg=SkyBlue gui=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-rspec
hi link rspecBeforeAndAfter Keyword
hi link rspecGroupMethods Keyword
hi link rspecMatchers Keyword

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
hi NERDTreeOpenable guifg=#666666
hi NERDTreeClosable guifg=#666666
hi NERDTreeDirSlash guifg=#666666

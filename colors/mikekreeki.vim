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
hi VertSplit    guifg=#121212
hi Visual       guibg=#5A647E
hi Search       guifg=NONE    guibg=steelblue  gui=NONE
hi Folded       guifg=#F6F3E8 guibg=#444444  gui=NONE
hi Directory    guifg=#A5C160 gui=NONE
hi Title        guifg=#E6E1DC
hi WarningMsg   guifg=#DA4938
hi StatusLine   guifg=#121212 guibg=#FFFFFF
hi StatuslineNC guifg=#121212 guibg=#FFFFFF

hi TabLineFill guifg=#121212 guibg=#121212
hi TabLine     guifg=#FFFFFF guibg=#121212 gui=bold
hi TabLineSel  guifg=#085E0B guibg=#B0D52B gui=bold

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extradite
hi diffAdded   guifg=#00FF00
hi diffRemoved guifg=#FF0000
hi ExtraditeLogTag guifg=#FF0000
hi ExtraditeLogName guifg=#0000FF
hi ExtraditeLogId guifg=#FFFF00

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
hi Pmenu      guifg=#F6F3E8 guibg=#444444
hi PmenuSel   guifg=#FFFFFF guibg=steelblue
hi PMenuSbar  guibg=#5A647E
hi PMenuThumb guibg=#AAAAAA

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
hi link javascriptServiceWorkerMethod  Normal

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
hi! link rspecGroupMethods Keyword
hi! link rspecMatchers Keyword
hi! link rspecMatchers Keyword
hi! link rspecBeforeAndAfter Keyword
hi! link rubyTestHelper Normal

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-json
hi link jsonQuote Statement

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML/XML/JSX/TSX
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
hi! link tsxAttrib xmlTagName
hi! link tsxEqual xmlTagName
hi! link tsxCloseString xmlEndTag
hi! link xmlEqual tsxAttrib

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-gitgutter
" hi! link DiffAdd GitGutterAdd
" hi! link DiffDelete GitGutterDelete
" hi! link DiffChange GitGutterChange

hi! GitGutterAdd guifg=#00FF00
hi! GitGutterDelete guifg=#FF0000
hi! GitGutterChange guifg=#FFFF00

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
hi link TagbarScope Statement
hi TagbarType guifg=#444444
hi TagbarFoldIcon guifg=#444444

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown
hi link htmlH1 Keyword
hi link mkdListItem Keyword
hi mkdRule guifg=#666666

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-javascript
hi link jsFunction Keyword
hi link jsModuleBraces Operator
hi link jsArrowFunction Operator
hi link jsStorageClass Define
hi link jsFuncBraces jsOperator
hi link jsFuncParens jsOperator
hi link jsParens jsOperator
hi link jsBrackets jsOperator
hi link jsBraces jsOperator
hi link jsIfElseBraces jsOperator
hi link jsObjectBraces jsOperator
hi link jsObjectSeparator jsOperator
hi link jsDestructuringBraces jsOperator
hi link jsClassBraces jsOperator
hi link jsThis Keyword
hi link jsNull Constant
hi link jsUndefined Constant
hi link jsObjectKey jsObjectFuncName
hi link jsObjectColon jsObjectKey
hi link jsTemplateVar Normal
hi link jsClassMethodType Keyword
hi link jsClassDefinition Normal
hi link jsSuper Keyword
hi link jsGlobalObjects Normal
hi link jsSwitchColon jsOperator
hi link jsNoise Keyword
hi link jsFuncArgCommas jsNoise
hi link jsGlobalNodeObjects Normal
hi link jsGlobalNodeObjects Normal
hi link jsExportDefault Keyword
hi link jsTemplateBraces Keyword
hi link jsTryCatchBraces Keyword
hi link jsFinallyBraces Keyword
hi link jsSwitchBraces Keyword
hi link jsRepeatBraces Keyword
hi link jsBuiltins Normal
hi link jsDecoratorFunction jsDecorator
hi link jsObject jsObjectFuncName
hi link jsFuncCall Normal

hi jsFlowDefinition guifg=SkyBlue
hi jsFlowFunctionGroup guifg=SkyBlue
hi jsFlowNoise guifg=SkyBlue
hi jsFlowArrowArguments guifg=SkyBlue
hi jsFlowArrow guifg=SkyBlue
hi jsFlowArgumentDef guifg=SkyBlue
hi jsFlowType guifg=SkyBlue
hi jsFlowTypeCustom guifg=SkyBlue
hi jsFlowReturnMaybe guifg=SkyBlue
hi jsFlowReturnGroup guifg=SkyBlue
hi jsFlowArray guifg=SkyBlue
hi jsFlowImportType guifg=SkyBlue
hi jsFlowTypeStatement guifg=SkyBlue
hi jsFlowObject guifg=SkyBlue
hi jsFlowGroup guifg=SkyBlue
hi jsFlowOrOperator guifg=SkyBlue
hi jsFlowParenAnnotation guifg=SkyBlue
hi jsFlowMaybe guifg=SkyBlue
hi jsFlowTypeValue guifg=SkyBlue
hi jsFlowExactObject guifg=SkyBlue

" hi link ALEError WarningMsg
" hi ALEError guibg=#DA4938

hi link ALEErrorSign WarningMsg
hi link ALEWarningSign Special

hi link ALEVirtualTextError WarningMsg
hi link ALEVirtualTextWarning Special

" TypeScript
"""""""""""""""""""
" hi typescriptType guifg=SkyBlue
" hi typescriptGlobalObjects guifg=SkyBlue
" hi link typescriptBraces Keyword
" hi link typescriptStorageClass Keyword
" hi link typescriptFuncKeyword Keyword
" hi link typescriptLogicSymbols Keyword
" hi link typescriptDotNotation Keyword
"
hi link typescriptDOMFormProp Normal
hi link typescriptArrayMethod Normal
hi link typescriptBOMHistoryProp Normal
hi link typescriptDOMFormProp Normal
hi link typescriptDOMFormProp Normal
hi link typescriptCall Normal
hi link typescriptArrowFuncArg Normal
hi link typescriptMathStaticMethod Normal
hi link typescriptPaymentShippingOptionProp Normal
hi link typescriptHeadersMethod Normal
hi link typescriptStringMethod Normal
hi link typescriptObjectStaticMethod Normal
hi link typescriptES6SetMethod Normal
hi link typescriptDOMEventMethod Normal
hi link typescriptConsoleMethod Normal
hi link typescriptPromiseMethod Normal
hi link typescriptDOMFormMethod Normal
hi link typescriptDOMNodeProp Normal
hi link typescriptURLUtilsProp Normal
hi link typescriptBOMLocationMethod Normal
hi link typescriptDOMDocProp Normal
hi link typescriptCacheMethod Normal
hi link typescriptDOMEventTargetMethod Normal
hi link typescriptDOMEventProp Normal
hi link typescriptDOMStorageMethod Normal
hi link typescriptDOMNodeMethod Normal
hi link typescriptResponseProp Normal
hi link typescriptBOMNavigatorProp Normal
hi link typescriptParamImpl Normal
hi link typescriptFileReaderProp Normal
hi link typescriptNumberStaticMethod Normal
hi link typescriptServiceWorkerMethod Normal
hi link typescriptNumberStaticProp Normal
hi link typescriptDOMDocMethod Normal
hi link typescriptServiceWorkerMethod Normal
hi link typescriptJSONStaticMethod Normal
hi link typescriptFileListMethod Normal
hi link typescriptXHRMethod Normal
hi link typescriptXHRProp Normal
hi link typescriptPaymentResponseMethod Normal
hi link typescriptDestructureVariable Normal
hi link typescriptFuncCallArg Normal

hi link typescriptVariable Keyword
hi link typescriptExport Keyword
hi link typescriptParens Keyword
hi link typescriptObjectSpread Keyword
hi link typescriptOperator Keyword
hi link typescriptImport Keyword
hi link typescriptBinaryOp Keyword
hi link typescriptBraces Keyword
hi link typescriptArrowFunc Keyword
hi link typescriptImport Keyword
hi link typescriptTernaryOp Keyword
hi link typescriptAssign Keyword
hi link typescriptIdentifier Keyword
hi link typescriptUnaryOp Keyword
hi link typescriptProperty Keyword
hi link typescriptAliasKeyword Keyword
" hi link typescriptTypeBrackets Keyword
hi typescriptTypeBrackets guifg=SkyBlue
hi link typescriptKeywordOp Keyword
hi link typescriptClassStatic Keyword
hi link typescriptServiceWorkerMethod Keyword
hi link typescriptSemicolons typescriptEndColons

hi typescriptPredefinedType guifg=SkyBlue
" hi link typescriptPredefinedType Normal
hi typescriptTypeReference guifg=SkyBlue
" hi link typescriptTypeReference Normal
hi typescriptTypeAnnotation guifg=SkyBlue
hi typescriptAliasDeclaration guifg=SkyBlue
" hi link typescriptAliasDeclaration Normal
hi typescriptComputedMember guifg=SkyBlue
" hi typescriptTypeBracket guifg=SkyBlue
hi link typescriptTypeBracket Keyword
hi typescriptUnion guifg=SkyBlue
" hi link typescriptUnion Keyword
hi typescriptTypeParameter guifg=SkyBlue
hi typescriptFuncType guifg=SkyBlue
hi typescriptFuncTypeArrow guifg=SkyBlue
hi typescriptCastKeyword guifg=SkyBlue
hi typescriptEnumKeyword guifg=SkyBlue
" hi typescriptMember guifg=SkyBlue " Does not work for just types :(
hi typescriptMemberOptionality guifg=SkyBlue

hi link typescriptObjectLabel Function
hi link typescriptObjectColon Function
" hi link typescriptTypeAnnotation typescriptObjectColon

hi link jsxOpenPunct Function
hi link jsxClosePunct Function
hi link jsxAttrib Function
hi link jsxTagName Function
hi link jsxCloseString Function
hi link jsxBraces Keyword
hi link jsxEqual Function

" vim-clap
"""""""""""""""""""

hi link ClapInput   Visual

hi ClapDisplay guifg=red
hi ClapPreview guifg=blue
hi ClapMatches guifg=yellow

" By default ClapQuery will use the bold fg of Normal and the same bg of ClapInput

hi ClapDefaultPreview          ctermbg=237 guibg=#3E4452
hi ClapDefaultSelected         cterm=bold,underline gui=bold,underline ctermfg=80 guifg=red
hi ClapDefaultCurrentSelection cterm=bold gui=bold ctermfg=224 guifg=#ffd7d7

hi default link ClapPreview          ClapDefaultPreview
hi default link ClapSelected         ClapDefaultSelected
hi default link ClapCurrentSelection ClapDefaultCurrentSelection

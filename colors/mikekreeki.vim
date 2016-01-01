" Vim color scheme based on http://github.com/jpo/vim-railscasts-theme
"
" Name:        mikekreeki.vim
" Maintainer:  Michal Krejčí (@mikekreeki)
" License:     MIT

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "railscasts"

" Colors
" Brown        #BC9357
" Dark Blue    #6D9CBD
" Dark Green   #509E50
" Dark Orange  #CC7733
" Light Blue   #CFCFFF
" Light Green  #A5C160
" Tan          #FFC66D
" Red          #DA4938

hi rubySymbol guifg=#6D9CBD gui=NONE
hi rubySymbolDelimiter guifg=#6D9CBD gui=NONE

hi rubyConstant guifg=#DA4938 gui=NONE

hi Normal     guifg=#E6E1DC guibg=#000000
hi Cursor     guibg=#FFFFFF
hi CursorLine guibg=#333435
hi LineNr     guifg=#666666
hi Visual     guibg=#5A647E
" hi Search     guifg=NONE    guibg=#131313  gui=NONE
hi Folded     guifg=#F6F3E8 guibg=#444444  gui=NONE
hi Directory  guifg=#A5C160 gui=NONE
hi Error      guifg=#FFFFFF guibg=#990000
hi MatchParen guifg=NONE    guibg=#131313
hi Title      guifg=#E6E1DC

hi Comment    guifg=#BC9357 guibg=NONE     gui=italic
hi! link Todo Comment

hi String     guifg=#A5C160
hi! link Number String
hi! link rubyStringDelimiter String

" nil, self, symbols
hi Constant guifg=#6D9CBD

" def, end, include, load, require, alias, super, yield, lambda, proc
hi Define guifg=#CC7733 gui=NONE
hi! link Include Define
hi! link Keyword Define
hi! link Macro Define

" #{foo}, <%= bar %>
hi Delimiter guifg=#509E50
" hi erubyDelimiter guifg=NONE

" function name (after def)
hi Function guifg=#FFC66D gui=NONE

"@var, @@var, $var
hi Identifier guifg=#CFCFFF gui=NONE

" #if, #else, #endif

" case, begin, do, for, if, unless, while, until, else
hi Statement guifg=#CC7733 gui=NONE
hi! link PreProc Statement
hi! link PreCondit Statement

hi Operator guifg=#CC7733 gui=NONE
hi rubyOperator guifg=#CC7733 gui=NONE

" SomeClassName
hi Type guifg=NONE gui=NONE

" has_many, respond_to, params
hi railsMethod guifg=#DA4938 gui=NONE

hi DiffAdd guifg=#E6E1DC guibg=#144212
hi DiffDelete guifg=#E6E1DC guibg=#660000

" HTML/XML/JSX
hi xmlTag guifg=#E8BF6A
hi! link htmlArg     xmlArg
hi! link htmlEndTag  xmlEndTag
hi! link htmlTag     xmlTag
hi! link htmlTagName xmlTagName
hi! link xmlArg      xmlTag
hi! link xmlAttrib   xmlTagName
hi! link xmlEndTag   xmlTag
hi! link xmlTagName  xmlTag

" Popup Menu
hi Pmenu      guifg=#F6F3E8 guibg=#444444 gui=NONE
hi PmenuSel   guifg=#000000 guibg=#A5C160 gui=NONE
hi PMenuSbar  guibg=#5A647E gui=NONE
hi PMenuThumb guibg=#AAAAAA gui=NONE

" Custom
hi Search       guibg=#585858 guifg=NONE
hi Cursor       guifg=white guibg=steelblue
hi CursorLineNr guibg=NONE guifg=#444444
hi ColorColumn  guibg=#1C1C1C
hi VertSplit    guifg=#585858
hi SignColumn   guibg=black
hi MatchParen   guibg=NONE guifg=green gui=bold
hi DiffText     gui=none guifg=Red guibg=NONE

" JS Imports
hi link javascriptImport Statement
hi link javascriptExport Statement

" JS Class
hi link javascriptClassName Normal
hi link javascriptClassSuperName Normal

" JS Class properties
hi link javascriptClassStatic Statement
hi javascriptClassProperty guifg=#FFC66D

" JS Variables
hi link javascriptVariable Statement
hi link javascriptIdentifier Statement
hi link javascriptIdentifierName Normal

" JS Object
hi link javascriptObjectLabel javascriptClassProperty
hi link javascriptLabel javascriptClassProperty

" JS Operators
hi link javascriptOpSymbol Statement
hi link javascriptLogicSymbol Statement
hi link javascriptOperator Statement

" JS Functions
hi link javascriptArrowFunc Statement
hi link javascriptDOMEventProp Normal
hi link javascriptArrayMethod Normal
hi link javascriptStringMethod Normal
hi link javascriptHeadersMethod Normal
hi link javascriptBOMHistoryProp Normal

" JS Exceptions
hi link javascriptExceptions Statement

" JS Braces
hi link javascriptBraces Statement

" JS Regexp
hi! link javaScriptRegexpString rubyRegexp

" JavaScript
hi! link javaScriptValue Constant

hi jsStorageClass      guifg=#CC7733 gui=NONE
hi jsFunction          guifg=#CC7733 gui=NONE
hi jsArrowFunction     guifg=#CC7733 gui=NONE
hi jsArrowFunction     guifg=#CC7733 gui=NONE
hi jsClass             guifg=#CC7733 gui=NONE
hi jsBraces            guifg=#CC7733 gui=NONE
hi jsFuncBraces        guifg=#CC7733 gui=NONE
hi jsAssignExpIdent    guifg=#FFC66D gui=NONE
hi jsObjectKey         guifg=#FFC66D gui=NONE
hi jsNull              guifg=#6D9CBD gui=NONE
hi jsUndefined         guifg=#6D9CBD gui=NONE
hi jsDecorator         guifg=#CC7733 gui=NONE
hi jsDecoratorFunction guifg=#CC7733 gui=NONE

" Diff
hi! link DiffAdd GitGutterAdd
hi! link DiffDelete GitGutterDelete
hi! link DiffChange GitGutterChange

" vim-multiple-cursors
hi link multiple_cursors_visual Visual
hi link multiple_cursors_cursor Visual

" vim-notes
hi! notesListBullet guifg=gray40 gui=NONE
hi! notesTitle guifg=goldenrod gui=NONE
hi! notesAtxHeading guifg=goldenrod gui=NONE
hi! notesName guifg=#80a0ff gui=NONE
hi! notesSingleQuoted guifg=#80a0ff gui=NONE
hi! notesDoubleQuoted guifg=SkyBlue gui=NONE

" vim-rspec
hi! link rspecBeforeAndAfter Keyword

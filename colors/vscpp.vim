" vscpp.vim
" Visual Studio C++ style dark theme for Vim
" Editor colors inspired by VS / Dark+
" Status line uses Visual Studio purple style
" Purple tone: #5d2b90 (approx. cterm 54)

if version < 700
  finish
endif

set background=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vscpp"

" Enable truecolor if available
if has('termguicolors')
  set termguicolors
endif

" Define highlight group with shorter syntax
function! s:HI(group, guifg, guibg, gui, ctermfg, ctermbg, cterm)
  execute 'hi' a:group
        \ 'guifg='   . a:guifg
        \ 'guibg='   . a:guibg
        \ 'gui='     . a:gui
        \ 'ctermfg=' . a:ctermfg
        \ 'ctermbg=' . a:ctermbg
        \ 'cterm='   . a:cterm
endfunction


" ------------------------------
" UI Elements
" ------------------------------

call s:HI('Normal',        '#D4D4D4', '#1E1E1E', 'NONE', 252, 234, 'NONE')
call s:HI('NonText',       '#444444', '#1E1E1E', 'NONE', 239, 234, 'NONE')
call s:HI('EndOfBuffer',   '#444444', '#1E1E1E', 'NONE', 239, 234, 'NONE')

" Line highlights
call s:HI('CursorLine',    'NONE',    '#2A2A2A', 'NONE', 'NONE', 236, 'NONE')
call s:HI('CursorColumn',  'NONE',    '#2A2A2A', 'NONE', 'NONE', 236, 'NONE')
call s:HI('ColorColumn',   'NONE',    '#2A2A2A', 'NONE', 'NONE', 236, 'NONE')
call s:HI('LineNr',        '#858585', '#1E1E1E', 'NONE', 244, 234, 'NONE')
call s:HI('CursorLineNr',  '#FFFFFF', '#2A2A2A', 'BOLD', 231, 236, 'BOLD')
call s:HI('SignColumn',    '#858585', '#1E1E1E', 'NONE', 244, 234, 'NONE')

" Window split borders
call s:HI('VertSplit',     '#333333', '#1E1E1E', 'NONE', 237, 234, 'NONE')

" Visual selection
call s:HI('Visual',        '#FFFFFF', '#264F78', 'NONE', 231, 24,  'NONE')
call s:HI('VisualNOS',     '#FFFFFF', '#264F78', 'NONE', 231, 24,  'NONE')

" Search
call s:HI('Search',        '#000000', '#FFD94A', 'NONE', 16,  221, 'NONE')
call s:HI('IncSearch',     '#000000', '#FFCC00', 'NONE', 16,  220, 'NONE')

" Matching parentheses
call s:HI('MatchParen',    '#FFFFFF', '#3E3E3E', 'BOLD', 231, 237, 'BOLD')

" Cursor
call s:HI('Cursor',        '#1E1E1E', '#D4D4D4', 'NONE', 234, 252, 'NONE')


" ------------------------------
" Status line & Tabline
" ------------------------------

" Visual Studio Purple (#5D2B90), cterm approx 54
call s:HI('StatusLine',    '#FFFFFF', '#5D2B90', 'BOLD', 231, 54,  'BOLD')
call s:HI('StatusLineNC',  '#CCCCCC', '#3B245E', 'NONE', 250, 53,  'NONE')
call s:HI('TabLine',       '#CCCCCC', '#3B3B3B', 'NONE', 250, 237, 'NONE')
call s:HI('TabLineSel',    '#FFFFFF', '#1E1E1E', 'BOLD', 231, 234, 'BOLD')
call s:HI('TabLineFill',   '#CCCCCC', '#3B3B3B', 'NONE', 250, 237, 'NONE')
call s:HI('Title',         '#569CD6', 'NONE',    'BOLD', 75,  'NONE', 'BOLD')


" ------------------------------
" Popup Menu
" ------------------------------

call s:HI('Pmenu',         '#D4D4D4', '#252526', 'NONE', 252, 235, 'NONE')
call s:HI('PmenuSel',      '#FFFFFF', '#094771', 'NONE', 231, 24,  'NONE')
call s:HI('PmenuSbar',     'NONE',    '#333333', 'NONE', 'NONE', 237, 'NONE')
call s:HI('PmenuThumb',    'NONE',    '#808080', 'NONE', 'NONE', 244, 'NONE')


" ------------------------------
" Messages
" ------------------------------

call s:HI('ErrorMsg',      '#FFFFFF', '#F44747', 'BOLD', 231, 196, 'BOLD')
call s:HI('WarningMsg',    '#000000', '#FFCC00', 'NONE', 16,  220, 'NONE')
call s:HI('ModeMsg',       '#D4D4D4', 'NONE',    'BOLD', 252, 'NONE', 'BOLD')
call s:HI('MoreMsg',       '#4EC9B0', 'NONE',    'BOLD', 79,  'NONE', 'BOLD')
call s:HI('Question',      '#4EC9B0', 'NONE',    'BOLD', 79,  'NONE', 'BOLD')


" ------------------------------
" Syntax Highlighting
" ------------------------------

" Comments
call s:HI('Comment',       '#6A9955', 'NONE', 'ITALIC', 65, 'NONE', 'NONE')

" Strings / Constants
call s:HI('String',        '#CE9178', 'NONE', 'NONE', 173, 'NONE', 'NONE')
call s:HI('Character',     '#CE9178', 'NONE', 'NONE', 173, 'NONE', 'NONE')
call s:HI('Number',        '#B5CEA8', 'NONE', 'NONE', 151, 'NONE', 'NONE')
call s:HI('Boolean',       '#569CD6', 'NONE', 'NONE', 75,  'NONE', 'NONE')
call s:HI('Float',         '#B5CEA8', 'NONE', 'NONE', 151, 'NONE', 'NONE')
call s:HI('Constant',      '#4FC1FF', 'NONE', 'NONE', 81,  'NONE', 'NONE')

" Identifiers / Functions
call s:HI('Identifier',    '#9CDCFE', 'NONE', 'NONE', 117, 'NONE', 'NONE')
call s:HI('Function',      '#DCDCAA', 'NONE', 'NONE', 187, 'NONE', 'NONE')

" Keywords
call s:HI('Statement',     '#569CD6', 'NONE', 'NONE', 75, 'NONE', 'NONE')
call s:HI('Keyword',       '#569CD6', 'NONE', 'NONE', 75, 'NONE', 'NONE')
call s:HI('Conditional',   '#569CD6', 'NONE', 'NONE', 75, 'NONE', 'NONE')
call s:HI('Repeat',        '#569CD6', 'NONE', 'NONE', 75, 'NONE', 'NONE')
call s:HI('Label',         '#C586C0', 'NONE', 'NONE', 176,'NONE','NONE')
call s:HI('Operator',      '#D4D4D4', 'NONE', 'NONE', 252,'NONE','NONE')
call s:HI('Exception',     '#C586C0', 'NONE', 'NONE', 176,'NONE','NONE')

" Preprocessor
call s:HI('PreProc',       '#C586C0', 'NONE', 'NONE', 176,'NONE','NONE')
call s:HI('Include',       '#C586C0', 'NONE', 'NONE', 176,'NONE','NONE')
call s:HI('Define',        '#C586C0', 'NONE', 'NONE', 176,'NONE','NONE')
call s:HI('Macro',         '#C586C0', 'NONE', 'NONE', 176,'NONE','NONE')

" Types
call s:HI('Type',          '#4EC9B0', 'NONE', 'NONE', 79,'NONE','NONE')
call s:HI('StorageClass',  '#4EC9B0', 'NONE', 'NONE', 79,'NONE','NONE')
call s:HI('Structure',     '#4EC9B0', 'NONE', 'NONE', 79,'NONE','NONE')
call s:HI('Typedef',       '#4EC9B0', 'NONE', 'NONE', 79,'NONE','NONE')

" Specials
call s:HI('Special',       '#D7BA7D', 'NONE', 'NONE', 180,'NONE','NONE')
call s:HI('SpecialChar',   '#D7BA7D', 'NONE', 'NONE', 180,'NONE','NONE')
call s:HI('Tag',           '#569CD6', 'NONE', 'NONE', 75,'NONE','NONE')
call s:HI('Delimiter',     '#D4D4D4', 'NONE', 'NONE', 252,'NONE','NONE')
call s:HI('SpecialComment','#6A9955', 'NONE', 'ITALIC',65,'NONE','NONE')
call s:HI('Underlined',    '#4FC1FF', 'NONE', 'UNDERLINE',81,'NONE','UNDERLINE')

" Errors / TODO
call s:HI('Error',         '#FFFFFF', '#F44747', 'BOLD', 231, 196, 'BOLD')
call s:HI('Todo',          '#000000', '#FFD94A', 'BOLD', 16, 221, 'BOLD')


" ------------------------------
" Diff
" ------------------------------

call s:HI('DiffAdd',       '#FFFFFF', '#144212', 'NONE', 231, 22,  'NONE')
call s:HI('DiffChange',    '#FFFFFF', '#264F78', 'NONE', 231, 24,  'NONE')
call s:HI('DiffDelete',    '#FFFFFF', '#6F1313', 'NONE', 231, 52,  'NONE')
call s:HI('DiffText',      '#FFFFFF', '#005F87', 'BOLD', 231, 24,  'BOLD')


" ------------------------------
" LSP / Diagnostics (fallback links)
" ------------------------------

hi! link DiagnosticError Error
hi! link DiagnosticWarn  WarningMsg
hi! link DiagnosticInfo  MoreMsg
hi! link DiagnosticHint  MoreMsg

" Extra C-specific linking (if available)
hi! link cType          Type
hi! link cStorageClass  StorageClass
hi! link cStatement     Statement
hi! link cConstant      Constant
hi! link cSpecial       Special
hi! link cLabel         Label

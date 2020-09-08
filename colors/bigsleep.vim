"" BIG SLEEP
"" ourgotted maximus
"" base16-vim inspired

let s:red     = '#b44b4e'
let s:green   = '#8f9d6a'
let s:blue    = '#5c6a7d'
let s:cyan    = '#6a98a2'
let s:magenta = '#a27a98'
let s:yellow  = '#cda671'
let s:orange  = '#cf6a4c'
let s:brown   = '#8f5536'

" TODO text / ui colors
let s:gui00 = '#141213'
let s:gui01 = '#201e1f'
let s:gui02 = '#2b2a2b'
let s:gui03 = '#3f3e40'
let s:gui05 = '#9998a0'
	let s:gui04 = '#abaaac'
let s:gui06 = '#1c1a1b'
let s:gui07 = '#222021'
let s:gui08 = '#7b7a7c'
let s:gui09 = '#9b9a9c'
let s:gui0A = '#a1a0a2'
let s:gui0B = s:green
let s:gui0C = '#858486'
let s:gui0D = '#676668'
let s:gui0E = '#737274'
let s:gui0F = '#5d5c5e'

if has('terminal')
	let g:terminal_ansi_colors = [
				\ s:gui00,
				\ s:gui01,
				\ s:red,
				\ s:red,
				\ s:green,
				\ s:green,
				\ s:yellow,
				\ s:yellow,
				\ s:blue,
				\ s:blue,
				\ s:magenta,
				\ s:magenta,
				\ s:cyan,
				\ s:cyan,
				\ s:gui05,
				\ s:gui05,
				\ ]
endif

highlight clear
syntax reset
let g:colors_name = 'bigsleep'

function! s:hi(group, guifg, guibg, attr, guisp)
	if a:guifg != ''
		exec 'hi ' . a:group . ' guifg=' . a:guifg
	endif
	if a:guibg != ''
		exec 'hi ' . a:group . ' guibg=' . a:guibg
	endif
	if a:attr != ''
		exec 'hi ' . a:group . ' gui=' . a:attr
	endif
	if a:guisp != ''
		exec 'hi ' . a:group . ' guisp=' . a:guisp
	endif
endfunction

call <sid>hi('Normal'       , s:gui05 , s:gui00  , ''     , '')
call <sid>hi('Bold'         , ''      , ''       , 'bold' , '')
call <sid>hi('Debug'        , s:gui08 , ''       , ''     , '')
call <sid>hi('Directory'    , s:blue  , ''       , ''     , '')
call <sid>hi('Error'        , s:gui00 , s:red    , ''     , '')
call <sid>hi('ErrorMsg'     , s:red   , s:gui00  , ''     , '')
call <sid>hi('Exception'    , s:gui08 , ''       , ''     , '')
call <sid>hi('FoldColumn'   , s:gui0C , s:gui01  , ''     , '')
call <sid>hi('Folded'       , s:gui03 , s:gui01  , ''     , '')
call <sid>hi('Italic'       , ''      , ''       , 'none' , '')
call <sid>hi('Macro'        , s:gui08 , ''       , ''     , '')
call <sid>hi('MatchParen'   , s:gui00 , s:orange , ''     , '')
call <sid>hi('ModeMsg'      , s:gui0B , ''       , ''     , '')
call <sid>hi('MoreMsg'      , s:gui0B , ''       , ''     , '')
call <sid>hi('Question'     , s:gui0D , ''       , ''     , '')
call <sid>hi('Search'       , s:gui00 , s:yellow , ''     , '')
call <sid>hi('IncSearch'    , s:gui00 , s:orange , 'none' , '')
call <sid>hi('Substitute'   , s:gui00 , s:yellow , 'none' , '')
call <sid>hi('SpecialKey'   , s:gui03 , ''       , ''     , '')
call <sid>hi('TooLong'      , s:gui08 , ''       , ''     , '')
call <sid>hi('Underlined'   , s:gui08 , ''       , ''     , '')
call <sid>hi('Visual'       , ''      , s:gui02  , ''     , '')
call <sid>hi('VisualNOS'    , s:gui08 , ''       , ''     , '')
call <sid>hi('WarningMsg'   , s:gui08 , ''       , ''     , '')
call <sid>hi('WildMenu'     , s:gui00 , s:gui05  , ''     , '')
call <sid>hi('Title'        , s:gui0D , ''       , 'none' , '')
call <sid>hi('Conceal'      , s:gui0D , s:gui00  , ''     , '')
call <sid>hi('Cursor'       , s:gui00 , s:gui05  , ''     , '')
call <sid>hi('NonText'      , s:gui02 , ''       , ''     , '')
call <sid>hi('LineNr'       , s:gui01 , ''       , ''     , '')
call <sid>hi('SignColumn'   , s:gui02 , s:gui00  , ''     , '')
call <sid>hi('StatusLine'   , s:gui03 , s:gui06  , 'none' , '')
call <sid>hi('StatusLineNC' , s:gui02 , s:gui06  , 'none' , '')
call <sid>hi('VertSplit'    , s:gui06 , s:gui06  , 'none' , '')
call <sid>hi('ColorColumn'  , ''      , s:gui01  , 'none' , '')
call <sid>hi('CursorColumn' , ''      , s:gui01  , 'none' , '')
call <sid>hi('CursorLine'   , ''      , s:gui01  , 'none' , '')
call <sid>hi('CursorLineNr' , s:gui04 , s:gui01  , 'none' , '')
call <sid>hi('QuickFixLine' , s:gui00 , s:gui05  , 'none' , '')
call <sid>hi('qfLineNr'     , s:gui0D , ''       , 'none' , '')
call <sid>hi('Pmenu'        , s:gui05 , s:gui07  , 'none' , '')
call <sid>hi('PmenuThumb'   , ''      , s:gui03  , ''     , '')
call <sid>hi('PmenuSel'     , s:gui00 , s:gui05  , ''     , '')
call <sid>hi('PmenuSbar'    , ''      , s:gui02  , ''     , '')
call <sid>hi('TabLine'      , s:gui03 , s:gui06  , 'none' , '')
call <sid>hi('TabLineFill'  , s:gui03 , s:gui06  , 'none' , '')
call <sid>hi('TabLineSel'   , s:gui0B , s:gui01  , 'none' , '')

" Standard syntax highlighting
call <sid>hi('Boolean'      , s:orange  , ''      , ''       , '')
call <sid>hi('Character'    , s:brown   , ''      , ''       , '')
call <sid>hi('Comment'      , s:gui03   , ''      , ''       , '')
call <sid>hi('Conditional'  , s:magenta , ''      , ''       , '')
call <sid>hi('Constant'     , s:orange  , ''      , ''       , '')
call <sid>hi('Define'       , s:gui0E   , ''      , 'none'   , '')
call <sid>hi('Delimiter'    , s:gui0F   , ''      , ''       , '')
call <sid>hi('Float'        , s:gui09   , ''      , ''       , '')
call <sid>hi('Function'     , s:blue    , ''      , ''       , '')
call <sid>hi('Identifier'   , s:gui08   , ''      , 'none'   , '')
call <sid>hi('Include'      , s:gui0D   , ''      , ''       , '')
call <sid>hi('Keyword'      , s:gui0E   , ''      , ''       , '')
call <sid>hi('Label'        , s:gui0A   , ''      , ''       , '')
call <sid>hi('Number'       , s:gui09   , ''      , ''       , '')
call <sid>hi('Operator'     , s:gui0E   , ''      , 'none'   , '')
call <sid>hi('PreProc'      , s:gui0A   , ''      , ''       , '')
call <sid>hi('Repeat'       , s:magenta , ''      , ''       , '')
call <sid>hi('Special'      , s:gui0C   , ''      , ''       , '')
call <sid>hi('SpecialChar'  , s:gui0F   , ''      , ''       , '')
call <sid>hi('Statement'    , s:gui08   , ''      , ''       , '')
call <sid>hi('StorageClass' , s:gui0D   , ''      , 'italic' , '')
call <sid>hi('String'       , s:gui0B   , ''      , ''       , '')
call <sid>hi('Structure'    , s:gui0D   , ''      , ''       , '')
call <sid>hi('Tag'          , s:gui0A   , ''      , ''       , '')
call <sid>hi('Todo'         , s:yellow  , s:gui06 , ''       , '')
call <sid>hi('Type'         , s:gui0D   , ''      , 'none'   , '')
call <sid>hi('Typedef'      , s:gui0A   , ''      , ''       , '')

" C highlighting
call <sid>hi('cPreCondit' , s:gui0A   , '' , 'bold' , '')
call <sid>hi('cSpecial'   , s:brown   , '' , ''     , '')
call <sid>hi('cCharacter' , s:brown   , '' , ''     , '')
call <sid>hi('cStatement' , s:red     , '' , ''     , '')
call <sid>hi('cFormat'    , s:yellow  , '' , ''     , '')
call <sid>hi('cIncluded'  , s:gui0E   , '' , ''     , '')

" shell highlighting
call <sid>hi('shOption'     , s:gui0E , '' , '' , '')
call <sid>hi('shCommandSub' , s:gui05 , '' , '' , '')
call <sid>hi('shCtrlSeq'    , s:brown , '' , '' , '')
call <sid>hi('shQuote'      , s:green , '' , '' , '')
call <sid>hi('shSpecial'    , s:brown , '' , '' , '')
call <sid>hi('shSpecialDQ'  , s:brown , '' , '' , '')
call <sid>hi('shStatement'  , s:blue  , '' , '' , '')

" Python highlighting
call <sid>hi('pythonOperator'        , s:gui0E   , '' , '' , '')
call <sid>hi('pythonRepeat'          , s:magenta , '' , '' , '')
call <sid>hi('pythonInclude'         , s:gui0E   , '' , '' , '')
call <sid>hi('pythonStatement'       , s:magenta , '' , '' , '')
call <sid>hi('pythonException'       , s:magenta , '' , '' , '')
call <sid>hi('pythonStrInterpRegion' , s:yellow  , '' , '' , '')
call <sid>hi('pythonStrTemplate'     , s:brown   , '' , '' , '')
call <sid>hi('pythonBytesEscape'     , s:brown   , '' , '' , '')

" C# highlighting
call <sid>hi('csClass'                , s:gui0A , '' , '' , '')
call <sid>hi('csAttribute'            , s:gui0A , '' , '' , '')
call <sid>hi('csModifier'             , s:gui0E , '' , '' , '')
call <sid>hi('csType'                 , s:gui08 , '' , '' , '')
call <sid>hi('csUnspecifiedStatement' , s:gui0D , '' , '' , '')
call <sid>hi('csContextualStatement'  , s:gui0E , '' , '' , '')
call <sid>hi('csNewDecleration'       , s:gui08 , '' , '' , '')

" CSS highlighting
call <sid>hi('cssBraces',      s:gui05, '', '', '')
call <sid>hi('cssClassName',   s:gui0E, '', '', '')
call <sid>hi('cssColor',       s:gui0C, '', '', '')

" Diff highlighting
call <sid>hi('DiffAdd'     , s:gui0B , s:gui01 , '' , '')
call <sid>hi('DiffChange'  , s:gui03 , s:gui01 , '' , '')
call <sid>hi('DiffDelete'  , s:red   , s:gui01 , '' , '')
call <sid>hi('DiffText'    , s:blue  , s:gui01 , '' , '')
call <sid>hi('DiffAdded'   , s:gui0B , s:gui00 , '' , '')
call <sid>hi('DiffFile'    , s:red   , s:gui00 , '' , '')
call <sid>hi('DiffNewFile' , s:gui0B , s:gui00 , '' , '')
call <sid>hi('DiffLine'    , s:blue  , s:gui00 , '' , '')
call <sid>hi('DiffRemoved' , s:red   , s:gui00 , '' , '')

" Git highlighting
call <sid>hi('gitcommitOverflow'      , s:red     , '' , ''     , '')
call <sid>hi('gitcommitSummary'       , s:gui0B   , '' , ''     , '')
call <sid>hi('gitcommitComment'       , s:gui03   , '' , ''     , '')
call <sid>hi('gitcommitUntracked'     , s:gui03   , '' , ''     , '')
call <sid>hi('gitcommitDiscarded'     , s:gui03   , '' , ''     , '')
call <sid>hi('gitcommitSelected'      , s:gui03   , '' , ''     , '')
call <sid>hi('gitcommitHeader'        , s:magenta , '' , ''     , '')
call <sid>hi('gitcommitSelectedType'  , s:blue    , '' , ''     , '')
call <sid>hi('gitcommitUnmergedType'  , s:blue    , '' , ''     , '')
call <sid>hi('gitcommitDiscardedType' , s:blue    , '' , ''     , '')
call <sid>hi('gitcommitBranch'        , s:orange  , '' , 'bold' , '')
call <sid>hi('gitcommitUntrackedFile' , s:yellow  , '' , ''     , '')
call <sid>hi('gitcommitUnmergedFile'  , s:red     , '' , 'bold' , '')
call <sid>hi('gitcommitDiscardedFile' , s:red     , '' , 'bold' , '')
call <sid>hi('gitcommitSelectedFile'  , s:gui0B   , '' , 'bold' , '')

" GitGutter highlighting
call <sid>hi('GitGutterAdd'          , s:green , '' , '' , '')
call <sid>hi('GitGutterChange'       , s:blue  , '' , '' , '')
call <sid>hi('GitGutterDelete'       , s:red   , '' , '' , '')
call <sid>hi('GitGutterChangeDelete' , s:brown , '' , '' , '')

" HTML highlighting
call <sid>hi('htmlBold'   , s:yellow  , '' , '' , '')
call <sid>hi('htmlItalic' , s:magenta , '' , '' , '')
call <sid>hi('htmlEndTag' , s:gui05   , '' , '' , '')
call <sid>hi('htmlTag'    , s:gui05   , '' , '' , '')

" JavaScript highlightin
call <sid>hi('javaScript'       , s:gui05 , '' , '' , '')
call <sid>hi('javaScriptBraces' , s:gui05 , '' , '' , '')
call <sid>hi('javaScriptNumber' , s:gui09 , '' , '' , '')

" pangloss/vim-javascript highlightin
call <sid>hi('jsOperator'          , s:gui0D   , '' , '' , '')
call <sid>hi('jsStatement'         , s:magenta , '' , '' , '')
call <sid>hi('jsReturn'            , s:gui0E   , '' , '' , '')
call <sid>hi('jsThis'              , s:gui08   , '' , '' , '')
call <sid>hi('jsClassDefinition'   , s:gui0A   , '' , '' , '')
call <sid>hi('jsFunction'          , s:gui0E   , '' , '' , '')
call <sid>hi('jsFuncName'          , s:blue    , '' , '' , '')
call <sid>hi('jsFuncCall'          , s:blue    , '' , '' , '')
call <sid>hi('jsClassFuncName'     , s:blue    , '' , '' , '')
call <sid>hi('jsClassMethodType'   , s:magenta , '' , '' , '')
call <sid>hi('jsRegexpString'      , s:gui0C   , '' , '' , '')
call <sid>hi('jsGlobalObjects'     , s:gui0A   , '' , '' , '')
call <sid>hi('jsGlobalNodeObjects' , s:gui0A   , '' , '' , '')
call <sid>hi('jsExceptions'        , s:gui0A   , '' , '' , '')
call <sid>hi('jsBuiltins'          , s:gui0A   , '' , '' , '')

" Mail highlighting
call <sid>hi('mailQuoted1' , s:yellow  , '' , '' , '')
call <sid>hi('mailQuoted2' , s:gui0B   , '' , '' , '')
call <sid>hi('mailQuoted3' , s:magenta , '' , '' , '')
call <sid>hi('mailQuoted4' , s:gui0C   , '' , '' , '')
call <sid>hi('mailQuoted5' , s:blue    , '' , '' , '')
call <sid>hi('mailQuoted6' , s:yellow  , '' , '' , '')
call <sid>hi('mailURL'     , s:blue    , '' , '' , '')
call <sid>hi('mailEmail'   , s:blue    , '' , '' , '')

" Markdown highlighting
call <sid>hi('markdownCode'             , s:gui0B , ''      , '' , '')
call <sid>hi('markdownError'            , s:gui05 , s:gui00 , '' , '')
call <sid>hi('markdownCodeBlock'        , s:gui0B , ''      , '' , '')
call <sid>hi('markdownHeadingDelimiter' , s:blue  , ''      , '' , '')

" PHP highlighting
call <sid>hi('phpMemberSelector' , s:gui05 , '' , '' , '')
call <sid>hi('phpComparison'     , s:gui05 , '' , '' , '')
call <sid>hi('phpParent'         , s:gui05 , '' , '' , '')
call <sid>hi('phpMethodsVar'     , s:gui0C , '' , '' , '')

" Ruby highlighting
call <sid>hi('rubyAttribute'              , s:gui0D  , '' , '' , '')
call <sid>hi('rubyConstant'               , s:orange , '' , '' , '')
call <sid>hi('rubyInterpolationDelimiter' , s:gui0F  , '' , '' , '')
call <sid>hi('rubyRegexp'                 , s:gui0C  , '' , '' , '')
call <sid>hi('rubySymbol'                 , s:gui0B  , '' , '' , '')
call <sid>hi('rubyStringDelimiter'        , s:gui0B  , '' , '' , '')

" SASS highlighting
call <sid>hi('sassidChar'    , s:gui08   , '' , '' , '')
call <sid>hi('sassClassChar' , s:orange  , '' , '' , '')
call <sid>hi('sassInclude'   , s:gui0E   , '' , '' , '')
call <sid>hi('sassMixing'    , s:magenta , '' , '' , '')
call <sid>hi('sassMixinName' , s:blue    , '' , '' , '')

" Signify highlighting
call <sid>hi('SignifySignAdd'    , s:green , '' , '' , '')
call <sid>hi('SignifySignChange' , s:blue  , '' , '' , '')
call <sid>hi('SignifySignDelete' , s:red   , '' , '' , '')

" Spelling highlighting
call <sid>hi('SpellBad'   , '' , '' , 'undercurl' , s:red)
call <sid>hi('SpellLocal' , '' , '' , 'undercurl' , s:gui0C)
call <sid>hi('SpellCap'   , '' , '' , 'undercurl' , s:magenta)
call <sid>hi('SpellRare'  , '' , '' , 'undercurl' , s:gui0F)

" Java highlighting
call <sid>hi('javaOperator' , s:gui0D , '' , '' , '')

delf <sid>hi

unlet s:red s:orange s:yellow s:green s:cyan s:blue s:magenta s:brown
unlet s:gui00 s:gui01 s:gui02 s:gui03 s:gui04 s:gui05 s:gui06 s:gui07 s:gui08 s:gui09 s:gui0A s:gui0B s:gui0C s:gui0D s:gui0E s:gui0F

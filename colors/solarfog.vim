"
"        ┏━┓┏━┓╻  ┏━┓┏━┓┏━╸┏━┓┏━╸
"        ┗━┓┃ ┃┃  ┣━┫┣┳┛┣╸ ┃ ┃┃╺┓
"        ┗━┛┗━┛┗━╸╹ ╹╹┗╸╹  ┗━┛┗━┛
"
" by Vladimir Sotskov
" https://github.com/VSngg/solarfog.vim

scriptencoding utf-8

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="solarfog"

" ==========================
" Highlighting Function
" ==========================
"  >> (inspired by https://github.com/jaredgorski/fogbell.vim)
fun! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" ==========================
" Color Variables
" ==========================
let s:voidGray3   = {'gui': '#74888d', 'cterm256': '242'}
let s:none        = {'gui': 'NONE', 'cterm256': 'NONE'}
let s:base03      = {'gui': '#002b36', 'cterm256': '234'}
let s:base02      = {'gui': '#073642', 'cterm256': '235'}
let s:base01      = {'gui': '#586e75', 'cterm256': '239'}
let s:base00      = {'gui': '#657b83', 'cterm256': '240'}
let s:base0       = {'gui': '#839496', 'cterm256': '244'}
let s:base1       = {'gui': '#93a1a1', 'cterm256': '245'}
let s:base2       = {'gui': '#eee8d5', 'cterm256': '187'}
let s:base3       = {'gui': '#fdf6e3', 'cterm256': '230'}
let s:yellow      = {'gui': '#b58900', 'cterm256': '136'}
let s:orange      = {'gui': '#cb4b16', 'cterm256': '166'}
let s:red         = {'gui': '#dc322f', 'cterm256': '124'}
let s:magenta     = {'gui': '#d33682', 'cterm256': '125'}
let s:violet      = {'gui': '#6c71c4', 'cterm256': '61' }
let s:blue        = {'gui': '#268bd2', 'cterm256': '33' }
let s:cyan        = {'gui': '#2aa198', 'cterm256': '37' }

" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:base02, 'none')
call <sid>hi('Cursor', s:base03, s:base0, 'none')
call <sid>hi('CursorColumn', s:none, s:base02, 'none')
call <sid>hi('CursorLine', s:none, s:base02, 'none')
call <sid>hi('CursorLineNr', s:base0, s:base01, 'none')
call <sid>hi('Directory', s:base0, s:base03, 'none')
call <sid>hi('FoldColumn', s:none, s:base02, 'none')
call <sid>hi('Folded', s:voidGray3, s:none, 'none')
call <sid>hi('IncSearch', s:base03, s:cyan, 'none')
call <sid>hi('LineNr', s:voidGray3, s:base02, 'none')
call <sid>hi('MatchParen', s:base0, s:orange, 'none')
call <sid>hi('Normal', s:base0, s:base03, 'none')
call <sid>hi('Pmenu', s:none, s:base02, 'none')
call <sid>hi('PmenuSel', s:none, s:base00, 'none')
call <sid>hi('Search', s:base03, s:yellow, 'none')
call <sid>hi('SignColumn', s:none, s:base02, 'none')
call <sid>hi('StatusLine', s:base03, s:base0, 'none')
call <sid>hi('StatusLineNC', s:voidGray3, s:base02, 'none')
call <sid>hi('VertSplit', s:base03, s:voidGray3, 'none')
call <sid>hi('Visual', s:none, s:base00, 'none')

" General
call <sid>hi('Boolean', s:base0, s:none, 'none')
call <sid>hi('Character', s:base0, s:none, 'none')
call <sid>hi('Comment', s:base01, s:none, 'none')
call <sid>hi('Conditional', s:base0, s:none, 'none')
call <sid>hi('Constant', s:base0, s:none, 'none')
call <sid>hi('Define', s:base0, s:none, 'none')
call <sid>hi('DiffAdd', s:base03, s:cyan, 'none')
call <sid>hi('DiffChange', s:base03, s:yellow, 'none')
call <sid>hi('DiffDelete', s:base0, s:red, 'none')
call <sid>hi('DiffText', s:base01, s:blue, 'none')
call <sid>hi('ErrorMsg', s:base0, s:red, 'none')
call <sid>hi('Float', s:base0, s:none, 'none')
call <sid>hi('Function', s:base0, s:none, 'none')
call <sid>hi('Identifier', s:base0, s:none, 'none')
call <sid>hi('Keyword', s:base0, s:none, 'none')
call <sid>hi('Label', s:base0, s:none, 'none')
call <sid>hi('NonText', s:voidGray3, s:none, 'none')
call <sid>hi('Number', s:base0, s:none, 'none')
call <sid>hi('Operator', s:base0, s:none, 'none')
call <sid>hi('PreProc', s:base0, s:none, 'none')
call <sid>hi('Special', s:base0, s:none, 'none')
call <sid>hi('SpecialKey', s:base0, s:none, 'none')
call <sid>hi('SpellBad', s:orange, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:base0, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:base0, s:none, 'undercurl')
call <sid>hi('Statement', s:base0, s:none, 'none')
call <sid>hi('StorageClass', s:base0, s:none, 'none')
call <sid>hi('String', s:base0, s:none, 'none')
call <sid>hi('Tag', s:base0, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:voidGray3, s:none, 'inverse,bold')
call <sid>hi('Type', s:none, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:base0, s:red, 'none')

" Diff Mode
if &diff
  call <sid>hi('DiffAdd', s:base03, s:cyan, 'none')
  call <sid>hi('DiffChange', s:base03, s:yellow, 'none')
  call <sid>hi('DiffDelete', s:orange, s:red, 'none')
  call <sid>hi('DiffText', s:base01, s:blue, 'none')
else
  call <sid>hi('DiffAdd', s:cyan, s:none, 'none')
  call <sid>hi('DiffChange', s:yellow, s:none, 'none')
  call <sid>hi('DiffDelete', s:orange, s:none, 'none')
  call <sid>hi('DiffText', s:base0, s:blue, 'none')
endif

" ------------
" Languages
" ------------

" C
call <sid>hi('cConstant', s:base0, s:none, 'none')
call <sid>hi('cFormat', s:base0, s:none, 'none')
call <sid>hi('cMulti', s:base0, s:none, 'none')
call <sid>hi('cNumbers', s:base0, s:none, 'none')
call <sid>hi('cOperator', s:base0, s:none, 'none')
call <sid>hi('cSpecial', s:base0, s:none, 'none')
call <sid>hi('cSpecialCharacter', s:base0, s:none, 'none')
call <sid>hi('cStatement', s:base0, s:none, 'none')
call <sid>hi('cStorageClass', s:base0, s:none, 'none')
call <sid>hi('cString', s:base0, s:none, 'none')
call <sid>hi('cStructure', s:base0, s:none, 'none')
call <sid>hi('cType', s:base0, s:none, 'none')

" C++
call <sid>hi('cppConstant', s:base0, s:none, 'none')
call <sid>hi('cppFormat', s:base0, s:none, 'none')
call <sid>hi('cppMulti', s:base0, s:none, 'none')
call <sid>hi('cppNumbers', s:base0, s:none, 'none')
call <sid>hi('cppOperator', s:base0, s:none, 'none')
call <sid>hi('cppSpecial', s:base0, s:none, 'none')
call <sid>hi('cppSpecialCharacter', s:base0, s:none, 'none')
call <sid>hi('cppStatement', s:base0, s:none, 'none')
call <sid>hi('cppStorageClass', s:base0, s:none, 'none')
call <sid>hi('cppString', s:base0, s:none, 'none')
call <sid>hi('cppStructure', s:base0, s:none, 'none')
call <sid>hi('cppType', s:base0, s:none, 'none')

" CSS
call <sid>hi('cssAttr', s:base0, s:none, 'none')
call <sid>hi('cssAttrRegion', s:base0, s:none, 'none')
call <sid>hi('cssBraces', s:base0, s:none, 'none')
call <sid>hi('cssBrowserPrefix', s:base0, s:none, 'none')
call <sid>hi('cssClassName', s:base0, s:none, 'none')
call <sid>hi('cssClassNameDot', s:base0, s:none, 'none')
call <sid>hi('cssClassSelectorDot', s:base0, s:none, 'none')
call <sid>hi('cssColor', s:base0, s:none, 'none')
call <sid>hi('cssCommonAttr', s:base0, s:none, 'none')
call <sid>hi('cssCustomProperty', s:base0, s:none, 'none')
call <sid>hi('cssDefinition', s:base0, s:none, 'none')
call <sid>hi('cssFunction', s:base0, s:none, 'none')
call <sid>hi('cssFunctionName', s:base0, s:none, 'none')
call <sid>hi('cssIdentifier', s:base0, s:none, 'none')
call <sid>hi('cssImportant', s:base0, s:none, 'none')
call <sid>hi('cssInclude', s:base0, s:none, 'none')
call <sid>hi('cssMedia', s:base0, s:none, 'none')
call <sid>hi('cssMediaBlock', s:base0, s:none, 'none')
call <sid>hi('cssProp', s:base0, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:base0, s:none, 'none')
call <sid>hi('cssTextProp', s:base0, s:none, 'none')
call <sid>hi('cssAnimationProp', s:base0, s:none, 'none')
call <sid>hi('cssUIProp', s:base0, s:none, 'none')
call <sid>hi('cssTransformProp', s:base0, s:none, 'none')
call <sid>hi('cssTransitionProp', s:base0, s:none, 'none')
call <sid>hi('cssPrintProp', s:base0, s:none, 'none')
call <sid>hi('cssPositioningProp', s:base0, s:none, 'none')
call <sid>hi('cssBoxProp', s:base0, s:none, 'none')
call <sid>hi('cssFontDescriptorProp', s:base0, s:none, 'none')
call <sid>hi('cssFlexibleBoxProp', s:base0, s:none, 'none')
call <sid>hi('cssBorderOutlineProp', s:base0, s:none, 'none')
call <sid>hi('cssBackgroundProp', s:base0, s:none, 'none')
call <sid>hi('cssMarginProp', s:base0, s:none, 'none')
call <sid>hi('cssListProp', s:base0, s:none, 'none')
call <sid>hi('cssTableProp', s:base0, s:none, 'none')
call <sid>hi('cssFontProp', s:base0, s:none, 'none')
call <sid>hi('cssPaddingProp', s:base0, s:none, 'none')
call <sid>hi('cssDimensionProp', s:base0, s:none, 'none')
call <sid>hi('cssRenderProp', s:base0, s:none, 'none')
call <sid>hi('cssColorProp', s:base0, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:base0, s:none, 'none')
call <sid>hi('cssPropDefinition', s:base0, s:none, 'none')
call <sid>hi('cssPseudoClass', s:base0, s:none, 'none')
call <sid>hi('cssPseudoClassId', s:base0, s:none, 'none')
call <sid>hi('cssPseudoClassLang', s:base0, s:none, 'none')
call <sid>hi('cssSelectorOperator', s:base0, s:none, 'none')
call <sid>hi('cssTagName', s:base0, s:none, 'none')
call <sid>hi('cssURL', s:base0, s:none, 'none')
call <sid>hi('cssUnitDecorators', s:base0, s:none, 'none')
call <sid>hi('cssUnits', s:base0, s:none, 'none')
call <sid>hi('cssValueLength', s:base0, s:none, 'none')
call <sid>hi('cssValueNumber', s:base0, s:none, 'none')
call <sid>hi('cssValueKeyword', s:base0, s:none, 'none')
call <sid>hi('cssVendor', s:base0, s:none, 'none')

" HTML
call <sid>hi('htmlArg', s:base0, s:none, 'none')
call <sid>hi('htmlEndTag', s:base0, s:none, 'none')
call <sid>hi('htmlSpecialChar', s:base0, s:none, 'none')
call <sid>hi('htmlSpecialTagName', s:base0, s:none, 'none')
call <sid>hi('htmlTag', s:base0, s:none, 'none')
call <sid>hi('htmlTagName', s:base0, s:none, 'none')

" JavaScript
call <sid>hi('javaScript', s:base0, s:none, 'none')
call <sid>hi('javaScriptFunction', s:base0, s:none, 'none')
call <sid>hi('javaScriptIdentifier', s:base0, s:none, 'none')
call <sid>hi('javaScriptMember', s:base0, s:none, 'none')
call <sid>hi('javaScriptNull', s:base0, s:none, 'none')
call <sid>hi('javaScriptNumber', s:base0, s:none, 'none')
call <sid>hi('javaScriptNumber', s:base0, s:none, 'none')
call <sid>hi('javaScriptParens', s:base0, s:none, 'none')
call <sid>hi('javaScriptSpecial', s:base0, s:none, 'none')
call <sid>hi('javaScriptStringS', s:base0, s:none, 'none')
call <sid>hi('javascriptArrayMethod', s:base0, s:none, 'none')
call <sid>hi('javascriptArrayStaticMethod', s:base0, s:none, 'none')
call <sid>hi('javascriptArrowFunc', s:base0, s:none, 'none')
call <sid>hi('javascriptAsyncFuncKeyword', s:base0, s:none, 'none')
call <sid>hi('javascriptAwaitFuncKeyword', s:base0, s:none, 'none')
call <sid>hi('javascriptBraces', s:base0, s:none, 'none')
call <sid>hi('javascriptBrackets', s:base0, s:none, 'none')
call <sid>hi('javascriptCacheMethod', s:base0, s:none, 'none')
call <sid>hi('javascriptClassExtends', s:base0, s:none, 'none')
call <sid>hi('javascriptClassKeyword', s:base0, s:none, 'none')
call <sid>hi('javascriptClassName', s:base0, s:none, 'none')
call <sid>hi('javascriptClassSuperName', s:base0, s:none, 'none')
call <sid>hi('javascriptDOMElemAttrs', s:base0, s:none, 'none')
call <sid>hi('javascriptDOMEventMethod', s:base0, s:none, 'none')
call <sid>hi('javascriptDOMNodeMethod', s:base0, s:none, 'none')
call <sid>hi('javascriptDOMStorageMethod', s:base0, s:none, 'none')
call <sid>hi('javascriptDateMethod', s:base0, s:none, 'none')
call <sid>hi('javascriptDefault', s:base0, s:none, 'none')
call <sid>hi('javascriptDocNamedParamType', s:base1, s:none, 'none')
call <sid>hi('javascriptDocNotation', s:base1, s:none, 'none')
call <sid>hi('javascriptDocParamName', s:base1, s:none, 'none')
call <sid>hi('javascriptDocParamType', s:base1, s:none, 'none')
call <sid>hi('javascriptDocTags', s:base1, s:none, 'none')
call <sid>hi('javascriptEndColons', s:base0, s:none, 'none')
call <sid>hi('javascriptExport', s:base0, s:none, 'none')
call <sid>hi('javascriptHeadersMethod', s:base0, s:none, 'none')
call <sid>hi('javascriptIdentifierName', s:base0, s:none, 'none')
call <sid>hi('javascriptImport', s:base0, s:none, 'none')
call <sid>hi('javascriptLabel', s:base0, s:none, 'none')
call <sid>hi('javascriptLogicSymbols', s:base0, s:none, 'none')
call <sid>hi('javascriptMathStaticMethod', s:base0, s:none, 'none')
call <sid>hi('javascriptObjectLabel', s:base0, s:none, 'none')
call <sid>hi('javascriptOperator', s:base0, s:none, 'none')
call <sid>hi('javascriptPropertyName', s:base0, s:none, 'none')
call <sid>hi('javascriptStringMethod', s:base0, s:none, 'none')
call <sid>hi('javascriptVariable', s:base0, s:none, 'none')
call <sid>hi('javascriptYield', s:base0, s:none, 'none')
call <sid>hi('jsArrowFunction', s:base0, s:none, 'none')
call <sid>hi('jsClassDefinition', s:base0, s:none, 'none')
call <sid>hi('jsClassKeyword', s:base0, s:none, 'none')
call <sid>hi('jsDecorator', s:base0, s:none, 'none')
call <sid>hi('jsDestructuringBlock', s:base0, s:none, 'none')
call <sid>hi('jsExportDefault', s:base0, s:none, 'none')
call <sid>hi('jsExtendsKeyword', s:base0, s:none, 'none')
call <sid>hi('jsFuncArgs', s:base0, s:none, 'none')
call <sid>hi('jsFuncCall', s:base0, s:none, 'none')
call <sid>hi('jsFunction', s:base0, s:none, 'none')
call <sid>hi('jsGlobalObjects', s:base0, s:none, 'none')
call <sid>hi('jsModuleKeyword', s:base0, s:none, 'none')
call <sid>hi('jsNull', s:base0, s:none, 'none')
call <sid>hi('jsObjectBraces', s:base0, s:none, 'none')
call <sid>hi('jsObjectKey', s:base0, s:none, 'none')
call <sid>hi('jsObjectStringKey', s:base0, s:none, 'none')
call <sid>hi('jsRegexpString', s:base0, s:none, 'none')
call <sid>hi('jsReturn', s:base0, s:none, 'none')
call <sid>hi('jsSpecial', s:base0, s:none, 'none')
call <sid>hi('jsSuper', s:base0, s:none, 'none')
call <sid>hi('jsTemplateBraces', s:base0, s:none, 'none')
call <sid>hi('jsTemplateString', s:base0, s:none, 'none')
call <sid>hi('jsThis', s:base0, s:none, 'none')
call <sid>hi('jsVariableDef', s:base0, s:none, 'none')

" JSX
call <sid>hi('jsxAttrib', s:base0, s:none, 'none')
call <sid>hi('jsxAttributeBraces', s:base0, s:none, 'none')
call <sid>hi('jsxCloseString', s:base0, s:none, 'none')
call <sid>hi('jsxCloseTag', s:base0, s:none, 'none')
call <sid>hi('jsxString', s:base0, s:none, 'none')
call <sid>hi('jsxTag', s:base0, s:none, 'none')
call <sid>hi('jsxTagName', s:base0, s:none, 'none')

" Ruby
call <sid>hi('rubyBlockParameter', s:base0, s:none, 'none')
call <sid>hi('rubyClass', s:base0, s:none, 'none')
call <sid>hi('rubyClassVariable', s:base0, s:none, 'none')
call <sid>hi('rubyConstant', s:base0, s:none, 'none')
call <sid>hi('rubyControl', s:base0, s:none, 'none')
call <sid>hi('rubyEscape', s:base0, s:none, 'none')
call <sid>hi('rubyException', s:base0, s:none, 'none')
call <sid>hi('rubyFunction', s:base0, s:none, 'none')
call <sid>hi('rubyGlobalVariable', s:base0, s:none, 'none')
call <sid>hi('rubyInclude', s:base0, s:none, 'none')
call <sid>hi('rubyInstanceVariable', s:base0, s:none, 'none')
call <sid>hi('rubyInterpolationDelimiter', s:none, s:none, 'none')
call <sid>hi('rubyOperator', s:base0, s:none, 'none')
call <sid>hi('rubyPseudoVariable', s:base0, s:none, 'none')
call <sid>hi('rubyRegexp', s:base0, s:none, 'none')
call <sid>hi('rubyRegexpDelimiter', s:base0, s:none, 'none')
call <sid>hi('rubyStringDelimiter', s:base0, s:none, 'none')
call <sid>hi('rubySymbol', s:base0, s:none, 'none')

" Ruby (Embedded)
call <sid>hi('erubyComment', s:voidGray3, s:none, 'none')
call <sid>hi('erubyDelimiter', s:none, s:none, 'none')
call <sid>hi('erubyRailsMethod', s:base0, s:none, 'none')

" Ruby on Rails
call <sid>hi('rubyRailsARAssociationMethod', s:base0, s:none, 'none')
call <sid>hi('rubyRailsARMethod', s:base0, s:none, 'none')
call <sid>hi('rubyRailsMethod', s:base0, s:none, 'none')
call <sid>hi('rubyRailsRenderMethod', s:base0, s:none, 'none')
call <sid>hi('rubyRailsUserClass', s:base0, s:none, 'none')

" XML
call <sid>hi('xmlAttrib', s:base0, s:none, 'none')
call <sid>hi('xmlEndTag', s:base0, s:none, 'none')
call <sid>hi('xmlTag', s:base0, s:none, 'none')
call <sid>hi('xmlTagName', s:base0, s:none, 'none')

" YAML
call <sid>hi('yamlAlias', s:base0, s:none, 'none')
call <sid>hi('yamlAnchor', s:base0, s:none, 'none')
call <sid>hi('yamlDocumentHeader', s:base0, s:none, 'none')
call <sid>hi('yamlKey', s:base0, s:none, 'none')



" ------------
" Plugins
" ------------

" todo.txt
call <sid>hi('TodoContext', s:base0, s:none, 'none')
call <sid>hi('TodoDate', s:base0, s:none, 'none')
call <sid>hi('TodoDone', s:voidGray3, s:none, 'none')
call <sid>hi('TodoPriorityA', s:base0, s:none, 'none')
call <sid>hi('TodoPriorityB', s:base0, s:none, 'none')
call <sid>hi('TodoPriorityC', s:base0, s:none, 'none')
call <sid>hi('TodoProject', s:base0, s:none, 'none')

" Buftabline
call <sid>hi('BufTabLineActive', s:base0, s:base00, 'none')
call <sid>hi('BufTabLineCurrent', s:base03, s:base1, 'none')
call <sid>hi('BufTabLineFill', s:base03, s:base03, 'none')
call <sid>hi('BufTabLineHidden', s:voidGray3, s:base02, 'none')


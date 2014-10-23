" Vim color file
" Converted from Textmate theme Yosemite using Coloration v0.3.3 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Yosemite"

hi Cursor ctermfg=234 ctermbg=231 cterm=NONE guifg=#1a181a guibg=#f6f6f6 gui=NONE
hi Visual ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#333333 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#302e30 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#302e30 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#302e30 gui=NONE
hi LineNr ctermfg=245 ctermbg=236 cterm=NONE guifg=#888788 guibg=#302e30 gui=NONE
hi VertSplit ctermfg=240 ctermbg=240 cterm=NONE guifg=#5a585a guibg=#5a585a gui=NONE
hi MatchParen ctermfg=77 ctermbg=NONE cterm=underline guifg=#52ea65 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=240 cterm=bold guifg=#f6f6f6 guibg=#5a585a gui=bold
hi StatusLineNC ctermfg=231 ctermbg=240 cterm=NONE guifg=#f6f6f6 guibg=#5a585a gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#333333 gui=NONE
hi IncSearch ctermfg=234 ctermbg=242 cterm=NONE guifg=#1a181a guibg=#6d6b6c gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ff970e guibg=NONE gui=NONE
hi Folded ctermfg=242 ctermbg=234 cterm=NONE guifg=#6d6b6c guibg=#1a181a gui=NONE

hi Normal ctermfg=231 ctermbg=234 cterm=NONE guifg=#f6f6f6 guibg=#1a181a gui=NONE
hi Boolean ctermfg=221 ctermbg=NONE cterm=NONE guifg=#f6cf3f guibg=NONE gui=NONE
hi Character ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ff970e guibg=NONE gui=NONE
hi Comment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#6d6b6c guibg=NONE gui=NONE
hi Conditional ctermfg=77 ctermbg=NONE cterm=NONE guifg=#52ea65 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=77 ctermbg=NONE cterm=NONE guifg=#52ea65 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f6f6f6 guibg=#44800a gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#880505 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f6f6f6 guibg=#1d3151 gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f6f6f6 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=176 ctermbg=NONE cterm=NONE guifg=#cf88e0 guibg=NONE gui=NONE
hi Function ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4ab8f2 guibg=NONE gui=NONE
hi Identifier ctermfg=113 ctermbg=NONE cterm=NONE guifg=#76d863 guibg=NONE gui=NONE
hi Keyword ctermfg=77 ctermbg=NONE cterm=NONE guifg=#52ea65 guibg=NONE gui=NONE
hi Label ctermfg=242 ctermbg=NONE cterm=NONE guifg=#6d6b6c guibg=NONE gui=NONE
hi NonText ctermfg=236 ctermbg=235 cterm=NONE guifg=#333333 guibg=#252325 gui=NONE
hi Number ctermfg=176 ctermbg=NONE cterm=NONE guifg=#cf88e0 guibg=NONE gui=NONE
hi Operator ctermfg=77 ctermbg=NONE cterm=NONE guifg=#52ea65 guibg=NONE gui=NONE
hi PreProc ctermfg=77 ctermbg=NONE cterm=NONE guifg=#52ea65 guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f6f6f6 guibg=NONE gui=NONE
hi SpecialKey ctermfg=236 ctermbg=236 cterm=NONE guifg=#333333 guibg=#302e30 gui=NONE
hi Statement ctermfg=77 ctermbg=NONE cterm=NONE guifg=#52ea65 guibg=NONE gui=NONE
hi StorageClass ctermfg=113 ctermbg=NONE cterm=NONE guifg=#76d863 guibg=NONE gui=NONE
hi String ctermfg=242 ctermbg=NONE cterm=NONE guifg=#6d6b6c guibg=NONE gui=NONE
hi Tag ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ec4d43 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f6f6f6 guibg=NONE gui=bold
hi Todo ctermfg=242 ctermbg=NONE cterm=inverse,bold guifg=#6d6b6c guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=77 ctermbg=NONE cterm=NONE guifg=#52ea65 guibg=NONE gui=NONE
hi rubyFunction ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4ab8f2 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=176 ctermbg=NONE cterm=NONE guifg=#cf88e0 guibg=NONE gui=NONE
hi rubyConstant ctermfg=77 ctermbg=NONE cterm=NONE guifg=#52ea65 guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=242 ctermbg=NONE cterm=NONE guifg=#6d6b6c guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ff970e guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4ab8f2 guibg=NONE gui=NONE
hi rubyInclude ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ff970e guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4ab8f2 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ec4d43 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ec4d43 guibg=NONE gui=NONE
hi rubyEscape ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ff970e guibg=NONE gui=NONE
hi rubyControl ctermfg=77 ctermbg=NONE cterm=NONE guifg=#52ea65 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=77 ctermbg=NONE cterm=NONE guifg=#52ea65 guibg=NONE gui=NONE
hi rubyException ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ff970e guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=176 ctermbg=NONE cterm=NONE guifg=#cf88e0 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=221 ctermbg=NONE cterm=NONE guifg=#f6cf3f guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4ab8f2 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4ab8f2 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4ab8f2 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4ab8f2 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=221 ctermbg=NONE cterm=NONE guifg=#f6cf3f guibg=NONE gui=NONE
hi erubyComment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#6d6b6c guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4ab8f2 guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ff970e guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=176 ctermbg=NONE cterm=NONE guifg=#cf88e0 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4ab8f2 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=231 ctermbg=NONE cterm=NONE guifg=#ececec guibg=NONE gui=NONE
hi yamlKey ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ec4d43 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4ab8f2 guibg=NONE gui=NONE
hi yamlAlias ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4ab8f2 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=242 ctermbg=NONE cterm=NONE guifg=#6d6b6c guibg=NONE gui=NONE
hi cssURL ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ff970e guibg=NONE gui=NONE
hi cssFunctionName ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f6f6f6 guibg=NONE gui=NONE
hi cssColor ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ec4d43 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ff970e guibg=NONE gui=NONE
hi cssClassName ctermfg=77 ctermbg=NONE cterm=NONE guifg=#52ea65 guibg=NONE gui=NONE
hi cssValueLength ctermfg=176 ctermbg=NONE cterm=NONE guifg=#cf88e0 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssBraces ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f6f6f6 guibg=NONE gui=NONE
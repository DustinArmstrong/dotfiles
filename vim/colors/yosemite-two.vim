" Vim color file
" Converted from Textmate theme Yosemite using Coloration v0.3.3
" (http://github.com/sickill/coloration)
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Yosemite-Two"

hi Cursor ctermfg=234 ctermbg=231 cterm=NONE guifg=#1b1a1a guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=244 cterm=NONE guifg=NONE guibg=#818082 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#313030 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#313030 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#313030 gui=NONE
hi LineNr ctermfg=245 ctermbg=236 cterm=NONE guifg=#898888 guibg=#313030 gui=NONE
hi VertSplit ctermfg=240 ctermbg=240 cterm=NONE guifg=#5b5a5a guibg=#5b5a5a gui=NONE
hi MatchParen ctermfg=167 ctermbg=NONE cterm=underline guifg=#e75f51 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=240 cterm=bold guifg=#f6f6f6 guibg=#5b5a5a gui=bold
hi StatusLineNC ctermfg=231 ctermbg=240 cterm=NONE guifg=#f6f6f6 guibg=#5b5a5a gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=244 cterm=NONE guifg=NONE guibg=#818082 gui=NONE
hi IncSearch ctermfg=234 ctermbg=221 cterm=NONE guifg=#1b1a1a guibg=#fdd540 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=176 ctermbg=NONE cterm=NONE guifg=#d58ce7 guibg=NONE gui=NONE
hi Folded ctermfg=242 ctermbg=234 cterm=NONE guifg=#6d6b6c guibg=#1b1a1a gui=NONE

hi Normal ctermfg=231 ctermbg=234 cterm=NONE guifg=#f6f6f6 guibg=#1b1a1a gui=NONE
hi Boolean ctermfg=176 ctermbg=NONE cterm=NONE guifg=#d58ce7 guibg=NONE gui=NONE
hi Character ctermfg=176 ctermbg=NONE cterm=NONE guifg=#d58ce7 guibg=NONE gui=NONE
hi Comment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#6d6b6c guibg=NONE gui=NONE
hi Conditional ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e75f51 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e75f51 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f6f6f6 guibg=#44800a gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#890505 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f6f6f6 guibg=#1e3251 gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f6f6f6 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=254 ctermbg=203 cterm=NONE guifg=#e4e3e4 guibg=#f14f45 gui=NONE
hi WarningMsg ctermfg=254 ctermbg=203 cterm=NONE guifg=#e4e3e4 guibg=#f14f45 gui=NONE
hi Float ctermfg=176 ctermbg=NONE cterm=NONE guifg=#d58ce7 guibg=NONE gui=NONE
hi Function ctermfg=113 ctermbg=NONE cterm=NONE guifg=#77df61 guibg=NONE gui=NONE
hi Identifier ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4cbcf9 guibg=NONE gui=italic
hi Keyword ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e75f51 guibg=NONE gui=NONE
hi Label ctermfg=221 ctermbg=NONE cterm=NONE guifg=#fdd540 guibg=NONE gui=NONE
hi NonText ctermfg=244 ctermbg=235 cterm=NONE guifg=#828082 guibg=#262525 gui=NONE
hi Number ctermfg=176 ctermbg=NONE cterm=NONE guifg=#d58ce7 guibg=NONE gui=NONE
hi Operator ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e75f51 guibg=NONE gui=NONE
hi PreProc ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e75f51 guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f6f6f6 guibg=NONE gui=NONE
hi SpecialKey ctermfg=244 ctermbg=236 cterm=NONE guifg=#828082 guibg=#313030 gui=NONE
hi Statement ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e75f51 guibg=NONE gui=NONE
hi StorageClass ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4cbcf9 guibg=NONE gui=italic
hi String ctermfg=221 ctermbg=NONE cterm=NONE guifg=#fdd540 guibg=NONE gui=NONE
hi Tag ctermfg=203 ctermbg=NONE cterm=NONE guifg=#f24f45 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f6f6f6 guibg=NONE gui=bold
hi Todo ctermfg=242 ctermbg=NONE cterm=inverse,bold guifg=#6d6b6c guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e75f51 guibg=NONE gui=NONE
hi rubyFunction ctermfg=113 ctermbg=NONE cterm=NONE guifg=#77df61 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=176 ctermbg=NONE cterm=NONE guifg=#d58ce7 guibg=NONE gui=NONE
hi rubyConstant ctermfg=221 ctermbg=NONE cterm=NONE guifg=#fbd340 guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=221 ctermbg=NONE cterm=NONE guifg=#fdd540 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=176 ctermbg=NONE cterm=NONE guifg=#d48be5 guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e75f51 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=221 ctermbg=NONE cterm=NONE guifg=#fdd540 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=221 ctermbg=NONE cterm=NONE guifg=#fdd540 guibg=NONE gui=NONE
hi rubyEscape ctermfg=176 ctermbg=NONE cterm=NONE guifg=#d58ce7 guibg=NONE gui=NONE
hi rubyControl ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e75f51 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e75f51 guibg=NONE gui=NONE
hi rubyException ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e75f51 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=221 ctermbg=NONE cterm=NONE guifg=#fbd340 guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4cbcf9 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4cbcf9 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4cbcf9 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4cbcf9 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#6d6b6c guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4cbcf9 guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=176 ctermbg=NONE cterm=NONE guifg=#d58ce7 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4cbcf9 guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4cbcf9 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=203 ctermbg=NONE cterm=NONE guifg=#f24f45 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=221 ctermbg=NONE cterm=NONE guifg=#fdd540 guibg=NONE gui=NONE
hi cssURL ctermfg=176 ctermbg=NONE cterm=NONE guifg=#d48be5 guibg=NONE gui=italic
hi cssFunctionName ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4cbcf9 guibg=NONE gui=NONE
hi cssColor ctermfg=176 ctermbg=NONE cterm=NONE guifg=#d58ce7 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=113 ctermbg=NONE cterm=NONE guifg=#77df61 guibg=NONE gui=NONE
hi cssClassName ctermfg=113 ctermbg=NONE cterm=NONE guifg=#77df61 guibg=NONE gui=NONE
hi cssValueLength ctermfg=176 ctermbg=NONE cterm=NONE guifg=#d58ce7 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=75 ctermbg=NONE cterm=NONE guifg=#4cbcf9 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

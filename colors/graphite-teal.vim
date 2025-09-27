" ~/.config/nvim/colors/graphite-teal.vim
" Graphite Theme - Teal Variant
" Grayscale with Teal Undertones

" Clear existing highlights
highlight clear
if exists("syntax_on")
  syntax reset
endif

" Set theme name
let g:colors_name = "graphite-teal"

" =============================================
" COLOR PALETTE - Teal Base with Grayscale Range
" =============================================
let s:black        = "#0A0A0A"  " Pure black
let s:bg_dark      = "#1E1E1E"  " Main background
let s:bg           = "#2B2B2B"  " Secondary background
let s:bg_light     = "#3A3A3A"  " Highlighted background
let s:bg_lighter   = "#4B4B4B"  " Cursor line, selections
let s:gray_dark    = "#5C5C5C"  " Dark gray elements
let s:gray_mid     = "#7E7E7E"  " Mid gray for secondary text
let s:gray_light   = "#A0A0A0"  " Light gray for comments
let s:fg_dim       = "#B8B8B8"  " Dimmed foreground
let s:fg           = "#D1D1D1"  " Main foreground
let s:fg_bright    = "#EEEEEE"  " Bright foreground
let s:white        = "#FFFFFF"  " Pure white

" Teal accents for special elements
let s:teal_dark    = "#00695C"  " Dark teal for special elements
let s:teal_mid     = "#00897B"  " Mid teal for keywords
let s:teal_light   = "#80CBC4"  " Light teal for functions

" =============================================
" BASE UI ELEMENTS
" =============================================
execute "highlight Normal       guifg=" . s:fg . " guibg=" . s:bg_dark
execute "highlight NormalFloat  guifg=" . s:fg . " guibg=" . s:bg
execute "highlight NormalNC     guifg=" . s:fg_dim . " guibg=" . s:bg_dark

" Cursor and Lines
execute "highlight Cursor       guifg=" . s:bg_dark . " guibg=" . s:fg_bright
execute "highlight CursorLine   guibg=" . s:bg_light . " gui=NONE"
execute "highlight CursorColumn guibg=" . s:bg_light . " gui=NONE"
execute "highlight ColorColumn  guibg=" . s:bg_light

" Line Numbers
execute "highlight LineNr       guifg=" . s:gray_mid . " guibg=" . s:bg_dark
execute "highlight CursorLineNr guifg=" . s:fg_bright . " guibg=" . s:bg_light . " gui=bold"
execute "highlight SignColumn   guifg=" . s:gray_mid . " guibg=" . s:bg_dark

" Status and Tab Lines
execute "highlight StatusLine   guifg=" . s:fg . " guibg=" . s:bg . " gui=NONE"
execute "highlight StatusLineNC guifg=" . s:gray_mid . " guibg=" . s:bg_dark . " gui=NONE"
execute "highlight TabLine      guifg=" . s:gray_mid . " guibg=" . s:bg_dark . " gui=NONE"
execute "highlight TabLineFill  guifg=" . s:gray_mid . " guibg=" . s:bg_dark . " gui=NONE"
execute "highlight TabLineSel   guifg=" . s:fg_bright . " guibg=" . s:bg_light . " gui=bold"

" =============================================
" SYNTAX HIGHLIGHTING - Teal Accents
" =============================================
" Comments - Most subdued
execute "highlight Comment      guifg=" . s:gray_light . " gui=italic"
execute "highlight SpecialComment guifg=" . s:gray_light . " gui=italic,bold"
execute "highlight Todo         guifg=" . s:fg_bright . " guibg=" . s:bg_light . " gui=italic,bold"

" Keywords and Control Flow - Teal for emphasis
execute "highlight Keyword      guifg=" . s:teal_mid . " gui=bold"
execute "highlight Conditional  guifg=" . s:teal_mid . " gui=bold"
execute "highlight Repeat       guifg=" . s:teal_mid . " gui=bold"
execute "highlight Statement    guifg=" . s:teal_mid . " gui=bold"
execute "highlight Exception    guifg=" . s:teal_mid . " gui=bold"

" Functions and Identifiers - Teal but not bold
execute "highlight Function     guifg=" . s:teal_light . " gui=NONE"
execute "highlight Identifier   guifg=" . s:fg_dim . " gui=NONE"
execute "highlight Variable     guifg=" . s:fg_dim . " gui=NONE"

" Types and Constants - Slightly teal-tinted
execute "highlight Type         guifg=" . s:teal_mid . " gui=NONE"
execute "highlight Typedef      guifg=" . s:teal_mid . " gui=NONE"
execute "highlight Constant     guifg=" . s:fg_dim . " gui=NONE"
execute "highlight Number       guifg=" . s:fg_dim . " gui=NONE"
execute "highlight Boolean      guifg=" . s:fg_dim . " gui=NONE"
execute "highlight Float        guifg=" . s:fg_dim . " gui=NONE"

" Strings and Characters
execute "highlight String       guifg=" . s:fg . " gui=NONE"
execute "highlight Character    guifg=" . s:fg . " gui=NONE"
execute "highlight SpecialChar  guifg=" . s:teal_light . " gui=NONE"

" Operators and Punctuation
execute "highlight Operator     guifg=" . s:teal_mid . " gui=NONE"
execute "highlight Delimiter    guifg=" . s:gray_mid . " gui=NONE"
execute "highlight Special      guifg=" . s:teal_mid . " gui=NONE"

" Preprocessor
execute "highlight PreProc      guifg=" . s:teal_mid . " gui=NONE"
execute "highlight Include      guifg=" . s:teal_mid . " gui=bold"
execute "highlight Define       guifg=" . s:teal_mid . " gui=bold"
execute "highlight Macro        guifg=" . s:teal_mid . " gui=bold"

" =============================================
" VISUAL ELEMENTS
" =============================================
execute "highlight Visual       guibg=" . s:bg_lighter . " gui=NONE"
execute "highlight VisualNOS    guibg=" . s:bg_lighter . " gui=NONE"
execute "highlight Search       guifg=" . s:black . " guibg=" . s:fg_dim . " gui=bold"
execute "highlight IncSearch    guifg=" . s:black . " guibg=" . s:fg_bright . " gui=bold"
execute "highlight CurSearch    guifg=" . s:black . " guibg=" . s:white . " gui=bold"

" Selection and Matching
execute "highlight MatchParen   guifg=" . s:teal_light . " guibg=" . s:bg_lighter . " gui=bold"
execute "highlight Pmenu        guifg=" . s:fg . " guibg=" . s:bg
execute "highlight PmenuSel     guifg=" . s:teal_light . " guibg=" . s:bg_lighter . " gui=bold"
execute "highlight PmenuSbar    guibg=" . s:bg_light
execute "highlight PmenuThumb   guibg=" . s:gray_mid

" =============================================
" DIAGNOSTICS AND ERRORS
" =============================================
execute "highlight Error        guifg=" . s:fg_bright . " guibg=" . s:bg_dark . " gui=bold,undercurl"
execute "highlight ErrorMsg     guifg=" . s:fg_bright . " guibg=" . s:bg_dark . " gui=bold"
execute "highlight WarningMsg   guifg=" . s:fg . " gui=bold"
execute "highlight Question     guifg=" . s:fg . " gui=bold"
execute "highlight ModeMsg      guifg=" . s:fg . " gui=bold"
execute "highlight MoreMsg      guifg=" . s:fg . " gui=bold"

" LSP Diagnostics - Using underlines and teal accents
execute "highlight DiagnosticError guifg=" . s:fg_bright . " gui=undercurl"
execute "highlight DiagnosticWarn  guifg=" . s:fg . " gui=undercurl"
execute "highlight DiagnosticInfo  guifg=" . s:fg_dim . " gui=undercurl"
execute "highlight DiagnosticHint  guifg=" . s:gray_light . " gui=undercurl"

" =============================================
" DIFF HIGHLIGHTING
" =============================================
execute "highlight DiffAdd      guifg=" . s:teal_light . " guibg=" . s:bg_light . " gui=NONE"
execute "highlight DiffChange   guifg=" . s:fg . " guibg=" . s:bg_light . " gui=NONE"
execute "highlight DiffDelete   guifg=" . s:gray_mid . " guibg=" . s:bg_dark . " gui=NONE"
execute "highlight DiffText     guifg=" . s:teal_light . " guibg=" . s:bg_lighter . " gui=bold"

" =============================================
" TREE-SITTER SPECIFIC - Teal Accents
" =============================================
execute "highlight @comment           guifg=" . s:gray_light . " gui=italic"
execute "highlight @keyword           guifg=" . s:teal_mid . " gui=bold"
execute "highlight @keyword.function  guifg=" . s:teal_mid . " gui=bold"
execute "highlight @keyword.operator  guifg=" . s:teal_mid . " gui=bold"
execute "highlight @function          guifg=" . s:teal_light . " gui=NONE"
execute "highlight @function.builtin  guifg=" . s:teal_light . " gui=NONE"
execute "highlight @variable          guifg=" . s:fg_dim . " gui=NONE"
execute "highlight @variable.builtin  guifg=" . s:fg . " gui=NONE"
execute "highlight @string            guifg=" . s:fg . " gui=NONE"
execute "highlight @number            guifg=" . s:fg_dim . " gui=NONE"
execute "highlight @boolean           guifg=" . s:fg_dim . " gui=NONE"
execute "highlight @type              guifg=" . s:teal_mid . " gui=NONE"
execute "highlight @constant          guifg=" . s:fg_dim . " gui=NONE"

" =============================================
" PLUGIN SPECIFIC HIGHLIGHTS - Teal Accents
" =============================================
" Telescope
execute "highlight TelescopeNormal    guifg=" . s:fg . " guibg=" . s:bg
execute "highlight TelescopeBorder    guifg=" . s:gray_mid . " guibg=" . s:bg
execute "highlight TelescopeSelection guifg=" . s:teal_light . " guibg=" . s:bg_lighter . " gui=bold"

" NvimTree
execute "highlight NvimTreeNormal     guifg=" . s:fg . " guibg=" . s:bg_dark
execute "highlight NvimTreeFolderName guifg=" . s:teal_mid . " gui=bold"
execute "highlight NvimTreeOpenedFolderName guifg=" . s:teal_light . " gui=bold"

" Git Signs - Teal accents
execute "highlight GitSignsAdd       guifg=" . s:teal_light . " guibg=" . s:bg_dark
execute "highlight GitSignsChange    guifg=" . s:teal_mid . " guibg=" . s:bg_dark
execute "highlight GitSignsDelete    guifg=" . s:gray_mid . " guibg=" . s:bg_dark

" =============================================
" SPECIAL CASES - Teal Accents
" =============================================
execute "highlight NonText      guifg=" . s:gray_dark . " gui=NONE"
execute "highlight Whitespace   guifg=" . s:gray_dark . " gui=NONE"
execute "highlight SpecialKey   guifg=" . s:gray_dark . " gui=NONE"
execute "highlight Directory    guifg=" . s:teal_mid . " gui=bold"
execute "highlight Title        guifg=" . s:teal_light . " gui=bold"
execute "highlight Underlined   guifg=" . s:teal_mid . " gui=underline"
execute "highlight Conceal      guifg=" . s:gray_mid . " guibg=" . s:bg_dark

" Folding
execute "highlight Folded       guifg=" . s:gray_light . " guibg=" . s:bg_light . " gui=italic"
execute "highlight FoldColumn   guifg=" . s:gray_mid . " guibg=" . s:bg_dark

" Spelling
execute "highlight SpellBad     guifg=" . s:teal_mid . " gui=undercurl"
execute "highlight SpellCap     guifg=" . s:teal_mid . " gui=undercurl"
execute "highlight SpellLocal   guifg=" . s:teal_mid . " gui=undercurl"
execute "highlight SpellRare    guifg=" . s:teal_mid . " gui=undercurl"

" =============================================
" NOTIFY NOTIFICATIONS - Teal Accents
" =============================================
" INFO
execute "highlight NotifyINFOBorder guifg=" . s:gray_dark . " guibg=" . s:bg_dark
execute "highlight NotifyINFOIcon   guifg=" . s:teal_light
execute "highlight NotifyINFOTitle  guifg=" . s:teal_light . " gui=bold"
execute "highlight NotifyINFOBody   guifg=" . s:fg

" WARN
execute "highlight NotifyWARNBorder guifg=" . s:gray_mid . " guibg=" . s:bg_dark
execute "highlight NotifyWARNIcon   guifg=" . s:teal_mid
execute "highlight NotifyWARNTitle  guifg=" . s:teal_mid . " gui=bold"
execute "highlight NotifyWARNBody   guifg=" . s:fg

" ERROR
execute "highlight NotifyERRORBorder guifg=" . s:gray_dark . " guibg=" . s:bg_dark
execute "highlight NotifyERRORIcon   guifg=" . s:teal_light
execute "highlight NotifyERRORTitle  guifg=" . s:teal_light . " gui=bold"
execute "highlight NotifyERRORBody   guifg=" . s:fg

" DEBUG
execute "highlight NotifyDEBUGBorder guifg=" . s:gray_mid . " guibg=" . s:bg_dark
execute "highlight NotifyDEBUGIcon   guifg=" . s:teal_mid
execute "highlight NotifyDEBUGTitle  guifg=" . s:teal_mid . " gui=bold"
execute "highlight NotifyDEBUGBody   guifg=" . s:fg

" TRACE
execute "highlight NotifyTRACEBorder guifg=" . s:gray_mid . " guibg=" . s:bg_dark
execute "highlight NotifyTRACEIcon   guifg=" . s:teal_mid
execute "highlight NotifyTRACETitle  guifg=" . s:teal_mid . " gui=bold"
execute "highlight NotifyTRACEBody   guifg=" . s:fg
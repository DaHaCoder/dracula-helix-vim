"Palette: "{{{

"let g:dracula#palette           = {}
"let g:dracula#palette.fg        = ['#F8F8F2', 253]

"let g:dracula#palette.bglighter = ['#424450', 238]
"let g:dracula#palette.bglight   = ['#343746', 237]
"let g:dracula#palette.bg        = ['#282A36', 236]
"let g:dracula#palette.bgdark    = ['#21222C', 235]
"let g:dracula#palette.bgdarker  = ['#191A21', 234]

"let g:dracula#palette.comment   = ['#6272A4',  61]
"let g:dracula#palette.selection = ['#44475A', 239]
"let g:dracula#palette.subtle    = ['#424450', 238]

"let g:dracula#palette.cyan      = ['#8BE9FD', 117]
"let g:dracula#palette.green     = ['#50FA7B',  84]
"let g:dracula#palette.orange    = ['#FFB86C', 215]
"let g:dracula#palette.pink      = ['#FF79C6', 212]
"let g:dracula#palette.purple    = ['#BD93F9', 141]
"let g:dracula#palette.red       = ['#FF5555', 203]
"let g:dracula#palette.yellow    = ['#F1FA8C', 228]

""
"" ANSI
""
"let g:dracula#palette.color_0  = '#21222C'
"let g:dracula#palette.color_1  = '#FF5555'
"let g:dracula#palette.color_2  = '#50FA7B'
"let g:dracula#palette.color_3  = '#F1FA8C'
"let g:dracula#palette.color_4  = '#BD93F9'
"let g:dracula#palette.color_5  = '#FF79C6'
"let g:dracula#palette.color_6  = '#8BE9FD'
"let g:dracula#palette.color_7  = '#F8F8F2'
"let g:dracula#palette.color_8  = '#6272A4'
"let g:dracula#palette.color_9  = '#FF6E6E'
"let g:dracula#palette.color_10 = '#69FF94'
"let g:dracula#palette.color_11 = '#FFFFA5'
"let g:dracula#palette.color_12 = '#D6ACFF'
"let g:dracula#palette.color_13 = '#FF92DF'
"let g:dracula#palette.color_14 = '#A4FFFF'
"let g:dracula#palette.color_15 = '#FFFFFF'

"========================================
"========== DEFINE OWN COLORS ===========
let g:dracula#palette           = {}
let g:dracula#palette.fg        = ['#D4D4D4', 253]

let g:dracula#palette.bglighter = ['#3A3F45', 238]
let g:dracula#palette.bglight   = ['#272C33', 237]
let g:dracula#palette.bg        = ['#141A21', 236]
let g:dracula#palette.bgdark    = ['#21222C', 235]
let g:dracula#palette.bgdarker  = ['#191A21', 234]

let g:dracula#palette.comment   = ['#5A7296',  61]
let g:dracula#palette.selection = ['#44475A', 239]
let g:dracula#palette.subtle    = ['#364257', 238]

let g:dracula#palette.cyan      = ['#007FFF', 117]  " Actually blue
let g:dracula#palette.green     = ['#7F77FF',  84]  " Actually purple
" let g:dracula#palette.green     = ['#8B67FF',  84]  " Actually purple
let g:dracula#palette.orange    = ['#FFF777', 215]  " Actually yellow
let g:dracula#palette.pink      = ['#00FF7F', 212]  " Actually green
let g:dracula#palette.purple    = ['#10BCEB', 141]  " Actually cyan
let g:dracula#palette.red       = ['#FF5555', 203]  " This is red, yay!
let g:dracula#palette.yellow    = ['#FF007F', 228]  " Actually pink

"
" ANSI
"
let g:dracula#palette.color_0  = '#141A21'
let g:dracula#palette.color_1  = '#FF007F'
let g:dracula#palette.color_2  = '#00FF7F'
let g:dracula#palette.color_3  = '#4C5156'
" let g:dracula#palette.color_4  = '#8B67FF'
" let g:dracula#palette.color_4  = '#8B67FF'
let g:dracula#palette.color_5  = '#7F77FF'
let g:dracula#palette.color_5  = '#7F77FF'
let g:dracula#palette.color_6  = '#B2B2B2'
let g:dracula#palette.color_7  = '#FF007F'
let g:dracula#palette.color_8  = '#272C33'
let g:dracula#palette.color_9  = '#FF8800'
let g:dracula#palette.color_10 = '#C3C3C3'
let g:dracula#palette.color_11 = '#10BCEB'
let g:dracula#palette.color_12 = '#0088FF'
let g:dracula#palette.color_13 = '#FCCD4A'
let g:dracula#palette.color_14 = '#A1A1A1'
let g:dracula#palette.color_15 = '#5A7296'
"========================================
" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! dracula#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'dracula'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:

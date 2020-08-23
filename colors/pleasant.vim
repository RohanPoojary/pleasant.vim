set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="pleasant"

let s:none = ['NONE', 'NONE']

function! s:Hi(name, fg, ...)
    let l:fg = copy(a:fg)
    let l:bg = get(a:, 1, ['NONE', 'NONE'])
    let l:gui = get(a:, 2, 'NONE')
    let l:cterm = get(a:, 3, 'NONE')

    let l:hl_string = [
        \ "highlight", a:name,
        \ "guifg=". l:fg[0],
        \ "ctermfg=". l:fg[1],
        \ "guibg=". l:bg[0],
        \ "ctermbg=". l:bg[1],
        \ "gui=". l:gui,
        \ "cterm=". l:cterm,
        \]

    execute join(l:hl_string, ' ')
endfunction

" Palette Begin:

let s:fg = g:pleasant#palette.fg
let s:bg = g:pleasant#palette.bg
let s:bg_light = g:pleasant#palette.bg_light
let s:bg_lighter = g:pleasant#palette.bg_lighter

let s:white = g:pleasant#palette.white
let s:black = g:pleasant#palette.black

"
" New base pallette names
let s:mud =  g:pleasant#palette.mud 
let s:sand =  g:pleasant#palette.sand 
let s:sand_light =  g:pleasant#palette.sand_light 
let s:weeds =  g:pleasant#palette.weeds 
let s:ocean =  g:pleasant#palette.ocean 
let s:ocean_light =  g:pleasant#palette.ocean_light 
let s:pebble =  g:pleasant#palette.pebble 

let s:red_bg = g:pleasant#palette.red_bg
let s:orange_bg = g:pleasant#palette.orange_bg
let s:yellow_bg = g:pleasant#palette.yellow_bg
let s:green_bg = g:pleasant#palette.green_bg
let s:blue_bg = g:pleasant#palette.blue_bg

let s:bold = "NONE"
if exists("g:pleasant_bold") && g:pleasant_bold == 1
    let s:bold = "bold"
endif

let s:italic = "NONE"
if exists("g:pleasant_italic") && g:pleasant_italic == 1
    let s:italic = "italic"
endif

" Palette End: End of local palette.

call s:Hi('PleasantFg', s:white)
call s:Hi('PleasantBg', s:none, s:bg)
call s:Hi('PleasantBgLighter', s:bg_lighter)
call s:Hi('PleasantBgLight', s:bg_light)

call s:Hi('PleasantGrey', s:bg_lighter)
call s:Hi('PleasantWhite', s:white)

call s:Hi('PleasantMud', s:mud)
call s:Hi('PleasantSand', s:sand)
call s:Hi('PleasantSandLight', s:sand_light)
call s:Hi('PleasantWeeds', s:weeds)
call s:Hi('PleasantOcean', s:ocean)
call s:Hi('PleasantOceanLight', s:ocean_light)
call s:Hi('PleasantPebble', s:pebble)

call s:Hi('PleasantOceanBold', s:ocean, s:none, s:bold, s:bold)
call s:Hi('PleasantOceanLightItalic', s:ocean_light, s:none, s:italic, s:italic)

call s:Hi('PleasantRedBg', s:none, s:red_bg)
call s:Hi('PleasantOrangeBg', s:none, s:orange_bg)
call s:Hi('PleasantYellowBg', s:none, s:yellow_bg)
call s:Hi('PleasantGreenBg', s:none, s:green_bg)
call s:Hi('PleasantBlueBg', s:none, s:blue_bg)

call s:Hi('Normal', s:fg, s:bg) 

hi! link SignColumn Normal
hi! link ColorColumn PleasantFg
hi! link CursorColumn PleasantFg
call s:Hi('CursorLine', s:none, s:bg_light)
call s:Hi('Visual', s:none, s:bg_light)
hi! link CursorLineNr PleasantSand
hi! link Title PleasantWhite

hi! link NonText PleasantGrey
hi! link Comment PleasantBgLighter
hi! link LineNr PleasantSand
hi! link LineNrBelow PleasantGrey
hi! link LineNrAbove LineNrBelow

hi! link Directory PleasantOceanBold

if has('nvim') 
    hi! link LineNr PleasantGrey
endif

call s:Hi('DiffAdded', s:weeds)
call s:Hi('DiffRemoved', s:mud)
call s:Hi('DiffDelete', s:mud, s:red_bg)
hi! link DiffAdd PleasantGreenBg
hi! link DiffChange PleasantBlueBg
hi! link DiffText PleasantOrangeBg

hi! link ErrorMsg PleasantMud
hi! link Question PleasantSand

call s:Hi('PMenu', s:fg, s:bg_light)
call s:Hi('PMenuSel', s:fg, s:bg_lighter)
hi! link PmenuSbar PMenu 
hi! link PmenuThumb PMenuSel 
hi! link WildMenu PMenuSel 
hi! link StatusLine PMenu
hi! link StatusLineNC PleasantSandLight

hi! link VertSplit PleasantBgLighter

call s:Hi('Folded', s:bg, s:bg_lighter)
hi! link FoldColumn Folded

hi! link Identifier PleasantOceanLightItalic
hi! link Function PleasantSandLight
" hi! link MatchParen PleasantMud
call s:Hi('MatchParen', s:none, s:bg_lighter)

call s:Hi('Search', s:bg, s:sand)
call s:Hi('IncSearch', s:bg, s:sand_light)

hi! link Statement PleasantMud
" INFO: Adding inferred links for reference.
" hi! link Conditional PleasantMud
" hi! link Repeat PleasantMud
" hi! link Label PleasantMud
" hi! link Keyword PleasantMud
" hi! link Exception PleasantMud
hi! link Operator PleasantMud

hi! link StorageClass PleasantOcean
hi! link Structure PleasantOcean
hi! link Typedef PleasantOcean

hi! link Type PleasantOcean
hi! link StorageClass PleasantMud
hi! link Structure PleasantFg
hi! link Typedef PleasantOcean

hi! link Special PleasantWeeds
" INFO: Adding inferred links for reference.
" hi! link SpecialChar PleasantWeeds
" hi! link Tag PleasantWeeds
" hi! link Delimiter PleasantWeeds
" hi! link Debug PleasantWeeds


hi! link PreProc PleasantOceanLightItalic
" INFO: Adding inferred links for reference.
" hi! link PreProc PleasantOceanLightItalic
" hi! link Include PleasantOceanLightItalic
" hi! link Define PleasantOceanLightItalic
" hi! link Macro PleasantOceanLightItalic
" hi! link PreCondit PleasantOceanLightItalic

call s:Hi('Underlined', s:ocean_light, s:none, 'underline', 'underline')
call s:Hi('Ignore', s:bg_lighter)
hi! link Error PleasantRedBg
call s:Hi('TODO', s:bg, s:sand_light)

hi! link Constant PleasantPebble
" INFO: Adding inferred links for reference.
" hi! link Character PleasantPebble
" hi! link Number PleasantPebble
" hi! link Boolean PleasantPebble
" hi! link Float PleasantPebble
hi! link String PleasantSand

call s:Hi('TabLineSel', s:bg, s:ocean)
call s:Hi('Tabline', s:fg, s:bg_light)
call s:Hi('TabLineFill', s:none, s:bg_light)

hi! link QuickFixLine PleasantSand

" Pallet changes for CoC.
hi! link CocErrorSign PleasantMud
hi! link CocWarningSign PleasantSand
hi! link CocInfoSign PleasantSandLight
hi! link CocHintSign PleasantOcean

hi! link CocErrorFloat PleasantMud
hi! link CocWarningFloat PleasantSand
hi! link CocInfoFloat PleasantSandLight
hi! link CocHintFloat PleasantOcean

hi! link CocDiagnosticsError PleasantMud
hi! link CocDiagnosticsWarning PleasantSand
hi! link CocDiagnosticsInfo PleasantSandLight
hi! link CocDiagnosticsHint PleasantOcean

hi! link CocSelectedText PleasantRedBg
hi! link CocCodeLens PleasantGrey

hi! link CocErrorHighlight PleasantRedBg
hi! link CocWarningHighlight PleasantOrangeBg
hi! link CocInfoHighlight PleasantYellowBg
hi! link CocHintHighlight PleasantBlueBg


let g:terminal_color_foreground = s:fg[0]
let g:terminal_color_background = s:bg[0]
let g:terminal_color_0 = s:black[0]
let g:terminal_color_1 = s:ocean[0] " Deep Blue
let g:terminal_color_2 = s:weeds[0] " Deep Green
let g:terminal_color_3 = s:ocean_light[0] " Deep Cyan
let g:terminal_color_4 = s:mud[0] " Deep Red
let g:terminal_color_5 = s:pebble[0] " Deep Magenta
let g:terminal_color_6 = s:sand[0] " Deep Yellow 
let g:terminal_color_7 = s:bg_lighter[0]
let g:terminal_color_8 = s:bg_light[0]
let g:terminal_color_9 = s:ocean[0]
let g:terminal_color_10 = s:weeds[0]
let g:terminal_color_11 = s:ocean_light[0]
let g:terminal_color_12 = s:mud[0]
let g:terminal_color_13 = s:pebble[0] 
let g:terminal_color_14 = s:sand_light[0]
let g:terminal_color_15 = s:white[0]


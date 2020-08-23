let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {} }

" TODO: Change middle line color based on base color.
let s:p.normal.left = [[g:pleasant#palette.bg, g:pleasant#palette.sand, 'bold'], [g:pleasant#palette.fg, g:pleasant#palette.bg_lighter]]
let s:p.normal.middle = [[g:pleasant#palette.fg, g:pleasant#palette.bg_light]]
let s:p.normal.right = [[g:pleasant#palette.bg, g:pleasant#palette.sand], [g:pleasant#palette.fg, g:pleasant#palette.bg_lighter]]
let s:p.normal.error = [[g:pleasant#palette.mud, g:pleasant#palette.bg]]
let s:p.normal.warning = [[g:pleasant#palette.sand_light, g:pleasant#palette.bg]]

let s:p.inactive.left = [[g:pleasant#palette.bg, g:pleasant#palette.bg_lighter, 'bold'], [g:pleasant#palette.bg, g:pleasant#palette.bg_light]]
let s:p.inactive.middle = [[g:pleasant#palette.bg_lighter, g:pleasant#palette.bg_light]]
let s:p.inactive.right = [[g:pleasant#palette.bg, g:pleasant#palette.bg_lighter], [g:pleasant#palette.bg_lighter, g:pleasant#palette.bg_light]]

let s:p.insert.left = [[g:pleasant#palette.bg, g:pleasant#palette.ocean_light, 'bold'], [g:pleasant#palette.fg, g:pleasant#palette.bg_lighter]]
" TODO: Add Custom BG Colors
let s:p.insert.middle = [[g:pleasant#palette.fg, g:pleasant#palette.bg_light]]
let s:p.insert.right = [[g:pleasant#palette.bg, g:pleasant#palette.ocean_light], [g:pleasant#palette.fg, g:pleasant#palette.bg_lighter]]

let s:p.replace.left = [[g:pleasant#palette.bg, g:pleasant#palette.mud, 'bold'], [g:pleasant#palette.fg, g:pleasant#palette.bg_lighter]]
let s:p.replace.middle = [[g:pleasant#palette.fg, g:pleasant#palette.bg_light]]
let s:p.replace.right = [[g:pleasant#palette.bg, g:pleasant#palette.mud], [g:pleasant#palette.fg, g:pleasant#palette.bg_lighter]]

let s:p.visual.left = [[g:pleasant#palette.bg, g:pleasant#palette.pebble, 'bold'], [g:pleasant#palette.fg, g:pleasant#palette.bg_lighter]]
let s:p.visual.middle = [[g:pleasant#palette.fg, g:pleasant#palette.bg_light]]
let s:p.visual.right = [[g:pleasant#palette.bg, g:pleasant#palette.pebble], [g:pleasant#palette.fg, g:pleasant#palette.bg_lighter]]

let s:p.tabline.left = [s:p.inactive.left[0]]
let s:p.tabline.tabsel = [s:p.normal.left[0]]
let s:p.tabline.middle = [s:p.normal.middle[0]]
let s:p.tabline.right = [s:p.inactive.left[0]]

let g:lightline#colorscheme#pleasant#palette = lightline#colorscheme#flatten(s:p)

let g:airline#themes#pleasant#palette = {}

let s:N1 = [ g:pleasant#palette.bg[0], g:pleasant#palette.sand[0], g:pleasant#palette.bg[1], g:pleasant#palette.sand[1] ]
let s:N2 = [ g:pleasant#palette.fg[0], g:pleasant#palette.bg_lighter[0], g:pleasant#palette.fg[1], g:pleasant#palette.bg_lighter[1] ]
let s:N3 = [ g:pleasant#palette.fg[0], g:pleasant#palette.bg_light[0], g:pleasant#palette.fg[1], g:pleasant#palette.bg_light[1] ]

let s:I1 = [ g:pleasant#palette.bg[0], g:pleasant#palette.ocean_light[0], g:pleasant#palette.bg[1], g:pleasant#palette.ocean_light[1] ]
let s:I2 = [ g:pleasant#palette.fg[0], g:pleasant#palette.bg_lighter[0], g:pleasant#palette.fg[1], g:pleasant#palette.bg_lighter[1] ]

let s:R1 = [ g:pleasant#palette.bg[0], g:pleasant#palette.mud[0], g:pleasant#palette.bg[1], g:pleasant#palette.mud[1] ]
let s:R2 = [ g:pleasant#palette.fg[0], g:pleasant#palette.bg_lighter[0], g:pleasant#palette.fg[1], g:pleasant#palette.bg_lighter[1] ]

let s:V1 = [ g:pleasant#palette.bg[0], g:pleasant#palette.pebble[0], g:pleasant#palette.bg[1], g:pleasant#palette.pebble[1] ]
let s:V2 = [ g:pleasant#palette.fg[0], g:pleasant#palette.bg_lighter[0], g:pleasant#palette.fg[1], g:pleasant#palette.bg_lighter[1] ]

let s:IA1 = [ g:pleasant#palette.bg[0], g:pleasant#palette.bg_lighter[0], g:pleasant#palette.bg[1], g:pleasant#palette.bg_lighter[1] ]
let s:IA2 = [ g:pleasant#palette.fg[0], g:pleasant#palette.bg_light[0], g:pleasant#palette.fg[1], g:pleasant#palette.bg_light[1] ]

function! airline#themes#pleasant#refresh()
    let g:airline#themes#pleasant#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
    let g:airline#themes#pleasant#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:N3)
    let g:airline#themes#pleasant#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:N3)
    let g:airline#themes#pleasant#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:N3)
    let g:airline#themes#pleasant#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:N3)
endfunction!

call airline#themes#pleasant#refresh()


"-----------------"
"   Colorscheme   "
"-----------------"
"
"
"
if !has('gui_running')
  set t_Co=256
endif

let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Pistas naranjas, errores rojos
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

colorscheme tokyonight
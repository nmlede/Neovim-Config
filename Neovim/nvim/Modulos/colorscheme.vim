"-----------------"
"   Colorscheme   "
"-----------------"
"
"
"
if !has('gui_running')
  set t_Co=256
endif

"TOKYONIGHT 
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Pistas naranjas, errores rojos
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

"colorscheme tokyonight
"
"
" ONEDARK 
let g:onedark_config = {
            \'style':'darker',
            \'ending_tildes': v:true,
            \'diagnostics': {
            \'darker': v:false,
            \'background': v:false,
            \},
            \}
colorscheme onedark

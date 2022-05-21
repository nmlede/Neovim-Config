" Plugin:      https://github.com/hardcoreplayers/dashboard-nvim
" Description: A fancy start screen for Vim.
" Maintainer:  Glepnir <http://github.com/glepnir>

let s:empty_lines = ['']
let s:Section = {}
let s:dashboard_shortcut={}
let s:dashboard_shortcut_icon={}

if exists('g:dashboard_custom_shortcut')
  call extend(s:dashboard_shortcut, g:dashboard_custom_shortcut)
else
  let s:dashboard_shortcut['config_file'] = 'SPC c f'
  let s:dashboard_shortcut['find_history'] = 'SPC f h'
  let s:dashboard_shortcut['find_file'] = 'SPC f f'
  let s:dashboard_shortcut['new_file'] = 'SPC c n'
endif

let s:dashboard_shortcut_icon['config_file'] = ' '
let s:dashboard_shortcut_icon['find_history'] = ' '
let s:dashboard_shortcut_icon['find_file'] = ' '
let s:dashboard_shortcut_icon['new_file'] = ' '

if exists('g:dashboard_custom_shortcut_icon')
  call extend(s:dashboard_shortcut_icon, g:dashboard_custom_shortcut_icon,'force')
endif

if exists('g:dashboard_custom_section')
  call extend(s:Section, g:dashboard_custom_section)
else
  let s:Section = {
    \ 'config_file'          :{
          \ 'description': [s:dashboard_shortcut_icon['config_file'].'Nvim Config File                       '.s:dashboard_shortcut['config_file']],
          \ 'command':':e ~/.config/nvim/init.vim'},
    \ 'find_history'         :{
          \ 'description': [s:dashboard_shortcut_icon['find_history'].'Recently opened files                 	'.s:dashboard_shortcut['find_history']],
          \ 'command':function('dashboard#handler#find_history')},
    \ 'find_file'            :{
          \ 'description': [s:dashboard_shortcut_icon['find_file'].'Find file                             	'.s:dashboard_shortcut['find_file']],
          \ 'command':function('dashboard#handler#find_file')},
    \ 'new_file'             :{
          \ 'description': [s:dashboard_shortcut_icon['new_file'].'New file                              	'.s:dashboard_shortcut['new_file']],
          \ 'command':function('dashboard#handler#new_file')}
    \ }  
endif

function! dashboard#section#height()
  return len(s:Section)+(len(s:Section)-1)
endfunction

function! dashboard#section#instance()
  call s:set_section()
endfunction

function! s:set_section()
  let l:sorted = []
  for key in keys(s:Section)
    call add(l:sorted,key)
  endfor

  for key in sort(l:sorted)
    let dashboard_{key} = g:dashboard#utils#set_custom_section(g:dashboard#utils#draw_center(s:Section[key]["description"]))
    call append('$',dashboard_{key})
    call dashboard#register(line('$'), key, s:Section[key]["command"])
    call append('$', s:empty_lines)
  endfor
endfunction

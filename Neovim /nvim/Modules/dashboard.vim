" Dashboard ---------------------------------------------------------------------------------"
" Link to GitHub https://github.com/glepnir/dashboard-nvim
" Dashboard seccion file: ~/.local/share/nvim/plugged/dashboard-nvim/autoload/section.vim"
let g:mapleader="\<Space>"
let g:dashboard_custom_header = ['nvim']
let g:dashboard_default_executive ='telescope'

nnoremap <silent> <Leader>cf :e ~/.config/nvim/init.vim<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
nnoremap <silent> <Leader>db :Dashboard<CR>


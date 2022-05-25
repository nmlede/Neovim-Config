"------------" 
"  Keymaps   "
"------------" 
" Keymaps generales y de los plugins
"
"
" Leader ---------------------------------------------------------
let g:mapleader=";"

" Navegacion general "--------------------------------------------
" Control x = Open file in hsplit window
" Control v = Open file in vsplit window
" Control t = Open file in a new tab
" Control Left Arrow = Toggle Left Tab
" Control Right Arrow = Toggle Right Tab 
" Control ww = Change window
"<C-x> split
"<C-v> vsplit
"<C-t> new tab
"<C-izq o der> switch tabs
"<C-WW> switch window

" Dashboard "-----------------------------------------------------
nnoremap <Leader>cf :e ~/.config/nvim/init.vim<CR>
nnoremap <Leader>fh :DashboardFindHistory<CR>
nnoremap <Leader>ff :DashboardFindFile<CR>
nnoremap <Leader>nf :DashboardNewFile<CR>
nnoremap <Leader>db :Dashboard<CR>

" nvim-tree.lua "-------------------------------------------------
nnoremap <Leader>tt :NvimTreeToggle<CR>
nnoremap <Leader>tr :NvimTreeRefresh<CR>
nnoremap <Leader>tf :NvimTreeFindFile<CR>

" Tagbar "--------------------------------------------------------
nnoremap <Leader>tb :TagbarToggle<CR>

" Telescope "-----------------------------------------------------
" nnoremap <silent>;f <cmd>Telescope find_files<cr>
" nnoremap <silent>;g <cmd>Telescope live_grep<cr>
" nnoremap <silent>;b <cmd>Telescope buffers<cr>
" nnoremap <silent>;h <cmd>Telescope help_tags<cr>

" Commentary "----------------------------------------------------
" gcc sobre una linea o un conjunto seleccionado para comentarlas
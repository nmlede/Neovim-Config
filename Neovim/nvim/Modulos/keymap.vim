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
nnoremap <Leader>nf :enew<CR>
nnoremap <Leader>db :Dashboard<CR>

" nvim-tree.lua "-------------------------------------------------
nnoremap <Leader>tt :NvimTreeToggle<CR>
nnoremap <Leader>tr :NvimTreeRefresh<CR>
nnoremap <Leader>tf :NvimTreeFindFile<CR>

" Tagbar "--------------------------------------------------------
nnoremap <Leader>tb :TagbarToggle<CR>

" Telescope "-----------------------------------------------------
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fh <cmd>Telescope search_history<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>ht <cmd>Telescope help_tags<cr>

" Commentary "----------------------------------------------------
" gcc sobre una linea o un conjunto seleccionado para comentarlas

" Java "----------------------------------------------------------
" nnoremap <A-o> <Cmd>lua require'jdtls'.organize_imports()<CR>
" nnoremap crv <Cmd>lua require('jdtls').extract_variable()<CR>
" vnoremap crv <Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>
" nnoremap crc <Cmd>lua require('jdtls').extract_constant()<CR>
" vnoremap crc <Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>
" vnoremap crm <Esc><Cmd>lua require('jdtls').extract_method(true)<CR>


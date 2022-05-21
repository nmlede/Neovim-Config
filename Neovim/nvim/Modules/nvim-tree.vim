" nvim-tree.lua -----------------------------------------------------------------------------"
" Link to GitHub https://github.com/kyazdani42/nvim-tree.lua
lua << EOF
require'nvim-tree'.setup {
  -- auto_close = true,
  -- lsp_diagnostics = true,
  ignore_ft_on_setup  = { 'startify', 'dashboard' },
}
EOF

nnoremap <silent>;t :NvimTreeToggle<CR>
nnoremap <silent>;r :NvimTreeRefresh<CR>
nnoremap <silent>;n :NvimTreeFindFile<CR>

"<C-x> split
"<C-v> vsplit
"<C-t> new tab
"<C-izq o der> switch tabs
"<C-WW> switch window



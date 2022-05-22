" nvim-tree.lua -----------------------------------------------------------------------------"
" Link to GitHub https://github.com/kyazdani42/nvim-tree.lua
"
"
"
" Activate
lua << EOF
require'nvim-tree'.setup {
  -- auto_close = true,
  -- lsp_diagnostics = true,
  ignore_ft_on_setup  = { 'startify', 'dashboard' },
}
EOF

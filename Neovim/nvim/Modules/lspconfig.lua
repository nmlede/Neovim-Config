-- LSP Config file 
-- Add here all languaje servers you need
-- Example 'npm install -g pyright ---> This install pyright server'
-- Link to GitHub https://github.com/neovim/nvim-lspconfig
--
--
--
local nvim_lsp=require('lspconfig')
local servers={'pyright'} -- List of server you have installed

-- When LSP is on, you may use this keymaps
local on_attach=function(client,bufnr)
  -- Enable completion triggered by <c-x><c-o>
  
  -- Mappings.
  local opts={noremap=true,silent=true}
  -- Code navigation
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'C-k', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'C-n', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'C-p', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'ff', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end


-- Calling servers setup
for _, lsp in pairs(servers) do
    nvim_lsp[lsp].setup{
        on_attach=on_attach
    }
end
--"-----------------------"
--" Configuracion de LSP  "
--"-----------------------"  
-- Agrega los servidores de lenguajes que necesites
-- Ejemplo 'npm install -g pyright ---> Esto instala pyright'
-- Link a GitHub https://github.com/neovim/nvim-lspconfig
--
--
--
require("nvim-lsp-installer").setup({
    automatic_installation = true, 
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})


local nvim_lsp=require('lspconfig')
local servers={} -- Servidores instalados

-- Cuando LSP esta activo, podes usar estos keymaps
local on_attach=function(client,bufnr)
    
  -- Mappings.
  local opts={noremap=true,silent=true}
  
  -- Navegacion en el codigo
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'C-k', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
end


-- Llamado a los servidores
for _, lsp in pairs(servers) do
    nvim_lsp[lsp].setup{
        on_attach=on_attach
    }
end
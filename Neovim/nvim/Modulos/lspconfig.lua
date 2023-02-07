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


local nvim_lsp={
  flags = {debounce_text_change = 150,
  },
  capabilities = require('cmp_nvim_lsp').default_capabilities(
  vim.lsp.protocol.make_client_capabilities()
  ),
  on_attach = function(client,bufnr)
    vim.api.nvim_exec_autocmds('User',{pattern = 'LspAttached'})
  end
}

local lspconfig = require('lspconfig')
lspconfig.util.default_config = vim.tbl_deep_extend(
'force',
lspconfig.util.default_config,
nvim_lsp
)

-- Llamando a los servidores
-- bashls
lspconfig.bashls.setup({
  single_file_support = true,
  on_attach = function(client,bufnr)
    lspconfig.util.default_config.on_attach(client,bufnr)
  end
})

--pyright
lspconfig.pyright.setup({
  single_file_support = true,
  on_attach = function(client,bufnr)
    lspconfig.util.default_config.on_attach(client,bufnr)
  end
})

-- vimls
lspconfig.vimls.setup({
  single_file_support = true,
  on_attach = function(client,bufnr)
    lspconfig.util.default_config.on_attach(client,bufnr)
  end
})

--cssls
lspconfig.cssls.setup({
  single_file_support = true,
  on_attach = function(client,bufnr)
    lspconfig.util.default_config.on_attach(client,bufnr)
  end
})

-- html
lspconfig.html.setup({
  single_file_support = true,
  on_attach = function(client,bufnr)
    lspconfig.util.default_config.on_attach(client,bufnr)
  end
})

--tsserver
lspconfig.tsserver.setup({
  single_file_support = true,
  on_attach = function(client,bufnr)
    lspconfig.util.default_config.on_attach(client,bufnr)
  end
})

-- Cuando LSP esta activo, podes usar estos keymaps    
-- Mappings.
local opts={noremap=true,silent=true}
  
-- Navegacion en el codigo
vim.api.nvim_create_autocmd('User',{
  pattern = 'LspAttached',
  desc = 'Acciones LSP',
  callback = function()
    local bufmap = function(mode,lhs,rhs)
      local opts = {buffer = true}
      vim.keymap.set(mode,lhs,rhs,opts)
    end

-- Muestra información sobre símbolo debajo del cursor
    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')

    -- Saltar a definición
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')

    -- Saltar a declaración
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')

    -- Mostrar implementaciones
    bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')

    -- Saltar a definición de tipo
    bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')

    -- Listar referencias
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')

    -- Mostrar argumentos de función
    bufmap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')

    -- Renombrar símbolo
    bufmap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')

    -- Listar "code actions" disponibles en la posición del cursor
    bufmap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
    bufmap('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')

    -- Mostrar diagnósticos de la línea actual
    bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')

    -- Saltar al diagnóstico anterior
    bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')

    -- Saltar al siguiente diagnóstico
    bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
  end
})





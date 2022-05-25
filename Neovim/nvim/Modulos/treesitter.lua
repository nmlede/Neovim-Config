----------------------------------
-- Configuracion de Treesitter  --
----------------------------------
-- Link a GitHub: https://github.com/nvim-treesitter/nvim-treesitter
--
--
--
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "python",
    "json",
    "c",
    "lua"
  },
  sync_install = false, 
  additional_vim_regex_highlighting = true,
}

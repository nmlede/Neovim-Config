------------------------
-- Treesitter Setting --
------------------------
-- Link to GitHub: https://github.com/nvim-treesitter/nvim-treesitter
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
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()


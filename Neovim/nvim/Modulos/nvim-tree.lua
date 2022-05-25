--------------------------------------
--  Configuracion de Nvim-tree.lua  --
--------------------------------------
-- Link to GitHub https://github.com/kyazdani42/nvim-tree.lua
--
--
--
require'nvim-tree'.setup {
  ignore_ft_on_setup  = { 'startify', 'dashboard', 'alpha'},

  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
    view = {
      width = 30,
      height = 30,
      hide_root_folder = false,
      side = "left",
      auto_resize = true,
  },
}

vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
  },
}

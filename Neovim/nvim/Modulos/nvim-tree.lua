--------------------------------------
--  Configuracion de Nvim-tree.lua  --
--------------------------------------
-- Link to GitHub https://github.com/kyazdani42/nvim-tree.lua
--
--
--
--
--
require'nvim-tree'.setup{
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
      }
    }
}
--    view = {
--      width = 30,
--      height = 30,
--      hide_root_folder = false,
--      side = "left",
--  },

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
  }
}


local function open_nvim_tree(data)
  local IGNORED_FT = {
    "markdown",
    "dashboard"
  }
    -- buffer is a real file on the disk
  local real_file = vim.fn.filereadable(data.file) == 1

  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  -- &ft
  local filetype = vim.bo[data.buf].ft

  -- only files please
  if not real_file and not no_name then
    return
  end

  -- skip ignored filetypes
  if vim.tbl_contains(IGNORED_FT, filetype) then
    return
  end

  -- open the tree but don't focus it
  require("nvim-tree.api").tree.toggle({ focus = false })
end

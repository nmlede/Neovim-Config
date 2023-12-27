return{
  "nvim-neo-tree/neo-tree.nvim",
  branch="v3.x",
  dependencies={
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config=function()
    require("neo-tree").setup({
      sources={"filesystem","buffers","git_status","document_symbols"},
      filesystem = {
        filtered_items={
          visible=true,
          hide_dotfiles=false,
        }
      },
      window = {
        position = "left",
        width = 30,
        mapping_options = {
          noremap = true,
          nowait = true,
        },
      }
    })
    vim.keymap.set('n','<C-n>',':Neotree filesystem reveal left<CR>',{})
    vim.keymap.set('n','<C-b>',':Neotree buffers reveal float<CR>',{})
    --vim.keymap.set('n','<C-g>',":Neotree git_status reveal left<CR>",{})
  end
}

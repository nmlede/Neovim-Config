return{
 'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  event="VeryLazy",
  config=function()
    local buffer=require("bufferline")
    buffer.setup({
      options={
        diagnostics='nvim_lsp',
        diagnostics_indicator = function(count, level)
          local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        offsets={
        {
          filetype="neo-tree",
          text="Neo-tree",
          highlight="Directory",
          text_align="left",
          },
        },
      },
    })
  end
}

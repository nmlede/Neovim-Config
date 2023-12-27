return {
  'stevearc/conform.nvim',
  dependencies = { "mason.nvim" },
  lazy = true,
  cmd = "ConformInfo",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        sh = { "shfmt" },
      },
      format_on_save = {
        timeouts_ms = 500,
        lsp_fallback = true,
      },
      format_after_save = {
        lsp_fallback = true,
      },
    })
  end
}

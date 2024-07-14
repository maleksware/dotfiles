return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  config = function()
    local opts = {
      prefix = "<leader>"
    }
    require("which-key").setup()
    require("which-key").register(mappings, opts)
  end,

  opts = {
    triggers = {"<leader>"},
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}

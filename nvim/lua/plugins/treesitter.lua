return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function() 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "lua", "python", "cpp", "javascript", "html" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      disable = {"latex",},
    })
  end
}

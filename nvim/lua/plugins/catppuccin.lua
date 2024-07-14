return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      integrations = {
          mason = false,
          nvimtree = true,
          treesitter = true,
          cmp = true,
          telescope = {
            enabled = true,
          },
          which_key = false,
      },
      styles = {
        conditionals = {},
      },
    })
  
    vim.cmd.colorscheme "catppuccin"
  end,
}

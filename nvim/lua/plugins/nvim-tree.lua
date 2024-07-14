return {
  "nvim-tree/nvim-tree.lua",
  config = function() 
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    local function ot(bufnr)
      local api = require("nvim-tree.api")

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      api.config.mappings.default_on_attach(bufnr)

      -- open as vsplit on current node
      local function vsplit_preview()
        local node = api.tree.get_node_under_cursor()

        if node.nodes ~= nil then
          -- expand or collapse folder
          api.node.open.edit()
        else
          -- open file as vsplit
          api.node.open.vertical()
        end

        -- Finally refocus on tree if it was lost
      end

      vim.keymap.set("n", "o", vsplit_preview, opts("vsplit preview"))
    end


    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      on_attach = ot,
      renderer = {
        group_empty = true,
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
          },
        },
      },
      filters = {
        dotfiles = true,
      },
    })
  end
}

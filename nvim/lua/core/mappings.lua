vim.g.mapleader = " "

local keymap = vim.keymap

function map(mode, kb, cmd, override)
  local options = {noremap = true, silent = true}
  if override then
    options = vim.tbl_extend("force", options, override)
  end
  keymap.set(mode, kb, cmd, options)
end

map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<leader>f", ":NvimTreeFocus<CR>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

map("v", "<", "<gv")
map("v", ">", ">gv")

map("n", "<leader>z", ":set wrap!<CR>")

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<C-[>", ":resize -2<CR>")
map("n", "<C-]>", ":resize +2<CR>")
map("n", "<C-P>", ":vertical resize -2<CR>")
map("n", "<C-O>", ":vertical resize +2<CR>")

map("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
map("n", "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>")

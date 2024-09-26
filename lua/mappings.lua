require "nvchad.mappings"
local map = vim.keymap.set
local unmap = vim.keymap.del

-- vim QOL
map("n", ";", ":")
map("i", "jk", "<ESC>")

-- exit terminal mode with Option+q
map("t", "<M-q>", "<C-\\><C-N>")

-- navigate windows in terminal mode
map("t", "<C-h>", "<C-\\><C-N><C-w>h")
map("t", "<C-j>", "<C-\\><C-N><C-w>j")
map("t", "<C-k>", "<C-\\><C-N><C-w>k")
map("t", "<C-l>", "<C-\\><C-N><C-w>l")

-- close windows
map("n", "<M-w>", "<C-w>q")

-- linebreak at cursor
map("n", "<C-cr>", "<esc>i<cr><esc>")
map("n", "<C-bs>", "<esc>0i <esc>0cw<bs> <esc>")

-- Ctrl-s to save
map("i", "<C-s>", "<cmd>w<cr>")

-- Format and save
map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
  vim.cmd ":w"
end, { desc = "format buffer" })

-- Show whitespace as chars
map("n", "<leader>li", function()
  vim.cmd "set list!"
end, { desc = "toggle whitespace chars" })

-- Remove tab on right arrow in insert mode
unmap("i", "<Right>")

-- Open terminal
map("n", "<leader>sh", function()
  vim.cmd "terminal"
end, { desc = "open new terminal buffer" })

-- Add new keymaps
map('n', 'grd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true, desc = "Go to definition" })
map('n', 'grD', '<cmd>lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true, desc = "Go to declaration" })
map('n', 'grr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true, desc = "Show references" })
map('n', 'gra', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true, desc = "Show code actions" })

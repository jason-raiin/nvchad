require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

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

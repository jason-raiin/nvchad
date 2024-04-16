local o = vim.opt

-- fold based on treesitter parser
o.foldenable = true
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"

vim.cmd('set foldcolumn=3') -- display 3 levels of folds
vim.cmd('set foldlevelstart=99') -- unfold everything on file open

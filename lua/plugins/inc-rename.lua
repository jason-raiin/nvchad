return {
  "smjonas/inc-rename.nvim",
  main = "inc_rename",
  keys = {
    {
      "<leader>re",
      function()
        return ":IncRename " .. vim.fn.expand "<cword>"
      end,
      desc = "Rename LSP variable",
      expr = true,
    },
  },
  opts = {},
}

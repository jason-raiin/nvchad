return {
  "smjonas/inc-rename.nvim",
  main = "inc_rename",
  keys = {
    {
      "gre",
      function()
        return ":IncRename " .. vim.fn.expand "<cword>"
      end,
      desc = "Rename variable",
      expr = true,
    },
  },
  opts = {},
}

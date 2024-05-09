return {
  "smjonas/inc-rename.nvim",
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
  config = function()
    require("inc_rename").setup()
  end,
}

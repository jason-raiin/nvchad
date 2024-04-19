return {
  "smjonas/inc-rename.nvim",
  keys = { { "<leader>re", ":IncRename ", desc = "Rename LSP variable" } },
  config = function()
    require("inc_rename").setup()
  end,
}

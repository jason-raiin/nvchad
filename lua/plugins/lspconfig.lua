return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    dependencies = "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = require "configs.lsp-servers",
      }
    end,
  },
}

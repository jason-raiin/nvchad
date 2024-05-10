return {
  "neovim/nvim-lspconfig",
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
    init = function()
      require "configs.lspconfig"
    end,
  },
}

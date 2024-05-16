return {
  {
    "stevearc/conform.nvim",
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        css = { "prettier" },
        graphql = { "prettier" },
        html = { "prettier" },
        lua = { "stylua" },
        typescript = { "prettier" },
        yaml = { "prettier" }
      }
    }
  },
  {
    "zapling/mason-conform.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "stevearc/conform.nvim"
    },
    init = function()
      require "mason-conform".setup()
    end
  }
}

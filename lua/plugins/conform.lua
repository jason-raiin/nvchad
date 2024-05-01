return {
  {
    "stevearc/conform.nvim",
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        html = { "prettierd" },
        css = { "prettierd" },
        typescript = { { "eslint_d", "prettierd" } },
        graphql = { "prettierd" }
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

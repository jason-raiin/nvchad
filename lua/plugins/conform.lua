return {
  "stevearc/conform.nvim",
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      html = { "prettierd" },
      css = { "prettierd" },
      typescript = { "eslint_d", "prettierd" },
      graphql = { "prettierd" }
    }
  }
}

return {
  "ryanvu/mai_pr.nvim",
  event = "VeryLazy",
  config = function()
    require("mai_pull_request").setup {
      api_key = require("secrets").OPENAI_API_KEY,
    }
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
}

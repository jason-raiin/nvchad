return {
  "luckasRanarison/tailwind-tools.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "onsails/lspkind-nvim",
    "hrsh7th/nvim-cmp",
  },
  event = "VeryLazy",
  opts = {
    document_color = {
      enabled = true,
    },
    conceal = {
      enabled = true,
    },
  },
  config = function(_, opts)
    require("tailwind-tools").setup(opts)
    require("cmp").setup {
      formatting = {
        format = require("lspkind").cmp_format {
          before = require("tailwind-tools.cmp").lspkind_format,
        },
      },
    }
  end,
}

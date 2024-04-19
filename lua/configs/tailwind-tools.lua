require("cmp").setup {
  formatting = {
    format = require("lspkind").cmp_format {
      before = require("tailwind-tools.cmp").lspkind_format,
    },
  },
}

local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = require "configs.lsp-servers"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.angularls.setup {
  on_attach = function(client)
    client.server_capabilities.renameProvider = false
  end,
}

lspconfig.eslint.setup {
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.cmd "EslintFixAll"
        vim.notify_once("Linting...", "info", { title = "ESLint" })
      end,
    })
  end,
}

lspconfig.ts_ls.setup {
  settings = {
    implicitProjectConfiguration = {
      checkJs = true,
    },
  },
}

-- NvChad LSP configs
require("nvchad.configs.lspconfig").defaults()

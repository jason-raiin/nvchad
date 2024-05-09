-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "angularls",
  "cssls",
  "eslint",
  "graphql",
  "html",
  "jsonls",
  "lua_ls",
  "tailwindcss",
  "terraformls",
  "tsserver",
  "yamlls",
}

require("mason").setup()
require("mason-lspconfig").setup {
  automatic_installation = true,
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

require("lspconfig").angularls.setup {
  on_attach = function(client)
    client.server_capabilities.renameProvider = false
  end,
}

-- NvChad LSP configs
require("nvchad.configs.lspconfig").defaults()

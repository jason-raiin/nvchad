-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "angularls",
  "cssls",
  "graphql",
  "html",
  "jsonls",
  "lua_ls",
  "tailwindcss",
  "tsserver",
  "yamlls",
}

require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = servers,
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

require("nvchad.configs.lspconfig").defaults()

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
  "terraformls",
  "tsserver",
  "yamlls",
}

require("mason").setup()
require("mason-lspconfig").setup {
  automatic_installation = true
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- tailwind LSP config
local tailwind_on_attach = function(client)
  if client.server_capabilities.colorProvider then
    -- Attach document colour support
    require("document-color").buf_attach()
  end
end

local tailwind_capabilities = vim.lsp.protocol.make_client_capabilities()

-- You are now capable!
tailwind_capabilities.textDocument.colorProvider = {
  dynamicRegistration = true,
}

-- Lsp servers that support documentColor
require("lspconfig").tailwindcss.setup {
  on_attach = tailwind_on_attach,
  capabilities = tailwind_capabilities,
}

-- NvChad LSP configs
require("nvchad.configs.lspconfig").defaults()

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

local angular_cmd = {
  "ngserver",
  "--stdio",
  "--tsProbeLocations",
  table.concat({
    "/Users/jasonhuang/.nvm/versions/node/v18.19.0/lib/node_modules/@angular/language-server",
  }, ","),
  "--ngProbeLocations",
  table.concat({
    "/Users/jasonhuang/.nvm/versions/node/v18.19.0/lib/node_modules/@angular/language-server",
  }, ","),
}

lspconfig.angularls.setup {
  on_attach = function(client)
    client.server_capabilities.renameProvider = false
  end,
  cmd = angular_cmd,
  on_new_config = function(new_config, new_root_dir)
    new_config.cmd = angular_cmd
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

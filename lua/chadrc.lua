-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@class ChadrcConfig
local M = {}

M.ui = {
  cmp = {
    format_colors = {
      tailwind = true,
    },
  },
  hl_override = {
    Comment = { italic = true, fg = "#999999" },
    ["@comment"] = { link = "Comment" },
  },
  statusline = {
    theme = "minimal",
    separator_style = "block",
  },
  telescope = { style = "bordered" },
}

M.lsp = {
  signature = false,
}

M.base46 = {
  transparency = true,
  theme = "chadracula-evondev",
}

M.nvdash = {
  load_on_startup = true,
}

M.colorify = {
  enabled = false,
}

return M

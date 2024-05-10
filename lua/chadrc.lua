-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@class ChadrcConfig
local M = {}

M.ui = {
  cmp = { style = "default" }, -- default/flat_light/flat_dark/atom/atom_colored
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
  lsp = {
    signature = false,
  },
  nvdash = {
    load_on_startup = true,
  },
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    separator_style = "block", -- default/round/block/arrow
  },
  telescope = { style = "bordered" }, -- borderless / bordered
  theme = "chadracula-evondev",
  transparency = true,
}

return M

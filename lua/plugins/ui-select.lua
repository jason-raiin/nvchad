return {
  "nvim-telescope/telescope-ui-select.nvim",
  dependencies = "nvim-telescope/telescope.nvim",
  event = "VeryLazy",
  config = function()
    local telescope = require "telescope"
    telescope.setup {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_cursor(),
        },
      },
    }
    telescope.load_extension "ui-select"
  end,
}

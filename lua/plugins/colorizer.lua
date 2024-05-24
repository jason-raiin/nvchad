return {
  "NvChad/nvim-colorizer.lua",
  event = "VeryLazy",
  config = function()
    require("colorizer").setup {
      user_default_options = {
        css = true,
      },
    }
  end,
}

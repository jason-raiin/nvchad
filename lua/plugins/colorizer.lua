return {
  "NvChad/nvim-colorizer.lua",
  init = function()
    require("colorizer").setup {
      user_default_options = {
        css = true,
      },
    }
  end,
}

return {
  "rcarriga/nvim-notify",
  dependencies = { "nvim-telescope/telescope.nvim" },
  opts = {
    -- other stuff
    background_colour = "#000000",
    fps = 60,
    max_width = 100,
    max_height = 40,
    render = "wrapped-compact",
  },
  configs = function()
    require("telescope").load_extension "notify"
  end,
}

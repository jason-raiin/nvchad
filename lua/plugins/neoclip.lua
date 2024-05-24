return {
  "AckslD/nvim-neoclip.lua",
  dependencies = "nvim-telescope/telescope.nvim",
  event = "BufEnter",
  opts = {
    content_spec_column = true,
    keys = {
      telescope = {
        i = {
          paste = "<cr>",
          paste_behind = "<c-cr>",
        },
        n = {
          paste = "<cr>",
          paste_behind = "<c-cr>",
        },
      },
    },
  },
  config = function(_, opts)
    require("neoclip").setup(opts)
    require("telescope").load_extension "neoclip"
    vim.keymap.set("n", "<leader>fp", "<cmd>Telescope neoclip<cr>", { desc = "telescope yanks" })
  end,
}

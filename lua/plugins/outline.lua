return {
  "hedyhli/outline.nvim",
  cmd = { "Outline", "OutlineOpen" },
  keys = { -- Example mapping to toggle outline
    { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
  },
  opts = {
    outline_window = {
      split_command = "aboveleft vs",
      width = 15,
      jump_highlight_duration = 250,
    },
    outline_items = {
      show_symbol_details = true,
      show_symbol_lineno = true,
    },
  },
}

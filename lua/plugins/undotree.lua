return {
  "jiaoshijie/undotree",
  dependencies = "nvim-lua/plenary.nvim",
  keys = { -- load the plugin only when using it's keybinding:
    {
      "<leader>u",
      function()
        require("undotree").toggle()
        vim.cmd "vertical resize 40"
      end,
      desc = "Toggle undotree",
    },
  },
  opts = {
    keymaps = {
      ["<Down>"] = "move_next",
      ["<Up>"] = "move_prev",
      ["<Left>"] = "move2parent",
      ["<M-Down>"] = "move_change_next",
      ["<M-Up>"] = "move_change_prev",
      ["<Right>"] = "enter_diffbuf",
    },
    window = {
      height = 30,
      width = 30,
    },
  },
}

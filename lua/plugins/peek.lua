return {
  "toppair/peek.nvim",
  build = "deno task --quiet build:fast",
  keys = {
    { "<leader>pp", "<cmd>PeekToggle<cr>", desc = "toggle markdown peek" },
  },
  config = function()
    local peek = require "peek"
    peek.setup()
    vim.api.nvim_create_user_command("PeekToggle", function()
      if peek.is_open() then
        peek.close()
      else
        peek.open()
      end
    end, {})
  end,
}

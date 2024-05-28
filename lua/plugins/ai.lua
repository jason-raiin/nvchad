return {
  {
    "jackmort/chatgpt.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { "<leader>gpt", "<cmd>ChatGPT<cr>", desc = "open chat gpt" },
      { "<leader>gpc", "<cmd>ChatGPTCompleteCode<cr>", desc = "complete code with gpt" },
      { "gpe", "<cmd>ChatGPTEditWithInstructions<cr>", desc = "edit selection with gpt", mode = "x" },
    },
    opts = {
      api_key_cmd = "pass show api/openai",
      openai_params = {
        model = "gpt-4o",
        max_tokens = 4096,
      },
      openai_edit_params = {
        model = "gpt-4o",
      },
    },
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
}

return {
  {
    "jackmort/chatgpt.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim",
    },
    cmd = "ChatGPT",
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
}

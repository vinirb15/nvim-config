return {
  "olimorris/codecompanion.nvim",
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  strategies = {
    chat = {
      adapter = "anthropic",
    },
    inline = {
      adapter = "anthropic",
    },
  },
  adapters = {
    anthropic = function()
        return require("codecompanion.adapters").extend("ollama", {
          schema = {
            model = {
              default = "deepseek-coder:1.3b",
            },
            num_ctx = {
              default = 20000,
            },
          },
        })
    end,
  },
}

return {
  "olimorris/codecompanion.nvim",
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("codecompanion").setup({
      adapters = {
        openai = function()
          return require("codecompanion.adapters").extend("openai_compatible", {
            env = {
              url = "https://openrouter.ai/api/v1",
              api_key = "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",
              chat_url = "/v1/chat/completions",
            },
            schema = {
              model = {
                default = "openai/gpt-4.1"
              }
            },
          })
        end
      },
      display = {
        chat = {
          window = {
            position = "right",
            width = 0.55
          }
        }
      }
    })
  end
}

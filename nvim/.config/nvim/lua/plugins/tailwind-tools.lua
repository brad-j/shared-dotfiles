return {
  "luckasRanarison/tailwind-tools.nvim",
  name = "tailwind-tools",
  build = ":UpdateRemotePlugins",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim", -- optional
  },
  opts = {}, -- your configuration
  config = function()
   require("tailwind-tools").setup({
      conceal = {
        enabled = false,
        min_length = nil,
        symbol = "󱏿",
        highlight = { fg = "#38BDF8" }
      }
   })
  end,
}

return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000,
  config = function()
    -- Setup the colorscheme
    require("everforest").setup({
      background = "hard", -- soft, medium, hard
      transparent = false,
      italic = {
        comments = true, -- Enable italic comments
        strings = false, -- Enable italic strings
        keywords = false, -- Enable italic keywords
        functions = false, -- Enable italic functions
      },
    })

    -- Set the colorscheme
    vim.cmd("colorscheme everforest")
  end,
}

return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000,
  config = function()
    require("everforest").setup({
      background = "hard",
      transparent = false,
      italic = {
        comments = true,
        strings = false,
        keywords = false,
        functions = false,
      },
    })

    vim.cmd("colorscheme everforest")
  end,
}

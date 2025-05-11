return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000,
  config = function()
    require("everforest").setup({
      --background = hard,
      transparent_background_level = 0.8,
      italics = true,
      disable_italic_comments = false,
      on_highlights = function(hl, _)
        hl["@string.special.symbol.ruby"] = { link = "@field" }
      end,
    })
  end,
}

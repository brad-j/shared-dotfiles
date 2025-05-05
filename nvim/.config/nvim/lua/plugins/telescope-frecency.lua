return {
  "nvim-telescope/telescope-frecency.nvim",
  -- install the latest stable version
  version = "*",
  config = function()
    require("telescope").setup({
      extensions = {
        frecency = {
          show_scores = true,         -- Default: false
          auto_validate = true,       -- Default: true
          db_validate_threshold = 10, -- Default: 10
          show_filter_column = false, -- Default: true
        },
      },
    })
    require("telescope").load_extension("frecency")
  end,
}

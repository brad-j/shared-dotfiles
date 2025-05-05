return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-tree/nvim-web-devicons'
  },
  opts = function(_, opts)
    -- set default picker theme to ivy for all pickers
    opts.defaults = require("telescope.themes").get_ivy({
      --layout_config = { height = 0.30 },
    })
  end,
}

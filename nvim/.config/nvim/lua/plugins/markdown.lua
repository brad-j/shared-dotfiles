return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = { 'markdown', 'quatro' },
  dependencies = { 'nvim-treesitter/nvim-treesitter' }, 
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    render_modes = true
  },
}

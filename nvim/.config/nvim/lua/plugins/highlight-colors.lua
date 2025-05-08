return {
  'brenoprata10/nvim-highlight-colors',
  config = function()
    require('nvim-highlight-colors').setup({
      render = 'virtual',
      virtual_symbol = '●',
      virtual_symbol_position = 'eow',
      enable_tailwind = true,
      enable_var_usage = true,
      enable_hex = true,
      enable_rgba = true,
      enable_hsl = true,
      enable_css_fn = true,
      enable_css_colors = true,
      enable_hsl_colors = true,
    })
  end
}

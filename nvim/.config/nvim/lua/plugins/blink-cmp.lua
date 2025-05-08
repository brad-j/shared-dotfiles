return {
  'saghen/blink.cmp',
  dependencies = {
    'Kaiser-Yang/blink-cmp-avante',
  },
  version = '1.*',
  opts = {
    keymap = { preset = 'super-tab' },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = { documentation = { auto_show = false } },
    sources = {
      default = { 'avante', 'lsp', 'path', 'buffer' },
      providers = {
        avante = {
          module = 'blink-cmp-avante',
          name = 'Avante',
          opts = {
            -- options for blink-cmp-avante
          }
        }
      },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  }
}

return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.8',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    'jonarrien/telescope-cmdline.nvim',
  },
  keys = {
    { '<leader><leader>', '<cmd>Telescope cmdline<cr>', desc = 'Cmdline' }
  },
  opts = {
    pickers = {
      live_grep = {
        file_ignore_patterns = { 'node_modules', '.git' },
      },
      find_files = {
        file_ignore_patterns = { 'node_modules', '.git' },
      },
    },
    extensions = {
      cmdline = {
        picker = {
          layout_config = {
            width  = 50,
            height = 10,
          }
        },
        mappings = {
          complete = '<Tab>',
          run_selection = '<C-CR>',
          run_input = '<CR>'
        },
        overseer = {
          enabled = true,
        }
      }
    }
  },
  config = function(_, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension('cmdline')
  end,
}

return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    delete_to_trash = true,
    view_options = {
      show_hidden = true,
      natural_order = true,
      is_always_hidden = function(name, _)
        return name == '..' or name == '.git'
      end,
    },
    skip_confirm_for_simple_edits = true,
    prompt_save_on_select_new_entry = true
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
}

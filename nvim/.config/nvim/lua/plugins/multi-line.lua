return {
  'mg979/vim-visual-multi',
  branch = 'master',
  lazy = false,
  config = function()
    vim.g.VM_default_mappings_disabled = 1
    vim.g.VM_leader = '<C-n>'
    vim.g.VM_silent_exit = 0
    vim.g.VM_show_warnings = 0
    vim.g.VM_maps = {
      ['Find Under'] = '<C-n>',
      ['Find Subword Under'] = '<C-n>',
      ['Add Cursor Above'] = '<C-k>',
      ['Add Cursor Below'] = '<C-j>',
      ['Undo'] = '<C-u>',
      ['Redo'] = '<C-r>',
      ['Select All'] = '<C-a>',
    }
  end,
}

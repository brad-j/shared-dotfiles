return {
  'rcarriga/nvim-notify',
  opts = {
    stages = 'fade',
    timeout = 2000,
    background_colour = '#000000',
    max_width = 50,
    max_height = 10,
    render = 'compact',
    fps = 60,
    level = vim.log.levels.INFO,
    minimum_width = 50,
    minimum_height = 10,
  },
}

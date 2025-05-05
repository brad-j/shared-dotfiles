return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "regex",
      },
      auto_install = true,
      ignore_install = {},
      sync_install = false,
      highlight = {
        enable = true
      },
      additional_vim_regex_highlighting = false,
      indent = {
        enable = true
      },
      modules = {}
    }
  end,
}

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
          "css",
          "bash",
          "diff",
          "html",
          "javascript",
          "jsdoc",
          "json",
          "jsonc",
          "kdl",
          "lua",
          "luadoc",
          "luap",
          "markdown",
          "markdown_inline",
          "printf",
          "python",
          "query",
          "regex",
          "toml",
          "tsx",
          "typescript",
          "vim",
          "vimdoc",
          "xml",
          "yaml",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<Enter>",
            node_incremental = "<Enter>",
            node_decremental = "<Backspace>",
          },
        },
      })
    end
}

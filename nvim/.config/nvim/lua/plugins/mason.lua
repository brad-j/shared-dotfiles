return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      local lspconfig = require("lspconfig")

      -- Configure Mason
      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })

      -- Configure mason-lspconfig (only for ensuring servers are installed)
      mason_lspconfig.setup({
        settings = {
          ['lua_ls'] = {
            Lua = {
              diagnostics = { globals = { 'vim' } },
            }
          }
        },
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "html",
          "tailwindcss",
          "emmet_ls",
          "jsonls",
          "cssls",
          "marksman",
          "bashls",
        },
        automatic_installation = true,
      })

      -- Common on_attach function
      local on_attach = function(client, bufnr)
        local map_opts = { noremap = true, silent = true, buffer = bufnr }

        vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float,
          vim.tbl_extend('keep', map_opts, { desc = 'Show line diagnostics' }))
        vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist,
          vim.tbl_extend('keep', map_opts, { desc = 'Open diagnostics list' }))
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition,
          vim.tbl_extend('keep', map_opts, { desc = 'LSP Go to Definition' }))

        print("LSP attached to buffer: " .. bufnr .. " Client: " .. client.name)
      end

      -- LSP Server Options (Common Capabilities)
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      -- Add capabilities manually.  Add more as needed.
      capabilities.textDocument.completion.completionItem.snippetSupport = true

      -- LSP Server Options (Individual Server Settings)
      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = { globals = { 'vim' } },
              workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            },
          },
        },
        ts_ls = {},
        html = {},
        tailwindcss = {},
        emmet_ls = {},
        jsonls = {},
        cssls = {},
        marksman = {},
        bashls = {},
        prettierd = {},
      }

      -- Attach and setup each server
      for server, server_opts in pairs(servers) do
        lspconfig[server].setup({
          capabilities = capabilities,
          on_attach = on_attach,
          flags = {
            debounce_text_changes = 500,
          },
          -- Merge individual server options
          vim.tbl_deep_extend('force', server_opts or {}, {}),
        })
      end

      -- Configure diagnostics
      vim.diagnostic.config({
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
        virtual_text = {
          spacing = 4,
          prefix = '●',
        },
      })
    end,
  },
}

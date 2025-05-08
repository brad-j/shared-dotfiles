---@alias vim table
---@diagnostic disable: undefined-global

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
      capabilities.textDocument.completion.completionItem.snippetSupport = true

      -- If you have nvim-cmp, you might want to use this instead:
      -- local has_cmp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
      -- if has_cmp then
      --   capabilities = cmp_lsp.default_capabilities(capabilities)
      -- end

      -- Configure mason-lspconfig
      mason_lspconfig.setup({
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
        automatic_enable = true
      })

      -- LSP Server Options (Individual Server Settings)
      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = { globals = { 'vim' } },
              workspace = {
                -- Point LuaLS to Neovim's runtime files
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false
              },
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
      }

      -- Attach and setup each server
      for server, server_opts in pairs(servers) do
        local opts = {
          capabilities = capabilities,
          on_attach = on_attach,
          flags = {
            debounce_text_changes = 500,
          }
        }

        -- Merge individual server options
        opts = vim.tbl_deep_extend('force', opts, server_opts or {})

        lspconfig[server].setup(opts)
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

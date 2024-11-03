-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls", -- Lua Language Server
        "ts_ls", -- TypeScript Language Server
        "volar", -- Volar for Vue
        -- add more arguments for adding more language servers as needed
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "stylua", -- Lua formatter
        -- add more arguments for adding more null-ls sources as needed
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        "python", -- Python debugger
        -- add more arguments for adding more debuggers as needed
      },
    },
  },
  -- Additional LSP configuration if necessary
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Configure Volar here
      servers = {
        volar = {
          filetypes = { "vue", "typescript", "javascript", "javascriptreact", "typescriptreact", "json" },
          init_options = {
            typescript = {
              tsdk = "/home/vrysev/.nvm/versions/node/v23.1.0/lib/node_modules/typescript/lib", -- Correct path for tsdk
            },
          },
        },
      },
    },
  },
}

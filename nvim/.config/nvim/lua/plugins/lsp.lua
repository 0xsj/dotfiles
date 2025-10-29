-- lua/plugins/lsp.lua
return {
  -- Mason: LSP installer
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  
  -- Mason-lspconfig: Bridge between mason and lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",        -- Lua
          "ts_ls",         -- TypeScript/JavaScript
          "gopls",         -- Go
          "rust_analyzer", -- Rust
          "pyright",       -- Python
        },
        automatic_installation = true,
      })
      
      -- Also ensure debuggers are installed via Mason
      local mason_registry = require("mason-registry")
      local debuggers = {
        "delve",           -- Go debugger
        "debugpy",         -- Python debugger
        "js-debug-adapter", -- JS/TS debugger
      }
      
      for _, debugger in ipairs(debuggers) do
        local package = mason_registry.get_package(debugger)
        if not package:is_installed() then
          package:install()
        end
      end
    end
  },
  
  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("lsp")
    end
  }
}
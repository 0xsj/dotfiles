-- lua/lsp/handlers.lua

local M = {}

-- Setup function called when LSP attaches
M.on_attach = function(client, bufnr)
  -- Setup keymaps for this buffer
  require("lsp.keymaps").setup(client, bufnr)
end

-- Diagnostic configuration
M.setup = function()
  -- Define diagnostic signs (NEW WAY - using vim.diagnostic.config)
  vim.diagnostic.config({
    virtual_text = true,
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = "",
        [vim.diagnostic.severity.WARN] = "",
        [vim.diagnostic.severity.HINT] = "",
        [vim.diagnostic.severity.INFO] = "",
      },
    },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  })

  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
  })

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
  })
end

-- Call setup
M.setup()

return M
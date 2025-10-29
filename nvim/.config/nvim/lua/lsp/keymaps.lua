-- lua/lsp/keymaps.lua
-- LSP keymaps (attached when LSP attaches to buffer)

local M = {}

M.setup = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  
  -- Go to definition/references
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
  
  -- Hover documentation
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  
  -- Signature help
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
  
  -- Rename
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  
  -- Code action
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  
  -- Format
  vim.keymap.set("n", "<leader>fm", function()
    vim.lsp.buf.format({ async = true })
  end, opts)
  
  -- Diagnostics
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
end

return M

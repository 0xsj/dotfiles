-- lua/lsp/init.lua
local handlers = require("lsp.handlers")

-- Get capabilities with cmp support
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend(
  "force",
  capabilities,
  require("cmp_nvim_lsp").default_capabilities()
)

-- Setup each language server with their specific configs
local servers = {
  "lua_ls",
  "ts_ls",
  "gopls",
  "rust_analyzer",
  "pyright",
}

for _, server in ipairs(servers) do
  -- Try to load server-specific config
  local has_config, server_config = pcall(require, "lsp.servers." .. server)
  local config = has_config and server_config or {}
  
  -- Merge with base config
  config = vim.tbl_deep_extend("force", {
    on_attach = handlers.on_attach,
    capabilities = capabilities,
  }, config)
  
  vim.lsp.config(server, config)
end

vim.lsp.enable(servers)

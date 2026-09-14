-- lua/plugins/formatting.lua
return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          python = { "black", "isort" },
          javascript = { "prettier" },
          typescript = { "prettier" },
          svelte = { "prettier" },
          lua = { "stylua" },
          go = { "gofumpt", "goimports" },
          rust = { "rustfmt" },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      })

      -- Manual format keymap
      vim.keymap.set({ "n", "v" }, "<leader>fm", function()
        require("conform").format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
        })
      end, { desc = "Format file or range" })
    end,
  },
}

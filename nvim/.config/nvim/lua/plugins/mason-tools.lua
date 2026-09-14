return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
    opts = {
      ensure_installed = {
        "ruff",
        "eslint_d",
        "golangci-lint",
      },
      start_delay = 3000,
      debounce_hours = 24,
    },
  },
}

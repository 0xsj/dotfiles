-- lua/plugins/cheatsheet.lua
return {
  {
    "sudormrfbin/cheatsheet.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>cs", "<cmd>Cheatsheet<cr>", desc = "Cheatsheet" },
    },
    config = function()
      require("cheatsheet").setup({
        bundled_cheatsheets = {
          enabled = { "default", "lua", "markdown", "regex", "netrw", "unicode" },
        },
        bundled_plugin_cheatsheets = {
          enabled = {
            "auto-session",
            "goto-preview",
            "gitsigns.nvim",
            "nvim-dap",
            "telescope.nvim",
            "vim-easy-align",
            "vim-sandwich",
          },
        },
        include_only_installed_plugins = true,
      })
    end,
  },
}

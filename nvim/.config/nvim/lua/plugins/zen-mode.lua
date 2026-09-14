return {
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    keys = {
      {
        "<leader>zm",
        function()
          require("zen-mode").toggle()
        end,
        desc = "Zen Mode",
      },
    },
    opts = {
      window = {
        backdrop = 0.95,
        width = 0.85,
        height = 0.9,
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false,
          showcmd = false,
          laststatus = 0,
        },
        gitsigns = {
          enabled = true,
        },
        tmux = {
          enabled = false,
        },
      },
    },
  },
}

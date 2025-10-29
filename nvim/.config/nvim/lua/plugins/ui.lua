-- lua/plugins/ui.lua

-- lua/plugins/ui.lua
return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        styles = {
          transparency = true,
        },
      })
      vim.cmd([[colorscheme rose-pine]])
    end
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
  },
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
  }
}

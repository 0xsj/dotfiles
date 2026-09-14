return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local ts_path = vim.fn.stdpath("data") .. "/lazy/nvim-treesitter"
      vim.opt.rtp:prepend(ts_path .. "/runtime")

      require("nvim-treesitter").setup({})
      require("nvim-treesitter").install({
        "css",
        "html",
        "javascript",
        "svelte",
        "typescript",
      })

      vim.api.nvim_create_autocmd("FileType", {
        callback = function(ev)
          pcall(vim.treesitter.start, ev.buf)
        end,
      })
    end
  }
}

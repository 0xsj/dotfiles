local mdview_path = vim.fn.expand("~/Desktop/dev/builds/vim/mdview.nvim")

return {
  "0xsj/mdview.nvim",
  dir = mdview_path,
  enabled = vim.fn.isdirectory(mdview_path) == 1,
  build = "cd server && cargo build --release",
  cmd = { "MdView", "MdViewStop", "MdViewToggle" },
  keys = {
    { "<leader>mv", "<cmd>MdViewToggle<cr>", desc = "Toggle markdown viewer" },
  },
  opts = {},
}

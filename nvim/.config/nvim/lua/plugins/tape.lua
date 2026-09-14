local tape_path = vim.fn.expand("~/Desktop/dev/builds/vim/tape.nvim")

return {
  dir = tape_path,
  enabled = vim.fn.isdirectory(tape_path) == 1,
}

local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("i", "jk", "<Esc>")

keymap.set("n", "dw", 'vb"_d')

keymap.set("n", "<leader>rp", "ggVGp", { desc = "Replace all with clipboard" })

keymap.set("n", "<leader>rP", 'ggVG"+p', { desc = "Replace all with system clipboard" })

keymap.set("n", "<leader>ob", function()
  local path = vim.fn.expand("%:p")
  vim.fn.system({ "open", "obsidian://open?path=" .. vim.fn.fnameescape(path) })
end, { desc = "Open current file in Obsidian" })

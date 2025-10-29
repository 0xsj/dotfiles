local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("i", "jk", "<Esc>")

keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap.set("n", "<leader>fm", vim.lsp.buf.format)

keymap.set("n", "dw", 'vb"_d')

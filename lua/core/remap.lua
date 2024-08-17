local opts = { noremap = true, silent = true }
local keymap = vim.keymap

vim.g.mapleader = " "


-- menu
keymap.set("n", "<leader>`", vim.cmd.Ex)

-- exit insert mode,
keymap.set("i", "jk", "<Esc>")


-- format
keymap.set("n", "<leader>fm", vim.lsp.buf.format)

-- increment, decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- delete word backwards
keymap.set("n", "dw", 'vb"_d')

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

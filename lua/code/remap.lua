-- Set a <leader> aka SPACE
vim.g.mapleader = " "

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Move line
vim.keymap.set("n", "<M-Up>", ":MoveLine(-1)<CR>", { silent = true })
vim.keymap.set("n", "<M-Down>", ":MoveLine(1)<CR>", { silent = true })
vim.keymap.set("v", "<M-Up>", ":MoveBlock(-1)<CR>", { silent = true })
vim.keymap.set("v", "<M-Down>", ":MoveBlock(1)<CR>", { silent = true })

-- Move line(s) up and dow-- Borrowed from ThePrimeagen
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

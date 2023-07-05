vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.w)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<C-e>", vim.cmd.NvimTreeToggle)

-- buffer
vim.keymap.set("n", "<Tab>", ":BufferNext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":BufferPrevious<CR>", { silent = true })
vim.keymap.set("n", "<C-w>", ":BufferClose<CR>", { silent = true })

-- terminals
vim.keymap.set("n", "<C-t>", ":ToggleTerm<CR>", { silent = true })

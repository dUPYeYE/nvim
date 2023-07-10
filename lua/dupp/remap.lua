vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.w)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- file explorer
local api = require "nvim-tree.api"

local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
end

local Event = api.events.Event
local function toggle_and_focus()
    if Event.TreeOpen then
        vim.cmd("NvimTreeFocus")
    else
        vim.cmd("NvimTreeToggle")
        vim.cmd("NvimTreeFocus")
    end
end

-- custom mappings
vim.keymap.set("n", "<C-e>", toggle_and_focus, opts('Close'))

-- buffer
vim.keymap.set("n", "<Tab>", ":BufferNext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":BufferPrevious<CR>", { silent = true })
vim.keymap.set("n", "<C-w>", ":BufferClose<CR>", { silent = true })


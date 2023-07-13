-- Set a <leader> aka SPACE
vim.g.mapleader = " "

-- Save file the convenient way
vim.keymap.set("n", "<C-s>", vim.cmd.w)

-- Close vim
local nvimtree = require "nvim-tree.api"
local function quit_nvim()
    vim.cmd("q!")
    nvimtree.tree.close()
end
vim.keymap.set("n", "<leader>q", quit_nvim, { desc = "Exit NeoVim" })

-- Borrowed from ThePrimeagen
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- file explorer
local api = require "nvim-tree.api"
local Event = api.events.Event
local function toggle_and_focus()
    if Event.TreeOpen then
        vim.cmd("NvimTreeFocus")
    else
        vim.cmd("NvimTreeToggle")
        vim.cmd("NvimTreeFocus")
    end
end
vim.keymap.set("n", "<C-e>", toggle_and_focus, { desc = "nvim-tree: Close", noremap = true, silent = true, nowait = true })

-- buffer
vim.keymap.set("n", "<Tab>", ":BufferNext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":BufferPrevious<CR>", { silent = true })
vim.keymap.set("n", "<leader>w", ":BufferClose<CR>", { silent = true })

-- Open git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Open git" });

-- Open undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Open undo tree" })

-- Telescope(fuzzy finder) binds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = "Find files in directory" })
vim.keymap.set('n', '<leader>ff', builtin.git_files, { desc = "Find git files" })
vim.keymap.set('n', '<C-f>', builtin.live_grep, { desc = "Search in project" })
vim.keymap.set('n', '<leader>ps',
  function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") });
  end
, { desc = "Different kind of grep" })

-- Eslint fix all
vim.keymap.set("n", "<leader>l", vim.cmd.EslintFixAll, { desc = "ESLint fix all problems" })

-- Toggle markdown preview
vim.keymap.set("n", "<leader>m", vim.cmd.MarkdownPreviewToggle, { desc = "Toggle markdown preview" })

-- Toggle zenmode
vim.keymap.set("n", "<leader>z", vim.cmd.ZenMode, { desc = "Toggle zen mode" })

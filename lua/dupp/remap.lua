-- Set a <leader> aka SPACE
vim.g.mapleader = " "

-- Save file the convenient way
vim.keymap.set("n", "<C-s>", vim.cmd.w)

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Close vim
local nvimtree = require "nvim-tree.api"
local function quit_nvim()
  vim.cmd("q!")
  nvimtree.tree.close()
end
vim.keymap.set("n", "<leader>q", quit_nvim, { desc = "Exit NeoVim" })

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

-- file explorer
vim.keymap.set("n", "<C-e>", vim.cmd.NeoTreeFocus, { desc = "nvim-tree: Close", noremap = true, silent = true, nowait = true })

-- Copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-Right>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- buffer
vim.keymap.set("n", "<Tab>", vim.cmd.BufferNext, { silent = true })
vim.keymap.set("n", "<S-Tab>", vim.cmd.BufferPrevious, { silent = true })
vim.keymap.set("n", "<leader>w", vim.cmd.BufferClose, { silent = true })

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

-- Open git
vim.keymap.set("n", "<leader>gg", vim.cmd.LazyGit, { desc = "Open LazyGit" });
vim.keymap.set("n", "<leader>gs", vim.cmd.LazyGitFilter, { desc = "Open commit history" });

-- Open undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Open undo tree" })

-- Telescope(fuzzy finder) binds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files in directory" })
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = "Find files in directory" })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = "Find git files" })
vim.keymap.set('n', '<C-f>', builtin.live_grep, { desc = "Search in project" })
vim.keymap.set("n", "<leader>ch", builtin.colorscheme, { desc = "Change colorscheme" })
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

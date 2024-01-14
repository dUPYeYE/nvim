local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "folke/which-key.nvim",

  -- Colorschemes
  "catppuccin/nvim",
  "rose-pine/neovim",

  -- Store undos in memory
  "mbbill/undotree",

  -- Zen mode
  "folke/zen-mode.nvim",

  -- Git
  "lewis6991/gitsigns.nvim",
  "tpope/vim-fugitive",

  -- Topbar for open buffers
  "romgrk/barbar.nvim",

  -- Terminal inside vim
  "akinsho/toggleterm.nvim",

  -- Save and load sessions
  "Shatur/neovim-session-manager",

  -- Comment lines and blocks
  "numToStr/Comment.nvim",

  -- Move lines
  "fedepujol/move.nvim",
})

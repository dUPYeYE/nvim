-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
	  "catppuccin/nvim",
	  as = "catppuccin",
	  config = function()
		  vim.cmd('colorscheme catppuccin-mocha')
	  end
  }

  use (
	  'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}
  )

  use 'nvim-treesitter/playground'
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'

  use {
              'VonHeikemen/lsp-zero.nvim',
              branch = 'v2.x',
              requires = {
                  -- LSP Support
                  {'neovim/nvim-lspconfig'},             -- Required
                  {                                      -- Optional
                  'williamboman/mason.nvim',
                  run = function()
                      pcall(vim.cmd, 'MasonUpdate')
                  end,
              },
              {'williamboman/mason-lspconfig.nvim'}, -- Optional

              -- Autocompletion
              {'hrsh7th/nvim-cmp'},     -- Required
              {'hrsh7th/cmp-nvim-lsp'}, -- Required
              {'L3MON4D3/LuaSnip'},     -- Required
              {'rafamadriz/friendly-snippets'},
          }
    }

  use("nvim-treesitter/nvim-treesitter-context")
  use("folke/zen-mode.nvim")

  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"

  -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
  use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
  use 'romgrk/barbar.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use "akinsho/toggleterm.nvim"
  use 'norcalli/nvim-colorizer.lua'
  use 'Shatur/neovim-session-manager'

  use {
      'numToStr/Comment.nvim',
  }

  use "folke/trouble.nvim"

  use {
    'kkharji/lspsaga.nvim',
  }

end)

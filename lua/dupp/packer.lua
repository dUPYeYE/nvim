-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- Fuzzy finder
  use {
	  "nvim-telescope/telescope.nvim", tag = "0.1.2",
	  -- or                            , branch = "0.1.x",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }

  -- Currently my favourite colorscheme
  use {
	  "catppuccin/nvim",
	  as = "catppuccin",
	  config = function()
		  vim.cmd("colorscheme catppuccin-mocha")
	  end
  }

  -- Better syntax highlighting
  use {
	  "nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"},
      "nvim-treesitter/playground",
      "nvim-treesitter/nvim-treesitter-context",
  }

  -- Store undos in memory
  use "mbbill/undotree"

  -- LSP
  use {
              "VonHeikemen/lsp-zero.nvim",
              branch = "v2.x",
              requires = {
                  -- LSP Support
                  "neovim/nvim-lspconfig",             -- Required
                  {                                      -- Optional
                  "williamboman/mason.nvim",
                  run = function()
                      pcall(vim.cmd, "MasonUpdate")
                  end,
              },
              "williamboman/mason-lspconfig.nvim", -- Optional
              -- Autocompletion
              "hrsh7th/nvim-cmp",     -- Required
              "hrsh7th/cmp-nvim-lsp", -- Required
              "L3MON4D3/LuaSnip",     -- Required
              "rafamadriz/friendly-snippets",
              "kkharji/lspsaga.nvim",
          }
    }

  -- Zen mode
  use("folke/zen-mode.nvim")

  -- File tree
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"

  -- Git
  use "lewis6991/gitsigns.nvim" -- OPTIONAL: for git status
  use "tpope/vim-fugitive"

  -- Topbar for open buffers
  use "romgrk/barbar.nvim"

  -- Status line
  use {
      "nvim-lualine/lualine.nvim",
      requires = { "nvim-tree/nvim-web-devicons", opt = true },
      config = function()
          require("lualine").setup()
      end
  }

  -- Terminal inside vim
  use "akinsho/toggleterm.nvim"

  -- Better colors
  use {
      "norcalli/nvim-colorizer.lua",
      config = function ()
          require("colorizer").setup()
      end
  }

  -- Save and load sessions
  use "Shatur/neovim-session-manager"

  -- Comment lines and blocks
  use "numToStr/Comment.nvim"

  -- Diagnostics screen
  use {
      "folke/trouble.nvim",
      config = function ()
          require("trouble").setup()
      end
  }

  -- Keybindings helper
  use {
      "folke/which-key.nvim",
      config = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
          require("which-key").setup()
      end
  }

  -- Dashboard
  use {
      "glepnir/dashboard-nvim",
      event = "VimEnter",
      config = function()
          require("dashboard").setup()
      end,
      requires = {"nvim-tree/nvim-web-devicons"}
  }

  -- Markdown preview (inside a browser)
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

end)

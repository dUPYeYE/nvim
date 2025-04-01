return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ts_ls = {
        keys = {
          { "<leader>co", "<cmd>TypescriptOrganizeImports<CR>", desc = "Organize Imports" },
          { "<leader>cR", "<cmd>TypescriptRenameFile<CR>", desc = "Rename File" },
        },
      },
    },
  },
}

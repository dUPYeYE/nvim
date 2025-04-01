return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- add a keymap to browse plugin files
    -- stylua: ignore
    { '<leader>ff', function() require('telescope.builtin').find_files() end, desc = "Find files in directory" },
    {
      "<C-p>",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Find files in directory",
    },
    {
      "<leader>gf",
      function()
        require("telescope.builtin").git_files()
      end,
      desc = "Find git files",
    },
    {
      "<C-f>",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Search in project",
    },
    {
      "<leader>ch",
      function()
        require("telescope.builtin").colorscheme()
      end,
      desc = "Change colorscheme",
    },
    {
      "<leader>ps",
      function()
        require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
      end,
      desc = "Different kind of grep",
    },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}

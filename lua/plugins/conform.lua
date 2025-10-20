return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    -- Merge your formatters into LazyVim's defaults
    opts.formatters_by_ft = vim.tbl_extend("force", opts.formatters_by_ft or {}, {
      typescript = { "prettierd", "eslint_d" },
      javascript = { "prettierd", "eslint_d" },
    })

    return opts
  end,
}

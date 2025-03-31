local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-b>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)

	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end)

local lspconfig = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
local on_attach = function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = require("lspconfig").util.root_pattern("go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    sources = {
      -- Copilot Source
      -- { name = "copilot", group_index = 2 },
      -- Other Sources
      { name = "nvim_lsp", group_index = 2 },
      { name = "path", group_index = 2 },
      { name = "luasnip", group_index = 2 },
    },
})

lspconfig.ts_ls.setup {
  on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.cmd [[
      autocmd BufWritePre *.ts,*.tsx,*.js,*.jsx EslintFixAll
    ]]

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  end,
  capabilities = capabilities,
}

lspconfig.volar.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "vue" },
  init_options = {
    vue = {
      hybridMode = false,
    },
  },
})

lsp.setup()

require("dupp.remap")
require("dupp.set")
require("dupp.packer")

vim.cmd([[
  augroup CustomColors
    autocmd!
    autocmd ColorScheme * highlight minimapCursor   ctermbg=59  ctermfg=228 guibg='#9399b2' guifg='#94e2d5'
    autocmd ColorScheme * highlight minimapRange    ctermbg=242 ctermfg=228 guibg='#585b70' guifg='#a6e3a1'
  augroup END
]])

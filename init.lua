require("dupp.remap")
require("dupp.set")
require("dupp.packer")

vim.cmd([[
  augroup CustomColors
    autocmd!
    autocmd ColorScheme * highlight minimapCursor   ctermbg=59  ctermfg=228 guibg='#5F5F5F' guifg='#FFFF87'
    autocmd ColorScheme * highlight minimapRange    ctermbg=242 ctermfg=228 guibg='#4F4F4F' guifg='#FFFF87'
  augroup END
]])

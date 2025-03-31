-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue   = '#31748f',
  cyan   = '#9ccfd8',
  black  = '#08080800',
  white  = '#c6c6c6',
  red    = '#eb6f92',
  violet = '#ebbcba',
  grey   = '#1f1d2e',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.grey, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.grey, bg = colors.blue } },
  visual = { a = { fg = colors.grey, bg = colors.cyan } },
  replace = { a = { fg = colors.grey, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

require('lualine').setup {
  options = {
    theme = 'gruvbox',
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}

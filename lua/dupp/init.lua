-- custom keymaps
require("dupp.remap")
require("dupp.set")
require("dupp.packer")

local function loadsession()
  vim.cmd("SessionLoad")
end

loadsession()

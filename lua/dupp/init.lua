-- custom keymaps
if vim.g.vscode == nil then
  require("dupp.remap")
  require("dupp.set")
  require("dupp.packer")

  local function loadsession()
    vim.cmd("SessionLoad")
  end

  loadsession()
end

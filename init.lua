if vim.g.vscode then
  require("code.remap")
else
  require("dupp.remap")
  require("dupp.set")
  require("dupp.packer")
end

local status_ok, _ =pcall(require, "lspconfig")
if not status_ok then
  return
end

require("sshep.lsp.lsp-installer")
require("sshep.lsp.handlers").setup()
require("sshep.lsp.null-ls")

local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

-- Register a handler that willl be called for for all installed servers.
-- alternativley, you may also register handlers on specific server instances instead (see example below )
lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = require("sshep.lsp.handlers").on_attach,
    capabillities = require("sshep.lsp.handlers").capabillities,
  }

   if server.name == "jsonls" then
   local jsonls_opts = require("sshep.lsp.settings.jsonls")
    opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  end

  if server.name == "sumneko_lua" then
    local sumneko_opts = require("user.lsp.settings.sumneko_lua")
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  -- This setup() function is exactally the same as lspconfig's setup function
  -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations/md
  server:setup(opts)
end)
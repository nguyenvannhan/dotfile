local mason_status_ok, mason = pcall(require, "mason")
local mason_lsp_status_ok, mason_lsp = pcall(require, "mason-lspconfig")

if not mason_status_ok or  not mason_lsp_status_ok then
  return
end

local servers = {
  "phpactor",
  "diagnosticls"
}

mason.setup()
mason_lsp.setup({
  ensure_installed = servers,
  automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local attach = require('lsp.attach')
local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = attach.on_attach,
    capabilities = attach.capabilities
  }

  lspconfig[server].setup(opts)

  ::continue::
end

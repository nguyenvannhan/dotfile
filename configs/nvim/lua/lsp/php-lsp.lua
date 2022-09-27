local attach = require('lsp.attach')

require'lspconfig'.phpactor.setup{
  on_attach = attach.on_attach,

  capabilities = attach.capabilities,
}

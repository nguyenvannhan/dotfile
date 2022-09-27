local attach = require('lsp.attach')

require'lspconfig'.vuels.setup {
  on_attach = attach.on_attach,
  filetypes = { "vue" }
}

local attach = require('lsp.attach')

require'lspconfig'.tsserver.setup {
  on_attach = attach.on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" }
}

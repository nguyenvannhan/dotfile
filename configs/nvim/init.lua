require("settings")
require("plugins")
require("keymappings")
---------- Color Schema ------------
--require('tokyo-night')
--require('gruvbox-theme-config')
require("sonokai-theme-config")

require("telescope-config")
require("nvim-treesitter-config")
require("nvim-tree-config")
require("bufferline-config")
require("lualine-config")
require("indent-blankline-config")
require("gitsigns-config")
require("toggleterm-config")
require("kommentary-config")
-- require("nvim-transparent")

------- Config Languge Server -----
require("nvim-cmp-config")
--require('lsp.lua-lsp')
--require('lsp.php-lsp')
--require('lsp.diagnosticls-lsp')
--require('lsp.vuels-lsp')
--require('lsp.tsserver-lsp')
require("lsp.null-ls")
require("lsp.mason")

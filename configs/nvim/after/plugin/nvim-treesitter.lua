local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter')

if not status_ok then
  return
end

local config = require('nvim-treesitter.configs');

config.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "bash",
    "css",
    'dart',
    'dockerfile',
    'gitignore',
    'go',
    'html',
    'javascript',
    'json',
    'lua',
    'markdown',
    'markdown_inline',
    'php',
    'ruby',
    'scss',
    'sql',
    'tsx',
    'vue',
    'yaml',
  },
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  autopairs = {
    enable = true
  },
  filters = {
    dotfiles = true,
    custom = {}
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 400
  }
}

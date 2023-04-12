vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencodings = { 'utf-8', "sjis", "euc-jp", "latin" }

vim.wo.number = true
vim.opt.relativenumber = true

vim.opt.autoindent = true
vim.opt.title = true
vim.opt.background = "dark"
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.listchars = { tab = "→ ", space = "·", nbsp = "␣", trail = "•", eol = "¬", precedes = "«", extends = "»" }
vim.opt.ignorecase = true
vim.opt.list = true
vim.opt.termguicolors = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wildignore:append("*/node_modules/*,*/vendor/*")
vim.opt.wrap = false -- No Wrap lines

if vim.fn.has "macunix" then
    vim.opt.clipboard:append { 'unnamed' }
else
    vim.opt.clipboard:append { 'unnamedplus' }
end

vim.opt.cursorline = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]]

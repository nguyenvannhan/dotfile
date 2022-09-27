vim.opt.autoindent = true
vim.opt.title = true
vim.opt.fileencodings = { 'utf8', 'sjis', 'euc-jp', 'latin' }
vim.opt.encoding = 'utf-8'
vim.opt.background = 'dark'
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.listchars = { tab = '→ ', space = '·', nbsp = '␣', trail = '•', eol = '¬', precedes = '«', extends = '»' }
vim.opt.ignorecase = true
vim.opt.list = true
vim.opt.termguicolors = true
vim.opt.shiftwidth=2
vim.opt.tabstop=2
vim.opt.wildignore:append('*/node_modules/*,*/vendor/*')

vim.cmd[[set number relativenumber]]
vim.cmd[[set nu rnu]]


vim.cmd[[syntax on]]
vim.cmd[[set completeopt=menu,menuone,noselect]]

vim.cmd[[au BufNewFile,BufRead *.blade.php set filetype=blade]]

vim.cmd[[autocmd FileType yaml setlocal shiftwidth=2 tabstop=2]]
vim.cmd[[autocmd FileType vue setlocal shiftwidth=2 tabstop=2]]
vim.cmd[[autocmd FileType php setlocal shiftwidth=4 tabstop=4 iskeyword+=$]]
vim.cmd[[autocmd FileType blade setlocal shiftwidth=4 tabstop=4 iskeyword+=$]]

vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })

vim.g.mapleader = " "

-- no hl
vim.api.nvim_set_keymap("n", "<Leader>h", ":set hlsearch!<CR>", { noremap = true, silent = true })

-- Better window movement
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { silent = true })

-- Bett indent
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- Tab switch Buffer
vim.api.nvim_set_keymap("n", "<TAB>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious<CR>", { noremap = true, silent = true })

-- Move selected line / block of text in visual mode
-- shift + k to move up
-- shift + j to move down
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true })

-- Window Management
vim.api.nvim_set_keymap("n", "<Leader>sv", "<C-w>v", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>sh", "<C-w>s", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>se", "<C-w>=", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>sx", "<Cmd>close<CR>", { silent = true })

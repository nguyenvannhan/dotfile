-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
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

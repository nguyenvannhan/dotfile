local status_ok, nvim_tree = pcall(require, 'nvim-tree')

if not status_ok then
    return
end

nvim_tree.setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
    },
    renderer = {
	group_empty = true,
	highlight_git = true,
	highlight_opened_files = "all",
    },
    filters = {
	dotfiles = true,
    },
    update_focused_file = {
	enable = true,
	update_root = true,
	ignore_list = {},
    },
})

vim.api.nvim_set_keymap('n', '<Leader>b', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

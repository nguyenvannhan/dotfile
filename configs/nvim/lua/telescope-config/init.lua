local actions = require('telescope.actions')

vim.api.nvim_set_keymap('n', ';f', ':lua require(\'telescope.builtin\').find_files({hidden=true})<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ';g', ':lua require(\'telescope.builtin\').find_files({hidden=true,no_ignore=true})<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ';r', ':lua require(\'telescope.builtin\').live_grep()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ';\\', ':lua require(\'telescope.builtin\').buffers()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ';;', ':lua require(\'telescope.builtin\').help_tags()<CR>', { noremap = true, silent = true })

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
        ["<C-c>"] = actions.close,
        ["<CR>"] = actions.select_default + actions.center
      },
      n = {
        ["q"] = actions.close,
	      ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
      }
    },

    file_ignore_patterns = { 'node_modules', '.git', '.vscode', '.idea', 'vendor' }
  },

  extensions = {
    fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
    },
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}

require('telescope').load_extension('fzy_native')
require('telescope').load_extension('fzf')

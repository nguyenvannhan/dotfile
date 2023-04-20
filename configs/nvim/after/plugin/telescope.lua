local status_ok, telescope = pcall(require, "telescope")

if not status_ok then
  return
end

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local fb_actions = require "telescope".extensions.file_browser.actions

-- Setup Area
telescope.setup {
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
      fuzzy = true,                   -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,    -- override the file sorter
      case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd('startinsert')
          end
        },
      },
    },
  },
}

telescope.load_extension('fzy_native')
telescope.load_extension('fzf')
telescope.load_extension('media_files');
telescope.load_extension('file_browser');


-- Keymap
vim.keymap.set('n', ';f', function()
  builtin.find_files({
    hidden = false,
    no_ignore = false,
  })
end)
vim.keymap.set('n', ';h', function()
  builtin.find_files({
    hidden = true
  })
end)
vim.keymap.set('n', ';g', function()
  builtin.find_files({
    hidden = true,
    no_ignore = true
  })
end)
vim.keymap.set('n', ';r', builtin.live_grep)
vim.keymap.set("n", ";b", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)

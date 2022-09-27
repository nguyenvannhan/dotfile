require('bufferline').setup {
  options = {
    numbers = function(opts)
      return string.format('%s', opts.id)
    end
  }
}

vim.api.nvim_set_keymap('n', '[b', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'b]', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'be', ':BufferLineSortByExtension<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'bd', ':BufferLineSortByDirectory<CR>', { noremap = true, silent = true })

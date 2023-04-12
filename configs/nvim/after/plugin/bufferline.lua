local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    numbers = function(opts)
      return string.format('%s', opts.id)
    end
  }
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
vim.api.nvim_set_keymap('n', 'be', ':BufferLineSortByExtension<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'bd', ':BufferLineSortByDirectory<CR>', { noremap = true, silent = true })


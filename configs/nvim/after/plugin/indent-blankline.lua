local status_ok, blankline = pcall(require, 'indent_blankline')

if not status_ok then
  do return end
end

blankline.setup({
  show_current_context = true,
  show_current_context_start = true,
})

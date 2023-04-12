local status_ok, color_scheme = pcall(require, 'nightfox')

if not status_ok then
  return
end

color_scheme.setup({
  options = {
    transparent = false,
  }
})

vim.cmd('colorscheme nightfox')

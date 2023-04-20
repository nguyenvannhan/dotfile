--local status_ok, color_scheme = pcall(require, 'nightfox')
local status_ok, color_scheme = pcall(require, 'gruvbox')

if not status_ok then
  return
end

-- Nightfox theme
--color_scheme.setup({
--  options = {
--    transparent = true,
--  }
--})

-- Gruvbox Setup 
color_scheme.setup({
  transparent_mode = true
})

--vim.cmd('colorscheme nightfox')
vim.cmd('colorscheme gruvbox')

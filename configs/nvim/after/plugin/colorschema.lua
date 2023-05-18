local status_ok, color_scheme = pcall(require, "onedark")

if not status_ok then
  return
end

-- Nightfox theme
color_scheme.setup({
  style = "cool",
  transparent = true,
})

color_scheme.load()

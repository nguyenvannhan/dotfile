local nvim_transparent_status_ok, nvim_transparent = pcall(require, "transparent")
if not nvim_transparent_status_ok then
  return
end

nvim_transparent.setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups

    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    --"BufferlineBufferSelected",
    "BufferLineFill",
    --"BufferLineBackground",
    "BufferLineSeparator",
    --"BufferLineIndicatorSelected",
  },
})

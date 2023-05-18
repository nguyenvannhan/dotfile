local status_ok, autopairs = pcall(require, 'nvim-autopairs')

if not status_ok then
  do
    return
  end
end

autopairs.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

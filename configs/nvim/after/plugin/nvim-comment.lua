local status_ok, nvim_comment = pcall(require, "nvim_comment")

if not status_ok then
  do
    return
  end
end

nvim_comment.setup({
  comment_empty = false,
  comment_empty_trim_whitespace = false,
})

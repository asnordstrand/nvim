local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
  return
end

indent_blankline.setup({
  show_trailing_blankline_indent = false,
  show_current_context = true,
  show_current_context_start = false,
})

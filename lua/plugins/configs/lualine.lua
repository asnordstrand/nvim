local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

lualine.setup({
  options = {
    icons_enabled = true,
    theme = "auto",
    always_divide_middle = true,
    globalstatus = true,
    component_separators = "|",
    section_separators = "",
  },
  extensions = {
    "nvim-tree",
  },
})
